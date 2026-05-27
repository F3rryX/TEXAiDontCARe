package com.obd2reader.viewmodel

import android.app.Application
import android.bluetooth.BluetoothDevice
import androidx.lifecycle.*
import com.obd2reader.ble.BleManager
import com.obd2reader.obd.ObdData
import com.obd2reader.obd.ObdSession
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*

class MainViewModel(application: Application) : AndroidViewModel(application) {

    val bleManager = BleManager(application)
    private var obdSession: ObdSession? = null
    private var liveDataJob: Job? = null

    val connectionState = bleManager.connectionState.asLiveData()
    val scannedDevices = bleManager.scannedDevices.asLiveData()

    private val _obdData = MutableLiveData<ObdData>()
    val obdData: LiveData<ObdData> = _obdData

    private val _statusMessage = MutableLiveData<String>()
    val statusMessage: LiveData<String> = _statusMessage

    private val _dtcCodes = MutableLiveData<List<String>>()
    val dtcCodes: LiveData<List<String>> = _dtcCodes

    fun startScan() {
        bleManager.startScan()
        _statusMessage.value = "Scansione dispositivi BLE..."
    }

    fun stopScan() {
        bleManager.stopScan()
    }

    fun connectDevice(device: BluetoothDevice) {
        bleManager.connect(device)
        _statusMessage.value = "Connessione a ${device.name ?: device.address}..."

        // Osserva la connessione e inizializza ELM327 appena connesso
        viewModelScope.launch {
            bleManager.connectionState
                .filter { it == BleManager.ConnectionState.CONNECTED }
                .first()
            initializeAndStartPolling()
        }
    }

    private suspend fun initializeAndStartPolling() {
        _statusMessage.postValue("Inizializzazione ELM327...")
        val session = ObdSession(bleManager)
        obdSession = session

        val ok = session.initialize()
        if (!ok) {
            _statusMessage.postValue("Errore inizializzazione ELM327")
            return
        }
        _statusMessage.postValue("Connesso — lettura dati in corso")
        startLiveDataPolling(session)
    }

    private fun startLiveDataPolling(session: ObdSession) {
        liveDataJob?.cancel()
        liveDataJob = viewModelScope.launch {
            session.liveDataFlow(intervalMs = 1000L)
                .catch { e -> _statusMessage.postValue("Errore: ${e.message}") }
                .collect { data -> _obdData.postValue(data) }
        }
    }

    fun readDtc() {
        viewModelScope.launch {
            val session = obdSession ?: return@launch
            _statusMessage.value = "Lettura codici errore..."
            val codes = session.readDtc()
            _dtcCodes.postValue(codes)
            _statusMessage.postValue(
                if (codes.isEmpty()) "Nessun codice errore trovato"
                else "${codes.size} codice/i trovato/i"
            )
        }
    }

    fun clearDtc() {
        viewModelScope.launch {
            val session = obdSession ?: return@launch
            val success = session.clearDtc()
            _statusMessage.postValue(
                if (success) "Codici errore cancellati" else "Errore durante la cancellazione"
            )
            _dtcCodes.postValue(emptyList())
        }
    }

    fun disconnect() {
        liveDataJob?.cancel()
        obdSession?.cancel()
        obdSession = null
        bleManager.disconnect()
        _statusMessage.value = "Disconnesso"
    }

    override fun onCleared() {
        super.onCleared()
        liveDataJob?.cancel()
        obdSession?.cancel()
        bleManager.release()
    }
}
