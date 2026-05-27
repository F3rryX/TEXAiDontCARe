package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleModelEntity {

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_AUTO_DRIVE)
    @Expose
    boolean autoDrive;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_COLOR)
    @Expose
    String color;

    @SerializedName("country")
    @Expose
    String country;

    @SerializedName("description")
    @Expose
    String description;

    @SerializedName("odometer")
    @Expose
    int odometer;

    @SerializedName("plate")
    @Expose
    String plate;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_REGISTRATION_DATE)
    @Expose
    String registrationDate;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_RESCUE_CONTACT)
    @Expose
    String rescueContact;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_TYRES_TYPE_ID)
    @Expose
    int tyresTypeId;

    protected boolean canEqual(Object obj) {
        return obj instanceof VehicleModelEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VehicleModelEntity)) {
            return false;
        }
        VehicleModelEntity vehicleModelEntity = (VehicleModelEntity) obj;
        if (!vehicleModelEntity.canEqual(this)) {
            return false;
        }
        String plate = getPlate();
        String plate2 = vehicleModelEntity.getPlate();
        if (plate != null ? !plate.equals(plate2) : plate2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = vehicleModelEntity.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String country = getCountry();
        String country2 = vehicleModelEntity.getCountry();
        if (country != null ? !country.equals(country2) : country2 != null) {
            return false;
        }
        String registrationDate = getRegistrationDate();
        String registrationDate2 = vehicleModelEntity.getRegistrationDate();
        if (registrationDate != null ? !registrationDate.equals(registrationDate2) : registrationDate2 != null) {
            return false;
        }
        if (getOdometer() != vehicleModelEntity.getOdometer()) {
            return false;
        }
        String color = getColor();
        String color2 = vehicleModelEntity.getColor();
        if (color != null ? !color.equals(color2) : color2 != null) {
            return false;
        }
        if (getTyresTypeId() != vehicleModelEntity.getTyresTypeId() || isAutoDrive() != vehicleModelEntity.isAutoDrive()) {
            return false;
        }
        String rescueContact = getRescueContact();
        String rescueContact2 = vehicleModelEntity.getRescueContact();
        return rescueContact != null ? rescueContact.equals(rescueContact2) : rescueContact2 == null;
    }

    public int hashCode() {
        String plate = getPlate();
        int iHashCode = plate == null ? 43 : plate.hashCode();
        String description = getDescription();
        int iHashCode2 = ((iHashCode + 59) * 59) + (description == null ? 43 : description.hashCode());
        String country = getCountry();
        int iHashCode3 = (iHashCode2 * 59) + (country == null ? 43 : country.hashCode());
        String registrationDate = getRegistrationDate();
        int iHashCode4 = (((iHashCode3 * 59) + (registrationDate == null ? 43 : registrationDate.hashCode())) * 59) + getOdometer();
        String color = getColor();
        int iHashCode5 = (((((iHashCode4 * 59) + (color == null ? 43 : color.hashCode())) * 59) + getTyresTypeId()) * 59) + (isAutoDrive() ? 79 : 97);
        String rescueContact = getRescueContact();
        return (iHashCode5 * 59) + (rescueContact != null ? rescueContact.hashCode() : 43);
    }

    public void setAutoDrive(boolean z) {
        this.autoDrive = z;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setOdometer(int i) {
        this.odometer = i;
    }

    public void setPlate(String str) {
        this.plate = str;
    }

    public void setRegistrationDate(String str) {
        this.registrationDate = str;
    }

    public void setRescueContact(String str) {
        this.rescueContact = str;
    }

    public void setTyresTypeId(int i) {
        this.tyresTypeId = i;
    }

    public String toString() {
        return "VehicleModelEntity(plate=" + getPlate() + ", description=" + getDescription() + ", country=" + getCountry() + ", registrationDate=" + getRegistrationDate() + ", odometer=" + getOdometer() + ", color=" + getColor() + ", tyresTypeId=" + getTyresTypeId() + ", autoDrive=" + isAutoDrive() + ", rescueContact=" + getRescueContact() + ")";
    }

    public String getPlate() {
        return this.plate;
    }

    public String getDescription() {
        return this.description;
    }

    public String getCountry() {
        return this.country;
    }

    public String getRegistrationDate() {
        return this.registrationDate;
    }

    public int getOdometer() {
        return this.odometer;
    }

    public String getColor() {
        return this.color;
    }

    public int getTyresTypeId() {
        return this.tyresTypeId;
    }

    public boolean isAutoDrive() {
        return this.autoDrive;
    }

    public String getRescueContact() {
        return this.rescueContact;
    }

    public VehicleModelEntity(String str, String str2) {
        this.plate = str;
        this.description = str2;
    }
}
