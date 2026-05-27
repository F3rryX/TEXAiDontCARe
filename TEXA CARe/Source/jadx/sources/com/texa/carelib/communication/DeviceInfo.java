package com.texa.carelib.communication;

import android.bluetooth.BluetoothDevice;
import com.texa.carelib.communication.internal.BluetoothDeviceCompat;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfo {
    public static final int BOND_BONDED = 12;
    public static final int BOND_BONDING = 11;
    public static final int BOND_NONE = 10;
    public static final int DEVICE_TYPE_BLUETOOTH_CLASSIC = 1;
    public static final int DEVICE_TYPE_BLUETOOTH_DUAL = 3;
    public static final int DEVICE_TYPE_BLUETOOTH_LE = 2;
    public static final int DEVICE_TYPE_UNKNOWN = 0;
    private String mAddress;
    private int mBondState;
    private Date mLastConnectionDateTime;
    private String mName;
    private Integer mRSSI;
    private int mType;

    public DeviceInfo(String str) {
        this.mAddress = str;
        this.mName = str;
        this.mBondState = 10;
        this.mRSSI = null;
        this.mType = 0;
        this.mLastConnectionDateTime = null;
    }

    public DeviceInfo(BluetoothDevice bluetoothDevice) {
        this(bluetoothDevice.getAddress());
        if (StringUtils.isNullOrEmpty(bluetoothDevice.getName())) {
            this.mName = bluetoothDevice.getAddress();
        } else {
            this.mName = bluetoothDevice.getName();
        }
        this.mBondState = bluetoothDevice.getBondState();
        this.mType = BluetoothDeviceCompat.getDeviceType(bluetoothDevice);
    }

    public String getName() {
        return this.mName;
    }

    public Builder builder() {
        return new Builder(this);
    }

    public String getAddress() {
        return this.mAddress;
    }

    public int getBondState() {
        return this.mBondState;
    }

    public Integer getRSSI() {
        return this.mRSSI;
    }

    public int getType() {
        return this.mType;
    }

    public Date getLastConnectionDateTime() {
        return this.mLastConnectionDateTime;
    }

    public int hashCode() {
        String str = this.mAddress;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DeviceInfo) {
            return this.mAddress.equals(((DeviceInfo) obj).getAddress());
        }
        return false;
    }

    public String toString() {
        return "DeviceInfo{mName='" + this.mName + "', mAddress='" + this.mAddress + "', mBondState=" + this.mBondState + ", mRSSI=" + this.mRSSI + ", mType=" + this.mType + ", mLastConnectionDateTime=" + this.mLastConnectionDateTime + '}';
    }

    public static class Builder {
        private String mAddress;
        private int mBondState;
        private Date mLastConnectionDateTime;
        private String mName;
        private Integer mRSSI;
        private int mType;

        public Builder(String str) {
            this(new DeviceInfo(str));
        }

        public Builder(BluetoothDevice bluetoothDevice) {
            this(new DeviceInfo(bluetoothDevice));
        }

        public Builder(DeviceInfo deviceInfo) {
            this.mName = deviceInfo.mName;
            this.mAddress = deviceInfo.mAddress;
            this.mBondState = deviceInfo.mBondState;
            this.mRSSI = deviceInfo.mRSSI;
            this.mType = deviceInfo.mType;
            this.mLastConnectionDateTime = deviceInfo.mLastConnectionDateTime;
        }

        public DeviceInfo build() {
            DeviceInfo deviceInfo = new DeviceInfo(this.mAddress);
            deviceInfo.mName = this.mName;
            deviceInfo.mBondState = this.mBondState;
            deviceInfo.mRSSI = this.mRSSI;
            deviceInfo.mType = this.mType;
            deviceInfo.mLastConnectionDateTime = this.mLastConnectionDateTime;
            return deviceInfo;
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }

        public Builder setBondState(int i) {
            this.mBondState = i;
            return this;
        }

        public Builder setRSSI(Integer num) {
            this.mRSSI = num;
            return this;
        }

        public Builder setType(int i) {
            this.mType = i;
            return this;
        }

        public Builder setLastConnectionDateTime(Date date) {
            this.mLastConnectionDateTime = date;
            return this;
        }
    }
}
