package com.obd2reader.obd

import com.obd2reader.ble.BleManager
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*

/**
 * Invia comandi OBD2 all'ELM327 tramite BLE e raccoglie le risposte.
 */
class ObdSession(private val bleManager: BleManager) {

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    /**
     * Invia un comando e attende la risposta completa (terminata da '>').
     */
    suspend fun sendAndReceive(command: ObdCommand, timeoutMs: Long = 3000L): String {
        return withTimeoutOrNull(timeoutMs) {
            val responseBuilder = StringBuilder()
            val responseDeferred = CompletableDeferred<String>()

            val job = CoroutineScope(coroutineContext).launch {
                bleManager.receivedData.collect { chunk ->
                    responseBuilder.append(chunk)
                    if (responseBuilder.contains('>')) {
                        responseDeferred.complete(responseBuilder.toString())
                        cancel()
                    }
                }
            }

            bleManager.sendCommand(command.command)

            val result = responseDeferred.await()
            job.cancel()
            result
        } ?: "TIMEOUT"
    }

    /**
     * Inizializza l'ELM327 con la sequenza AT standard.
     */
    suspend fun initialize(): Boolean {
        val cmds = listOf(
            ObdCommand.Reset,
            ObdCommand.EchoOff,
            ObdCommand.LineFeedOff,
            ObdCommand.HeadersOff,
            ObdCommand.SetProtocolAuto
        )
        for (cmd in cmds) {
            val resp = sendAndReceive(cmd, 5000L)
            if (resp == "TIMEOUT") return false
            delay(200)
        }
        return true
    }

    /**
     * Polling continuo dei parametri in tempo reale.
     * Emette un ObdData aggiornato ogni ciclo.
     */
    fun liveDataFlow(intervalMs: Long = 500L): Flow<ObdData> = flow {
        var data = ObdData()
        while (currentCoroutineContext().isActive) {
            val rpm = ObdResponseParser.parseRpm(sendAndReceive(ObdCommand.EngineRpm))
            val speed = ObdResponseParser.parseSpeed(sendAndReceive(ObdCommand.VehicleSpeed))
            val coolant = ObdResponseParser.parseCoolantTemp(sendAndReceive(ObdCommand.CoolantTemp))
            val throttle = ObdResponseParser.parseThrottle(sendAndReceive(ObdCommand.ThrottlePosition))
            val load = ObdResponseParser.parseEngineLoad(sendAndReceive(ObdCommand.EngineLoad))
            val intakeTemp = ObdResponseParser.parseIntakeAirTemp(sendAndReceive(ObdCommand.IntakeAirTemp))
            val battery = ObdResponseParser.parseBatteryVoltage(sendAndReceive(ObdCommand.BatteryVoltage))
            val fuel = ObdResponseParser.parseFuelTank(sendAndReceive(ObdCommand.FuelTankLevel))

            data = ObdData(
                rpm = rpm,
                speedKmh = speed,
                coolantTempC = coolant,
                throttlePercent = throttle,
                engineLoadPercent = load,
                intakeAirTempC = intakeTemp,
                batteryVoltage = battery,
                fuelTankPercent = fuel
            )
            emit(data)
            delay(intervalMs)
        }
    }.flowOn(Dispatchers.IO)

    /**
     * Legge i codici di errore DTC.
     */
    suspend fun readDtc(): List<String> {
        val raw = sendAndReceive(ObdCommand.ReadDtc, 5000L)
        return ObdResponseParser.parseDtc(raw)
    }

    /**
     * Cancella i codici di errore DTC.
     */
    suspend fun clearDtc(): Boolean {
        val raw = sendAndReceive(ObdCommand.ClearDtc, 5000L)
        return !raw.contains("ERROR") && raw != "TIMEOUT"
    }

    fun cancel() {
        scope.cancel()
    }
}
