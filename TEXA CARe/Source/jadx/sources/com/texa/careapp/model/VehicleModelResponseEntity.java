package com.texa.careapp.model;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleModelResponseEntity {

    @Expose
    private String VehicleId;

    protected boolean canEqual(Object obj) {
        return obj instanceof VehicleModelResponseEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VehicleModelResponseEntity)) {
            return false;
        }
        VehicleModelResponseEntity vehicleModelResponseEntity = (VehicleModelResponseEntity) obj;
        if (!vehicleModelResponseEntity.canEqual(this)) {
            return false;
        }
        String vehicleId = getVehicleId();
        String vehicleId2 = vehicleModelResponseEntity.getVehicleId();
        return vehicleId != null ? vehicleId.equals(vehicleId2) : vehicleId2 == null;
    }

    public int hashCode() {
        String vehicleId = getVehicleId();
        return 59 + (vehicleId == null ? 43 : vehicleId.hashCode());
    }

    public void setVehicleId(String str) {
        this.VehicleId = str;
    }

    public String toString() {
        return "VehicleModelResponseEntity(VehicleId=" + getVehicleId() + ")";
    }

    public String getVehicleId() {
        return this.VehicleId;
    }
}
