package com.texa.careapp.app.onboarding;

import com.texa.carelib.communication.DeviceInfo;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceInfoExt {
    private DeviceInfo deviceInfo;
    private String plate;
    private boolean selectable;
    private String vehicleModelFormatted;

    public void setDeviceInfo(DeviceInfo deviceInfo) {
        this.deviceInfo = deviceInfo;
    }

    public String getPlate() {
        return this.plate;
    }

    public void setPlate(String str) {
        this.plate = str;
    }

    public String getVehicleModelFormatted() {
        return this.vehicleModelFormatted;
    }

    public void setVehicleModelFormatted(String str) {
        this.vehicleModelFormatted = str;
    }

    public boolean isSelectable() {
        return this.selectable;
    }

    public void setSelectable(boolean z) {
        this.selectable = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DeviceInfoExt)) {
            return false;
        }
        DeviceInfoExt deviceInfoExt = (DeviceInfoExt) obj;
        return deviceInfoExt == this || this.deviceInfo.equals(deviceInfoExt.deviceInfo);
    }

    public DeviceInfo getDeviceInfo() {
        return this.deviceInfo;
    }
}
