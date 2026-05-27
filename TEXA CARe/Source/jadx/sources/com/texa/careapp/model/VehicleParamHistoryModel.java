package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = VehicleParamHistoryModel.TABLE_NAME)
public class VehicleParamHistoryModel extends Model {
    public static final String COLUMN_DATE = "Date";
    public static final String COLUMN_ID_PARAM = "Param";
    public static final String COLUMN_ID_TRIP = "Trip";
    public static final String COLUMN_ODO_VALUE = "OdoValue";
    public static final String COLUMN_VALUE = "ParamValue";
    public static final String TABLE_NAME = "VehicleParamHistory";

    @Column(name = COLUMN_DATE)
    private Date date;
    private double differenceOdoValue;

    @Column(name = COLUMN_ODO_VALUE)
    private double odoValue;

    @Column(name = COLUMN_ID_TRIP)
    private long trip;

    @Column(name = COLUMN_VALUE)
    private double value;

    @Column(name = COLUMN_ID_PARAM, onDelete = Column.ForeignKeyAction.CASCADE, uniqueGroups = {"key"})
    private VehicleParam vehicleParam;

    public VehicleParam getVehicleParam() {
        return this.vehicleParam;
    }

    public void setVehicleParam(VehicleParam vehicleParam) {
        this.vehicleParam = vehicleParam;
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getValue() {
        return this.value;
    }

    public void setValue(double d) {
        this.value = d;
    }

    public double getOdoValue() {
        return this.odoValue;
    }

    public void setOdoValue(double d) {
        this.odoValue = d;
    }

    public long getTrip() {
        return this.trip;
    }

    public void setTrip(long j) {
        this.trip = j;
    }

    public double getDifferenceOdoValue() {
        return this.differenceOdoValue;
    }

    public void setDifferenceOdoValue(double d) {
        this.differenceOdoValue = d;
    }

    public VehicleParamHistoryModel() {
    }

    public VehicleParamHistoryModel(double d) {
        this.value = d;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "VehicleParamHistoryModel{vehicleParam=" + this.vehicleParam + ", date=" + this.date + ", value=" + this.value + ", odoValue=" + this.odoValue + ", trip=" + this.trip + '}';
    }
}
