package com.texa.careapp.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleModelUpdateEntity {

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

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_REGISTRATION_DATE)
    @Expose
    Date registrationDate;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_RESCUE_CONTACT)
    @Expose
    String rescueContact;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_SCHEMA_VERSION)
    @Expose
    int schemaVersion;

    @SerializedName(Constants.WebAPI.FIELD_VEHICLE_TYRES_TYPE_ID)
    @Expose
    int tyresTypeId;

    protected boolean canEqual(Object obj) {
        return obj instanceof VehicleModelUpdateEntity;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VehicleModelUpdateEntity)) {
            return false;
        }
        VehicleModelUpdateEntity vehicleModelUpdateEntity = (VehicleModelUpdateEntity) obj;
        if (!vehicleModelUpdateEntity.canEqual(this)) {
            return false;
        }
        String description = getDescription();
        String description2 = vehicleModelUpdateEntity.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        String country = getCountry();
        String country2 = vehicleModelUpdateEntity.getCountry();
        if (country != null ? !country.equals(country2) : country2 != null) {
            return false;
        }
        Date registrationDate = getRegistrationDate();
        Date registrationDate2 = vehicleModelUpdateEntity.getRegistrationDate();
        if (registrationDate != null ? !registrationDate.equals(registrationDate2) : registrationDate2 != null) {
            return false;
        }
        if (getOdometer() != vehicleModelUpdateEntity.getOdometer()) {
            return false;
        }
        String color = getColor();
        String color2 = vehicleModelUpdateEntity.getColor();
        if (color != null ? !color.equals(color2) : color2 != null) {
            return false;
        }
        if (getTyresTypeId() != vehicleModelUpdateEntity.getTyresTypeId() || isAutoDrive() != vehicleModelUpdateEntity.isAutoDrive()) {
            return false;
        }
        String rescueContact = getRescueContact();
        String rescueContact2 = vehicleModelUpdateEntity.getRescueContact();
        if (rescueContact != null ? rescueContact.equals(rescueContact2) : rescueContact2 == null) {
            return getSchemaVersion() == vehicleModelUpdateEntity.getSchemaVersion();
        }
        return false;
    }

    public int hashCode() {
        String description = getDescription();
        int iHashCode = description == null ? 43 : description.hashCode();
        String country = getCountry();
        int iHashCode2 = ((iHashCode + 59) * 59) + (country == null ? 43 : country.hashCode());
        Date registrationDate = getRegistrationDate();
        int iHashCode3 = (((iHashCode2 * 59) + (registrationDate == null ? 43 : registrationDate.hashCode())) * 59) + getOdometer();
        String color = getColor();
        int iHashCode4 = (((((iHashCode3 * 59) + (color == null ? 43 : color.hashCode())) * 59) + getTyresTypeId()) * 59) + (isAutoDrive() ? 79 : 97);
        String rescueContact = getRescueContact();
        return (((iHashCode4 * 59) + (rescueContact != null ? rescueContact.hashCode() : 43)) * 59) + getSchemaVersion();
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

    public void setRegistrationDate(Date date) {
        this.registrationDate = date;
    }

    public void setRescueContact(String str) {
        this.rescueContact = str;
    }

    public void setSchemaVersion(int i) {
        this.schemaVersion = i;
    }

    public void setTyresTypeId(int i) {
        this.tyresTypeId = i;
    }

    public String toString() {
        return "VehicleModelUpdateEntity(description=" + getDescription() + ", country=" + getCountry() + ", registrationDate=" + getRegistrationDate() + ", odometer=" + getOdometer() + ", color=" + getColor() + ", tyresTypeId=" + getTyresTypeId() + ", autoDrive=" + isAutoDrive() + ", rescueContact=" + getRescueContact() + ", schemaVersion=" + getSchemaVersion() + ")";
    }

    public String getDescription() {
        return this.description;
    }

    public String getCountry() {
        return this.country;
    }

    public Date getRegistrationDate() {
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

    public int getSchemaVersion() {
        return this.schemaVersion;
    }

    public VehicleModelUpdateEntity(String str, String str2, Date date, int i, String str3, int i2, boolean z, String str4, int i3) {
        this.description = str;
        this.country = str2;
        this.registrationDate = date;
        this.odometer = i;
        this.color = str3;
        this.tyresTypeId = i2;
        this.autoDrive = z;
        this.rescueContact = str4;
        this.schemaVersion = i3;
    }

    public VehicleModelUpdateEntity(String str, String str2, Date date, int i) {
        this.description = str;
        this.country = str2;
        this.registrationDate = date;
        this.odometer = i;
        this.schemaVersion = 2;
    }
}
