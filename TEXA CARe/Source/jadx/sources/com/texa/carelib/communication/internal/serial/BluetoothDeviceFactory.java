package com.texa.carelib.communication.internal.serial;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class BluetoothDeviceFactory {
    public static final String TAG = "BluetoothDeviceFactory";
    private final BluetoothCommunication mBluetoothCommunication;

    BluetoothDeviceFactory(BluetoothCommunication bluetoothCommunication) {
        this.mBluetoothCommunication = bluetoothCommunication;
    }

    BluetoothDevice getRemoteDevice(BluetoothAdapter bluetoothAdapter, DeviceInfo deviceInfo) {
        if (bluetoothAdapter == null) {
            CareLog.e(TAG, "Bluetooth is not supported on this hardware platform.", new Object[0]);
            return null;
        }
        BluetoothDevice remoteDeviceByAddress = getRemoteDeviceByAddress(bluetoothAdapter, deviceInfo.getAddress());
        if (remoteDeviceByAddress == null && StringUtils.isNullOrEmpty(deviceInfo.getName()) && this.mBluetoothCommunication.getDevices().size() > 0) {
            remoteDeviceByAddress = getRemoteDeviceByName(bluetoothAdapter, deviceInfo.getName());
        }
        if (remoteDeviceByAddress == null) {
            remoteDeviceByAddress = getRemoteDeviceFromBondDevices(bluetoothAdapter, deviceInfo.getName());
        }
        return remoteDeviceByAddress == null ? getRemoteDeviceFromKnownDevices(bluetoothAdapter, deviceInfo.getName()) : remoteDeviceByAddress;
    }

    private BluetoothDevice getRemoteDeviceByAddress(BluetoothAdapter bluetoothAdapter, String str) {
        if (StringUtils.isNullOrEmpty(str) || bluetoothAdapter == null) {
            return null;
        }
        String upperCase = str.toUpperCase(Locale.US);
        if (BluetoothAdapter.checkBluetoothAddress(upperCase)) {
            return bluetoothAdapter.getRemoteDevice(upperCase);
        }
        return null;
    }

    private BluetoothDevice getRemoteDeviceByName(BluetoothAdapter bluetoothAdapter, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        for (DeviceInfo deviceInfo : this.mBluetoothCommunication.getDevices()) {
            if (StringUtils.equals(deviceInfo.getName(), str)) {
                return getRemoteDeviceByAddress(bluetoothAdapter, deviceInfo.getAddress());
            }
        }
        return null;
    }

    private BluetoothDevice getRemoteDeviceFromBondDevices(BluetoothAdapter bluetoothAdapter, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        for (DeviceInfo deviceInfo : this.mBluetoothCommunication.getDevices()) {
            if (StringUtils.equals(deviceInfo.getName(), str)) {
                return getRemoteDeviceByAddress(bluetoothAdapter, deviceInfo.getAddress());
            }
        }
        return null;
    }

    private BluetoothDevice getRemoteDeviceFromKnownDevices(BluetoothAdapter bluetoothAdapter, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        for (DeviceInfo deviceInfo : this.mBluetoothCommunication.getKnownDevices()) {
            if (StringUtils.equals(deviceInfo.getName(), str)) {
                return getRemoteDeviceByAddress(bluetoothAdapter, deviceInfo.getAddress());
            }
        }
        return null;
    }
}
