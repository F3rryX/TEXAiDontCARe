package com.obd2reader.ui

import android.Manifest
import android.bluetooth.BluetoothDevice
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.widget.*
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.lifecycle.ViewModelProvider
import com.obd2reader.ble.BleManager
import com.obd2reader.databinding.ActivityMainBinding
import com.obd2reader.viewmodel.MainViewModel

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var viewModel: MainViewModel
    private lateinit var deviceAdapter: ArrayAdapter<String>
    private val deviceList = mutableListOf<BluetoothDevice>()

    private val requiredPermissions: Array<String>
        get() = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            arrayOf(
                Manifest.permission.BLUETOOTH_SCAN,
                Manifest.permission.BLUETOOTH_CONNECT,
                Manifest.permission.ACCESS_FINE_LOCATION
            )
        } else {
            arrayOf(
                Manifest.permission.BLUETOOTH,
                Manifest.permission.BLUETOOTH_ADMIN,
                Manifest.permission.ACCESS_FINE_LOCATION
            )
        }

    private val permissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) { results ->
        if (results.all { it.value }) {
            viewModel.startScan()
        } else {
            Toast.makeText(this, "Permessi Bluetooth necessari per la scansione", Toast.LENGTH_LONG).show()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        title = "OBD2 Reader"

        viewModel = ViewModelProvider(this)[MainViewModel::class.java]

        setupDeviceList()
        setupButtons()
        observeViewModel()
    }

    private fun setupDeviceList() {
        deviceAdapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, mutableListOf())
        binding.listDevices.adapter = deviceAdapter
        binding.listDevices.setOnItemClickListener { _, _, position, _ ->
            val device = deviceList[position]
            viewModel.connectDevice(device)
        }
    }

    private fun setupButtons() {
        binding.btnScan.setOnClickListener {
            if (hasPermissions()) viewModel.startScan() else requestPermissions()
        }
        binding.btnDisconnect.setOnClickListener {
            viewModel.disconnect()
        }
        binding.btnReadDtc.setOnClickListener {
            viewModel.readDtc()
        }
        binding.btnClearDtc.setOnClickListener {
            AlertDialog.Builder(this)
                .setTitle("Cancella DTC")
                .setMessage("Sei sicuro di voler cancellare tutti i codici errore?")
                .setPositiveButton("Cancella") { _, _ -> viewModel.clearDtc() }
                .setNegativeButton("Annulla", null)
                .show()
        }
    }

    private fun observeViewModel() {
        viewModel.statusMessage.observe(this) { msg ->
            binding.tvStatus.text = msg
        }

        viewModel.connectionState.observe(this) { state ->
            val connected = state == BleManager.ConnectionState.CONNECTED
            val scanning = state == BleManager.ConnectionState.SCANNING
            binding.btnScan.isEnabled = !connected && !scanning
            binding.btnDisconnect.isEnabled = connected
            binding.btnReadDtc.isEnabled = connected
            binding.btnClearDtc.isEnabled = connected
        }

        viewModel.scannedDevices.observe(this) { devices ->
            deviceList.clear()
            deviceList.addAll(devices)
            deviceAdapter.clear()
            deviceAdapter.addAll(devices.map { it.name ?: it.address })
        }

        viewModel.obdData.observe(this) { data ->
            binding.tvRpm.text = data.rpm?.toString() ?: "--"
            binding.tvSpeed.text = data.speedKmh?.toString() ?: "--"
            binding.tvCoolant.text = data.coolantTempC?.toString() ?: "--"
            binding.tvBattery.text = data.batteryVoltage?.let { "%.1f".format(it) } ?: "--"
            binding.tvFuel.text = data.fuelTankPercent?.let { "%.0f".format(it) } ?: "--"
            binding.tvLoad.text = data.engineLoadPercent?.let { "%.0f".format(it) } ?: "--"
        }

        viewModel.dtcCodes.observe(this) { codes ->
            binding.tvDtcCodes.text = if (codes.isEmpty()) "Nessun codice errore"
            else codes.joinToString("\n")
        }
    }

    private fun hasPermissions() = requiredPermissions.all {
        ContextCompat.checkSelfPermission(this, it) == PackageManager.PERMISSION_GRANTED
    }

    private fun requestPermissions() {
        permissionLauncher.launch(requiredPermissions)
    }
}
