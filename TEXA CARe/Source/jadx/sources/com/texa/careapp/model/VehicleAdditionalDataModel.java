package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = VehicleAdditionalDataModel.TABLE_VEHICLE_ADDITIONAL_DATA)
public class VehicleAdditionalDataModel extends Model {
    public static final String BATTERY_STATE_TYPE = "BATTERY_STATE";
    public static final String COLUMN_TYPE = "type";
    public static final String COLUMN_VEHICLE = "Vehicle";
    public static final String LAST_LOCATION_TYPE = "LAST_LOCATION";
    public static final String TABLE_VEHICLE_ADDITIONAL_DATA = "VehicleAdditionalData";
    private static final String TAG = "VehicleAdditionalDataModel";

    @Column(name = "type")
    private String type;

    @Column
    private String value;

    @Column(name = "Vehicle", onDelete = Column.ForeignKeyAction.CASCADE)
    private VehicleModel vehicle;

    @Retention(RetentionPolicy.SOURCE)
    public @interface VehicleAdditionalDataType {
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public VehicleModel getVehicle() {
        return this.vehicle;
    }

    public void setVehicle(VehicleModel vehicleModel) {
        this.vehicle = vehicleModel;
    }
}
