package com.texa.careapp.model;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleDataModelResponseEntity {

    @Expose
    private boolean dongleAssociated;

    @Expose
    private String dongleAssociationType;

    @Expose
    private boolean dongleConfigured;

    @Expose
    private boolean plateFound;

    @Expose
    private boolean userAssociated;

    @Expose
    private boolean vehicleExists;

    @Expose
    private String vehicleId;

    @Expose
    private boolean vinFound;

    protected boolean canEqual(Object obj) {
        return obj instanceof VehicleDataModelResponseEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VehicleDataModelResponseEntity)) {
            return false;
        }
        VehicleDataModelResponseEntity vehicleDataModelResponseEntity = (VehicleDataModelResponseEntity) obj;
        if (!vehicleDataModelResponseEntity.canEqual(this) || isVinFound() != vehicleDataModelResponseEntity.isVinFound() || isPlateFound() != vehicleDataModelResponseEntity.isPlateFound() || isVehicleExists() != vehicleDataModelResponseEntity.isVehicleExists()) {
            return false;
        }
        String vehicleId = getVehicleId();
        String vehicleId2 = vehicleDataModelResponseEntity.getVehicleId();
        if (vehicleId != null ? !vehicleId.equals(vehicleId2) : vehicleId2 != null) {
            return false;
        }
        if (isUserAssociated() != vehicleDataModelResponseEntity.isUserAssociated() || isDongleAssociated() != vehicleDataModelResponseEntity.isDongleAssociated()) {
            return false;
        }
        String dongleAssociationType = getDongleAssociationType();
        String dongleAssociationType2 = vehicleDataModelResponseEntity.getDongleAssociationType();
        if (dongleAssociationType != null ? dongleAssociationType.equals(dongleAssociationType2) : dongleAssociationType2 == null) {
            return isDongleConfigured() == vehicleDataModelResponseEntity.isDongleConfigured();
        }
        return false;
    }

    public int hashCode() {
        int i = (((((isVinFound() ? 79 : 97) + 59) * 59) + (isPlateFound() ? 79 : 97)) * 59) + (isVehicleExists() ? 79 : 97);
        String vehicleId = getVehicleId();
        int iHashCode = (((((i * 59) + (vehicleId == null ? 43 : vehicleId.hashCode())) * 59) + (isUserAssociated() ? 79 : 97)) * 59) + (isDongleAssociated() ? 79 : 97);
        String dongleAssociationType = getDongleAssociationType();
        return (((iHashCode * 59) + (dongleAssociationType != null ? dongleAssociationType.hashCode() : 43)) * 59) + (isDongleConfigured() ? 79 : 97);
    }

    public void setDongleAssociated(boolean z) {
        this.dongleAssociated = z;
    }

    public void setDongleAssociationType(String str) {
        this.dongleAssociationType = str;
    }

    public void setDongleConfigured(boolean z) {
        this.dongleConfigured = z;
    }

    public void setPlateFound(boolean z) {
        this.plateFound = z;
    }

    public void setUserAssociated(boolean z) {
        this.userAssociated = z;
    }

    public void setVehicleExists(boolean z) {
        this.vehicleExists = z;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public void setVinFound(boolean z) {
        this.vinFound = z;
    }

    public String toString() {
        return "VehicleDataModelResponseEntity(vinFound=" + isVinFound() + ", plateFound=" + isPlateFound() + ", vehicleExists=" + isVehicleExists() + ", vehicleId=" + getVehicleId() + ", userAssociated=" + isUserAssociated() + ", dongleAssociated=" + isDongleAssociated() + ", dongleAssociationType=" + getDongleAssociationType() + ", dongleConfigured=" + isDongleConfigured() + ")";
    }

    public boolean isVinFound() {
        return this.vinFound;
    }

    public boolean isPlateFound() {
        return this.plateFound;
    }

    public boolean isVehicleExists() {
        return this.vehicleExists;
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public boolean isUserAssociated() {
        return this.userAssociated;
    }

    public boolean isDongleAssociated() {
        return this.dongleAssociated;
    }

    public String getDongleAssociationType() {
        return this.dongleAssociationType;
    }

    public boolean isDongleConfigured() {
        return this.dongleConfigured;
    }
}
