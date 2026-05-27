package com.texa.careapp.model;

import android.util.Base64;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.care.eco_driving.Constants;
import com.texa.careapp.utils.DateTypeAdapter;
import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.VerboseCrashReport;
import com.texa.carelib.core.utils.VersionFormatter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = CrashLogModel.TABLE_CRASH_LOG)
public class CrashLogModel extends Model {
    private static final String COLUMN_FIRMWARE = "firmware";
    private static final String COLUMN_HWID = "hwid";
    private static final String COLUMN_RAW_DATA = "rawData";
    private static final String COLUMN_REPORT_TYPE = "reportType";
    public static final String COLUMN_SYNC_NEEDED = "syncNeeded";
    private static final String COLUMN_TIMESTAMP = "timestamp";
    private static final String REPORT_TYPE_CRASH = "crash";
    private static final String REPORT_TYPE_CRASH_INVALID = "crash_invalid";
    private static final String REPORT_TYPE_CRASH_VERBOSE = "crash_verbose";
    static final String TABLE_CRASH_LOG = "CrashLog";

    @SerializedName("fw_version")
    @Column(name = "firmware")
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
    @Column(name = "reportType")
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

    private static String getUTCDate(Date date) {
        if (date == null) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }

    public static CrashLogModel from(VerboseCrashReport verboseCrashReport, DongleModel dongleModel) {
        CrashLogModel crashLogModel = new CrashLogModel();
        crashLogModel.setTimestamp(getUTCDate(verboseCrashReport.getTimeStamp()));
        crashLogModel.setHwid(dongleModel.getHwid());
        crashLogModel.setFirmware(VersionFormatter.formatLong(dongleModel.getMainAppVersion()));
        crashLogModel.setRawData(Base64.encodeToString(verboseCrashReport.getRawData(), 2));
        crashLogModel.setReportType(REPORT_TYPE_CRASH_VERBOSE);
        crashLogModel.setSyncNeeded(true);
        return crashLogModel;
    }

    public static CrashLogModel from(CrashReport crashReport, DongleModel dongleModel, boolean z) {
        CrashLogModel crashLogModel = new CrashLogModel();
        crashLogModel.setTimestamp(getUTCDate(crashReport.getTimeStamp()));
        crashLogModel.setHwid(dongleModel.getHwid());
        crashLogModel.setFirmware(VersionFormatter.formatLong(dongleModel.getMainAppVersion()));
        crashLogModel.setRawData(Base64.encodeToString(crashReport.getRawData(), 2));
        crashLogModel.setReportType(z ? "crash" : REPORT_TYPE_CRASH_INVALID);
        crashLogModel.setSyncNeeded(true);
        return crashLogModel;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "CrashLogModel{timestamp='" + this.timestamp + "', reportType='" + this.reportType + "', rawData='" + this.rawData + "', hwid='" + this.hwid + "', firmware='" + this.firmware + "', syncNeeded=" + this.syncNeeded + '}';
    }

    public static List<CrashLogModel> getNotSyncedData() {
        return new Select().from(CrashLogModel.class).where("syncNeeded = ?", true).and("hwid is not null").and("firmware is not null").execute();
    }
}
