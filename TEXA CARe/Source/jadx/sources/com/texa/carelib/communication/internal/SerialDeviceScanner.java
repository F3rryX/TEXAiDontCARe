package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.texa.carelib.communication.DeviceFilter;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.logging.CareLog;
import kotlin.jvm.internal.ShortCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
public class SerialDeviceScanner implements DeviceScanner {
    private static final BluetoothDeviceFilter[] FILTERS = {new DeviceTypeFilter()};
    private static final String TAG = "SerialDeviceScanner";
    private BroadcastReceiver mBluetoothBroadcastReceiver;
    private DeviceScannerCallback mCallback;
    private DeviceFilter mDeviceFilter;
    private DeviceScannerState mDeviceScannerState;

    @Override // com.texa.carelib.communication.internal.DeviceScanner
    public void setCallback(DeviceScannerCallback deviceScannerCallback) {
        this.mCallback = deviceScannerCallback;
    }

    @Override // com.texa.carelib.communication.internal.DeviceScanner
    public boolean startScan(Context context) {
        String str = TAG;
        CareLog.d(str, "startScan()", new Object[0]);
        if (isScanning(this.mDeviceScannerState)) {
            CareLog.w(str, "Scan is already in progress.", new Object[0]);
            return false;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null) {
                return false;
            }
            this.mDeviceScannerState = DeviceScannerState.Starting;
            registerBroadcastReceiver(context, defaultAdapter);
            startScanInternal(defaultAdapter);
        } catch (Exception unused) {
            stopScan(context);
        }
        boolean zIsScanning = isScanning(this.mDeviceScannerState);
        if (zIsScanning) {
            onScanStarted(this.mCallback);
        }
        return zIsScanning;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScanInternal(BluetoothAdapter bluetoothAdapter) {
        if (bluetoothAdapter.startDiscovery()) {
            this.mDeviceScannerState = DeviceScannerState.Scanning;
        }
    }

    @Override // com.texa.carelib.communication.internal.DeviceScanner
    public boolean stopScan(Context context) {
        CareLog.d(TAG, "stopScan()", new Object[0]);
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || (!defaultAdapter.cancelDiscovery() && defaultAdapter.isDiscovering())) {
            return false;
        }
        this.mDeviceScannerState = DeviceScannerState.Stopping;
        return true;
    }

    @Override // com.texa.carelib.communication.internal.DeviceScanner
    public void setFilter(DeviceFilter deviceFilter) {
        this.mDeviceFilter = deviceFilter;
    }

    @Override // com.texa.carelib.communication.internal.DeviceScanner
    public DeviceScannerState getScanState() {
        return this.mDeviceScannerState;
    }

    protected boolean isValidDevice(BluetoothDevice bluetoothDevice) {
        if (bluetoothDevice == null) {
            return false;
        }
        for (BluetoothDeviceFilter bluetoothDeviceFilter : FILTERS) {
            if (!bluetoothDeviceFilter.matches(bluetoothDevice)) {
                return false;
            }
        }
        return isValidDevice(this.mDeviceFilter, new DeviceInfo(bluetoothDevice));
    }

    protected boolean isValidDevice(DeviceFilter deviceFilter, DeviceInfo deviceInfo) {
        if (deviceFilter == null) {
            return true;
        }
        try {
            return deviceFilter.isValidDevice(deviceInfo);
        } catch (Exception e) {
            CareLog.e(TAG, e, "An exception is occurred in external device filter.", new Object[0]);
            return true;
        }
    }

    protected void onScanStarted(DeviceScannerCallback deviceScannerCallback) {
        if (deviceScannerCallback != null) {
            deviceScannerCallback.onScanStarted();
        }
    }

    protected void onScanFinished(DeviceScannerCallback deviceScannerCallback) {
        if (deviceScannerCallback != null) {
            deviceScannerCallback.onScanFinished();
        }
    }

    protected void onDeviceNameChanged(Context context, Intent intent, BluetoothAdapter bluetoothAdapter, DeviceScannerCallback deviceScannerCallback) {
        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        bluetoothDevice.getAddress();
        if (!isValidDevice(bluetoothDevice) || deviceScannerCallback == null) {
            return;
        }
        deviceScannerCallback.onDeviceNameChanged(bluetoothDevice);
    }

    protected void onDeviceFound(Context context, Intent intent, BluetoothAdapter bluetoothAdapter, DeviceScannerCallback deviceScannerCallback) {
        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        bluetoothDevice.getAddress();
        if (isValidDevice(bluetoothDevice)) {
            Integer numValueOf = intent.hasExtra("android.bluetooth.device.extra.RSSI") ? Integer.valueOf(intent.getShortExtra("android.bluetooth.device.extra.RSSI", ShortCompanionObject.MIN_VALUE)) : null;
            if (deviceScannerCallback != null) {
                deviceScannerCallback.onDeviceFound(bluetoothDevice, numValueOf);
            }
        }
    }

    private void registerBroadcastReceiver(Context context, final BluetoothAdapter bluetoothAdapter) {
        if (this.mBluetoothBroadcastReceiver == null) {
            this.mBluetoothBroadcastReceiver = new BroadcastReceiver() { // from class: com.texa.carelib.communication.internal.SerialDeviceScanner.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    String action = intent.getAction();
                    CareLog.d(SerialDeviceScanner.TAG, "Received action: %s", action);
                    if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                        SerialDeviceScanner serialDeviceScanner = SerialDeviceScanner.this;
                        if (serialDeviceScanner.isScanning(serialDeviceScanner.mDeviceScannerState)) {
                            SerialDeviceScanner.this.startScanInternal(bluetoothAdapter);
                            return;
                        }
                        SerialDeviceScanner.this.unregisterBroadcastReceiver(context2);
                        SerialDeviceScanner serialDeviceScanner2 = SerialDeviceScanner.this;
                        serialDeviceScanner2.onScanFinished(serialDeviceScanner2.mCallback);
                        return;
                    }
                    if ("android.bluetooth.device.action.NAME_CHANGED".equals(action)) {
                        SerialDeviceScanner.this.onDeviceNameChanged(context2, intent, BluetoothAdapter.getDefaultAdapter(), SerialDeviceScanner.this.mCallback);
                    } else if ("android.bluetooth.device.action.FOUND".equals(action)) {
                        SerialDeviceScanner.this.onDeviceFound(context2, intent, BluetoothAdapter.getDefaultAdapter(), SerialDeviceScanner.this.mCallback);
                    }
                }
            };
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        intentFilter.addAction("android.bluetooth.device.action.NAME_CHANGED");
        if (Build.VERSION.SDK_INT >= 15) {
            intentFilter.addAction("android.bluetooth.device.action.UUID");
        }
        try {
            context.getApplicationContext().registerReceiver(this.mBluetoothBroadcastReceiver, intentFilter);
        } catch (Exception e) {
            CareLog.e(TAG, e, "Could not register broadcast receiver.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterBroadcastReceiver(Context context) {
        try {
            if (this.mBluetoothBroadcastReceiver != null) {
                context.getApplicationContext().unregisterReceiver(this.mBluetoothBroadcastReceiver);
                this.mBluetoothBroadcastReceiver = null;
            }
        } catch (Exception unused) {
            CareLog.e(TAG, "Cannot unregister the broadcast receiver.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isScanning(DeviceScannerState deviceScannerState) {
        return DeviceScannerState.Scanning == deviceScannerState;
    }
}
