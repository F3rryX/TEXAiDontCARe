package com.obd2reader.obd

/**
 * Comandi OBD2 standard (SAE J1979 / ISO 15031-5).
 * Tutti i PID sono pubblici e standardizzati.
 */
sealed class ObdCommand(val command: String, val name: String) {

    // Inizializzazione ELM327
    object Reset : ObdCommand("ATZ", "Reset")
    object EchoOff : ObdCommand("ATE0", "Echo Off")
    object LineFeedOff : ObdCommand("ATL0", "Line Feed Off")
    object HeadersOff : ObdCommand("ATH0", "Headers Off")
    object SetProtocolAuto : ObdCommand("ATSP0", "Protocol Auto")

    // Modalità 01 - Dati in tempo reale
    object EngineRpm : ObdCommand("010C", "RPM Motore")
    object VehicleSpeed : ObdCommand("010D", "Velocità")
    object CoolantTemp : ObdCommand("0105", "Temp. Refrigerante")
    object ThrottlePosition : ObdCommand("0111", "Posizione Acceleratore")
    object EngineLoad : ObdCommand("0104", "Carico Motore")
    object FuelPressure : ObdCommand("010A", "Pressione Carburante")
    object IntakeAirTemp : ObdCommand("010F", "Temp. Aria Aspirata")
    object MafAirFlow : ObdCommand("0110", "Flusso Aria MAF")
    object OxygenSensorVoltage : ObdCommand("0114", "Tensione Sonda Lambda")
    object TimingAdvance : ObdCommand("010E", "Anticipo Accensione")
    object FuelTankLevel : ObdCommand("012F", "Livello Carburante")
    object BarometricPressure : ObdCommand("0133", "Pressione Barometrica")

    // Modalità 03 - Codici errore (DTC)
    object ReadDtc : ObdCommand("03", "Leggi DTC")

    // Modalità 04 - Cancella DTC
    object ClearDtc : ObdCommand("04", "Cancella DTC")

    // Tensione batteria ELM327
    object BatteryVoltage : ObdCommand("ATRV", "Tensione Batteria")
}

/**
 * Dati OBD2 letti e decodificati.
 */
data class ObdData(
    val rpm: Int? = null,
    val speedKmh: Int? = null,
    val coolantTempC: Int? = null,
    val throttlePercent: Float? = null,
    val engineLoadPercent: Float? = null,
    val intakeAirTempC: Int? = null,
    val batteryVoltage: Float? = null,
    val fuelTankPercent: Float? = null,
    val dtcCodes: List<String> = emptyList()
)

/**
 * Parser per le risposte grezze dell'ELM327.
 */
object ObdResponseParser {

    fun parseRpm(raw: String): Int? {
        val bytes = extractBytes(raw, "410C") ?: return null
        if (bytes.size < 2) return null
        return ((bytes[0] * 256) + bytes[1]) / 4
    }

    fun parseSpeed(raw: String): Int? {
        val bytes = extractBytes(raw, "410D") ?: return null
        if (bytes.isEmpty()) return null
        return bytes[0]
    }

    fun parseCoolantTemp(raw: String): Int? {
        val bytes = extractBytes(raw, "4105") ?: return null
        if (bytes.isEmpty()) return null
        return bytes[0] - 40
    }

    fun parseThrottle(raw: String): Float? {
        val bytes = extractBytes(raw, "4111") ?: return null
        if (bytes.isEmpty()) return null
        return bytes[0] * 100f / 255f
    }

    fun parseEngineLoad(raw: String): Float? {
        val bytes = extractBytes(raw, "4104") ?: return null
        if (bytes.isEmpty()) return null
        return bytes[0] * 100f / 255f
    }

    fun parseIntakeAirTemp(raw: String): Int? {
        val bytes = extractBytes(raw, "410F") ?: return null
        if (bytes.isEmpty()) return null
        return bytes[0] - 40
    }

    fun parseFuelTank(raw: String): Float? {
        val bytes = extractBytes(raw, "412F") ?: return null
        if (bytes.isEmpty()) return null
        return bytes[0] * 100f / 255f
    }

    fun parseBatteryVoltage(raw: String): Float? {
        // Risposta tipo: "12.3V"
        val match = Regex("""(\d+\.\d+)V""").find(raw.trim()) ?: return null
        return match.groupValues[1].toFloatOrNull()
    }

    fun parseDtc(raw: String): List<String> {
        val cleaned = raw.replace("\\s+".toRegex(), "").uppercase()
        if (cleaned.contains("NODATA") || cleaned.contains("ERROR")) return emptyList()
        if (!cleaned.startsWith("43")) return emptyList()
        val hex = cleaned.removePrefix("43")
        return decodeDtcBytes(hex)
    }

    private fun extractBytes(raw: String, header: String): List<Int>? {
        val cleaned = raw.replace("\\s+".toRegex(), "").uppercase()
        if (cleaned.contains("NODATA") || cleaned.contains("ERROR")) return null
        val idx = cleaned.indexOf(header)
        if (idx < 0) return null
        val dataHex = cleaned.substring(idx + header.length)
        return dataHex.chunked(2).mapNotNull { it.toIntOrNull(16) }
    }

    private fun decodeDtcBytes(hex: String): List<String> {
        val codes = mutableListOf<String>()
        val bytes = hex.chunked(2).mapNotNull { it.toIntOrNull(16) }
        var i = 0
        while (i + 1 < bytes.size) {
            val b1 = bytes[i]
            val b2 = bytes[i + 1]
            if (b1 == 0 && b2 == 0) { i += 2; continue }
            val prefix = when ((b1 shr 6) and 0x03) {
                0 -> "P"
                1 -> "C"
                2 -> "B"
                3 -> "U"
                else -> "P"
            }
            val digit2 = (b1 shr 4) and 0x03
            val digit3 = b1 and 0x0F
            val digit4 = (b2 shr 4) and 0x0F
            val digit5 = b2 and 0x0F
            codes.add("$prefix$digit2$digit3${digit4.toString(16).uppercase()}${digit5.toString(16).uppercase()}")
            i += 2
        }
        return codes
    }
}
