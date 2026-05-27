package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.DTCStatus;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = DtcModel.TABLE_DTC)
public class DtcModel extends Model {
    public static final String COLUMN_VEHICLE = "Vehicle";
    public static final String TABLE_DTC = "Dtc";

    @SerializedName("timestamp")
    @Column
    @Expose
    private Date acquisitionDate;

    @Column
    @Deprecated
    private int dctStatus;

    @Column
    private String dtcCode;

    @SerializedName("ecu")
    @Column
    @Expose
    private String dtcECU;

    @SerializedName("dtc_id")
    @Column
    @Expose
    private String dtcId;

    @SerializedName("status")
    @Column
    @Expose
    private DTCStatus dtcStatusCode;

    @Column
    private String localizedDescription;

    @Column
    private String uid;

    @Column(name = "Vehicle", onDelete = Column.ForeignKeyAction.CASCADE)
    private VehicleModel vehicle;

    @Deprecated
    public int getDctStatus() {
        return this.dctStatus;
    }

    @Deprecated
    public void setDctStatus(int i) {
        this.dctStatus = i;
    }

    public DTCStatus getDtcStatusCode() {
        return this.dtcStatusCode;
    }

    public void setDtcStatusCode(DTCStatus dTCStatus) {
        this.dtcStatusCode = dTCStatus;
    }

    public String getDtcCode() {
        return this.dtcCode;
    }

    public void setDtcCode(String str) {
        this.dtcCode = str;
    }

    public String getDtcECU() {
        return this.dtcECU;
    }

    public void setDtcECU(String str) {
        this.dtcECU = str;
    }

    public String getDtcId() {
        return this.dtcId;
    }

    public void setDtcId(String str) {
        this.dtcId = str;
    }

    public String getLocalizedDescription() {
        return this.localizedDescription;
    }

    public void setLocalizedDescription(String str) {
        this.localizedDescription = str;
    }

    public Date getAcquisitionDate() {
        return this.acquisitionDate;
    }

    public void setAcquisitionDate(Date date) {
        this.acquisitionDate = date;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public VehicleModel getVehicle() {
        return this.vehicle;
    }

    public void setVehicle(VehicleModel vehicleModel) {
        this.vehicle = vehicleModel;
    }

    public static DtcModel from(DTC dtc) {
        Locale[] acceptedLocales = Utils.getAcceptedLocales();
        DtcModel dtcModel = new DtcModel();
        dtcModel.setDtcCode(dtc.getCode());
        dtcModel.setDtcECU(dtc.getECU());
        dtcModel.setDtcId(dtc.getID());
        dtcModel.setAcquisitionDate(dtc.getAcquisitionDate());
        dtcModel.setLocalizedDescription(dtc.getDetail(acceptedLocales[0], acceptedLocales[1]));
        dtcModel.setUid(UUID.randomUUID().toString());
        dtcModel.setDtcStatusCode(dtc.getStatus());
        dtc.getStatus();
        return dtcModel;
    }
}
