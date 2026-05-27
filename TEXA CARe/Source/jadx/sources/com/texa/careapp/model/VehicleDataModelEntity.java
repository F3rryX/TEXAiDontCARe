package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleDataModelEntity {

    @SerializedName("hwid")
    @Expose
    String dongleSerialNumber;

    @SerializedName("plate")
    @Expose
    String plate;

    @SerializedName(Constants.WebAPI.FIELD_VIN_CODE)
    @Expose
    String vinCode;

    protected boolean canEqual(Object obj) {
        return obj instanceof VehicleDataModelEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VehicleDataModelEntity)) {
            return false;
        }
        VehicleDataModelEntity vehicleDataModelEntity = (VehicleDataModelEntity) obj;
        if (!vehicleDataModelEntity.canEqual(this)) {
            return false;
        }
        String dongleSerialNumber = getDongleSerialNumber();
        String dongleSerialNumber2 = vehicleDataModelEntity.getDongleSerialNumber();
        if (dongleSerialNumber != null ? !dongleSerialNumber.equals(dongleSerialNumber2) : dongleSerialNumber2 != null) {
            return false;
        }
        String plate = getPlate();
        String plate2 = vehicleDataModelEntity.getPlate();
        if (plate != null ? !plate.equals(plate2) : plate2 != null) {
            return false;
        }
        String vinCode = getVinCode();
        String vinCode2 = vehicleDataModelEntity.getVinCode();
        return vinCode != null ? vinCode.equals(vinCode2) : vinCode2 == null;
    }

    public int hashCode() {
        String dongleSerialNumber = getDongleSerialNumber();
        int iHashCode = dongleSerialNumber == null ? 43 : dongleSerialNumber.hashCode();
        String plate = getPlate();
        int iHashCode2 = ((iHashCode + 59) * 59) + (plate == null ? 43 : plate.hashCode());
        String vinCode = getVinCode();
        return (iHashCode2 * 59) + (vinCode != null ? vinCode.hashCode() : 43);
    }

    public void setDongleSerialNumber(String str) {
        this.dongleSerialNumber = str;
    }

    public void setPlate(String str) {
        this.plate = str;
    }

    public void setVinCode(String str) {
        this.vinCode = str;
    }

    public String toString() {
        return "VehicleDataModelEntity(dongleSerialNumber=" + getDongleSerialNumber() + ", plate=" + getPlate() + ", vinCode=" + getVinCode() + ")";
    }

    public String getDongleSerialNumber() {
        return this.dongleSerialNumber;
    }

    public String getPlate() {
        return this.plate;
    }

    public String getVinCode() {
        return this.vinCode;
    }

    public VehicleDataModelEntity(String str, String str2, String str3) {
        this.dongleSerialNumber = str;
        this.plate = str2;
        this.vinCode = str3;
    }
}
