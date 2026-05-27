package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.care.eco_driving.Constants;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = BatteryAnalyzeModel.TABLE_BATTERY_ANALYZE)
public class BatteryAnalyzeModel extends Model {
    public static final String COLUMN_FIRMWARE = "firmware";
    public static final String COLUMN_HWID = "hwid";
    public static final String COLUMN_RAW_DATA = "rawData";
    public static final String COLUMN_REPORT_TYPE = "reportType";
    public static final String COLUMN_SYNC_NEEDED = "syncNeeded";
    public static final String COLUMN_TIMESTAMP = "timestamp";
    public static final String LOW_POWER_RECENT_HISTOGRAM = "low_power_recent_histogram";
    public static final String LOW_POWER_TOTAL_HISTOGRAM = "low_power_total_histogram";
    public static final String OPERATING_CRANK_REPORT = "operating_crank_report";
    public static final String STANDBY_CRANK_REPORT = "standby_crank_report";
    public static final String TABLE_BATTERY_ANALYZE = "BatteryAnalyze";

    @SerializedName("fw_version")
    @Column(name = COLUMN_FIRMWARE)
    @Expose
    String firmware;

    @Column(name = "hwid")
    @Expose
    String hwid;

    @SerializedName(Constants.RAW_DATA)
    @Column(name = "rawData")
    @Expose
    String rawData;

    @SerializedName("report_type")
    @Column(name = COLUMN_REPORT_TYPE)
    @Expose
    String reportType;

    @Column(name = "syncNeeded")
    boolean syncNeeded;

    @Column(name = "timestamp")
    @Expose
    String timestamp;

    public void setTimestamp(String str) {
        this.timestamp = str;
    }

    public void setReportType(String str) {
        this.reportType = str;
    }

    public void setRawData(String str) {
        this.rawData = str;
    }

    public void setHwid(String str) {
        this.hwid = str;
    }

    public String getHwid() {
        return this.hwid;
    }

    public void setFirmware(String str) {
        this.firmware = str;
    }

    public String getFirmware() {
        return this.firmware;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "BatteryAnalyzeModel{timestamp='" + this.timestamp + "', reportType='" + this.reportType + "', rawData='" + this.rawData + "', hwid='" + this.hwid + "', firmware='" + this.firmware + "', syncNeeded=" + this.syncNeeded + '}';
    }

    public static List<BatteryAnalyzeModel> getNotSyncedData() {
        return new Select().from(BatteryAnalyzeModel.class).where("syncNeeded = ?", true).and("firmware is not null").execute();
    }
}
