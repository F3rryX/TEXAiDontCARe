package com.texa.careapp.app.activationSosServices.entity;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class PurchaseLockEntity {

    @Expose
    private final String deviceId;

    @SerializedName("hwid")
    @Expose
    private final String hwId;

    @Expose
    private final String serviceType;

    protected boolean canEqual(Object obj) {
        return obj instanceof PurchaseLockEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PurchaseLockEntity)) {
            return false;
        }
        PurchaseLockEntity purchaseLockEntity = (PurchaseLockEntity) obj;
        if (!purchaseLockEntity.canEqual(this)) {
            return false;
        }
        String serviceType = getServiceType();
        String serviceType2 = purchaseLockEntity.getServiceType();
        if (serviceType != null ? !serviceType.equals(serviceType2) : serviceType2 != null) {
            return false;
        }
        String hwId = getHwId();
        String hwId2 = purchaseLockEntity.getHwId();
        if (hwId != null ? !hwId.equals(hwId2) : hwId2 != null) {
            return false;
        }
        String deviceId = getDeviceId();
        String deviceId2 = purchaseLockEntity.getDeviceId();
        return deviceId != null ? deviceId.equals(deviceId2) : deviceId2 == null;
    }

    public int hashCode() {
        String serviceType = getServiceType();
        int iHashCode = serviceType == null ? 43 : serviceType.hashCode();
        String hwId = getHwId();
        int iHashCode2 = ((iHashCode + 59) * 59) + (hwId == null ? 43 : hwId.hashCode());
        String deviceId = getDeviceId();
        return (iHashCode2 * 59) + (deviceId != null ? deviceId.hashCode() : 43);
    }

    public String toString() {
        return "PurchaseLockEntity(serviceType=" + getServiceType() + ", hwId=" + getHwId() + ", deviceId=" + getDeviceId() + ")";
    }

    public String getServiceType() {
        return this.serviceType;
    }

    public String getHwId() {
        return this.hwId;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public PurchaseLockEntity(String str, String str2, String str3) {
        this.serviceType = str;
        this.hwId = str2;
        this.deviceId = str3;
    }
}
