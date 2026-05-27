package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = ServerLogModel.TABLE_LOG_DATA)
public class ServerLogModel extends Model {
    public static final String COLUMN_SYNC_NEEDED = "sync_needed";
    private static final int LOG_V = 1;
    public static final String TABLE_LOG_DATA = "LogDataForServer";

    @Column
    @Expose
    private String appV;

    @Column
    @Expose
    private String deviceId;

    @Column
    @Expose
    private String deviceM;

    @Column
    @Expose
    private int eventT;

    @Column
    @Expose
    private String fwV;

    @Column
    @Expose
    private String hwid;

    @Column
    @Expose
    private String note;

    @Column
    @Expose
    private String os;

    @Column
    @Expose
    private int rsl;

    @Column
    @Expose
    private Snapshot snapshot;

    @Column
    @Expose
    private int status;

    @Column
    @Expose
    private long tst;

    @Column
    @Expose
    private String userId;

    @Column
    @Expose
    private int logV = 1;

    @Column(name = "sync_needed")
    private boolean syncNeeded = true;

    public static class LogNote {
        public static String BLUETOOTH_DISABLED = "Bluetooth is disabled";
        public static String BLUETOOTH_ENABLED = "Bluetooth is enabled";
        public static String CARE_CONFIGURATION_LOADED = "new configuration loaded";
        public static String CARE_CONNECTED = "connected";
        public static String CARE_CONNECTING = "connectiong";
        public static String CARE_CONNECTION_LOST = "connection lost";
        public static String CARE_DISCONNECTED = "disconnected";
        public static String CARE_FIRST_CONFIGURATION = "first configuration";
        public static String CARE_RECONNECTING = "reconnecting";
        public static String CARE_SCANNING = "scanning";
        public static String CRASH_DETECTED_WITHOUT_ACCEPT_SERVICE = "SOS service not accepted";
        public static String CRASH_DETECTED_WITHOUT_ACTIVE_SERVICE = "SOS service not activated";
        public static String CRASH_DETECTED_WITHOUT_PHONE_NUMBER = "phone number missing/not validated";
        public static String CRASH_DETECTED_WITHOUT_PURCHASED_SERVICE = "SOS service not purchased";
        public static String GET_GPS_DISABLED = "GPS is disabled";
        public static String IMPACT_DETECTED_BY_SMARTPHONE_NOT_SUPPORTED = "phone impact detection NOT available";
        public static String LAUNCH_SERVICE_ON_BOOT = "system boot";
        public static String OTHER_CRASH_DETECTED = "emergency countdown already fired";
        public static String PIN_ERROR = "PIN error";
        public static String SERVICE_DESTROYED = "service destroyed";
        public static String SOS_CALL_TICKET_FAILED = "SOS request failed";
        public static String SOS_COUNTDOWN_STOPPED = "SOS countdown stopped by user";
        public static String START_ON_SERVICE_LAUNCH = "service launched";
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public long getTst() {
        return this.tst;
    }

    public void setTst(long j) {
        this.tst = j;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public int getLogV() {
        return this.logV;
    }

    public void setLogV(int i) {
        this.logV = i;
    }

    public int getEventT() {
        return this.eventT;
    }

    public void setEventT(int i) {
        this.eventT = i;
    }

    public int getRsl() {
        return this.rsl;
    }

    public void setRsl(int i) {
        this.rsl = i;
    }

    public String getAppV() {
        return this.appV;
    }

    public void setAppV(String str) {
        this.appV = str;
    }

    public String getFwV() {
        return this.fwV;
    }

    public void setFwV(String str) {
        this.fwV = str;
    }

    public String getHwid() {
        return this.hwid;
    }

    public void setHwid(String str) {
        this.hwid = str;
    }

    public String getOs() {
        return this.os;
    }

    public void setOs(String str) {
        this.os = str;
    }

    public String getDeviceM() {
        return this.deviceM;
    }

    public void setDeviceM(String str) {
        this.deviceM = str;
    }

    public Snapshot getSnapshot() {
        return this.snapshot;
    }

    public void setSnapshot(Snapshot snapshot) {
        this.snapshot = snapshot;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String str) {
        this.note = str;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public ServerLogModel() {
    }

    public ServerLogModel(LogEvent logEvent, ResultForLog resultForLog, String str) {
        this.eventT = logEvent.getValue();
        this.note = str;
        this.rsl = resultForLog.getValue();
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return Utils.buildGsonInstance().toJson(this);
    }

    public static class Snapshot {

        @Expose
        private int battPct;

        @Expose
        private boolean bt;

        @Expose
        private boolean btConn;

        @Expose
        private boolean gps;

        @Expose
        private boolean sim;

        @Expose
        private boolean simValid;

        @Expose
        private boolean wan;

        @Expose
        private boolean wanReach;

        protected boolean canEqual(Object obj) {
            return obj instanceof Snapshot;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Snapshot)) {
                return false;
            }
            Snapshot snapshot = (Snapshot) obj;
            return snapshot.canEqual(this) && isBt() == snapshot.isBt() && isBtConn() == snapshot.isBtConn() && isGps() == snapshot.isGps() && isWan() == snapshot.isWan() && isWanReach() == snapshot.isWanReach() && isSim() == snapshot.isSim() && isSimValid() == snapshot.isSimValid() && getBattPct() == snapshot.getBattPct();
        }

        public int hashCode() {
            return (((((((((((((((isBt() ? 79 : 97) + 59) * 59) + (isBtConn() ? 79 : 97)) * 59) + (isGps() ? 79 : 97)) * 59) + (isWan() ? 79 : 97)) * 59) + (isWanReach() ? 79 : 97)) * 59) + (isSim() ? 79 : 97)) * 59) + (isSimValid() ? 79 : 97)) * 59) + getBattPct();
        }

        public void setBattPct(int i) {
            this.battPct = i;
        }

        public void setBt(boolean z) {
            this.bt = z;
        }

        public void setBtConn(boolean z) {
            this.btConn = z;
        }

        public void setGps(boolean z) {
            this.gps = z;
        }

        public void setSim(boolean z) {
            this.sim = z;
        }

        public void setSimValid(boolean z) {
            this.simValid = z;
        }

        public void setWan(boolean z) {
            this.wan = z;
        }

        public void setWanReach(boolean z) {
            this.wanReach = z;
        }

        public String toString() {
            return "ServerLogModel.Snapshot(bt=" + isBt() + ", btConn=" + isBtConn() + ", gps=" + isGps() + ", wan=" + isWan() + ", wanReach=" + isWanReach() + ", sim=" + isSim() + ", simValid=" + isSimValid() + ", battPct=" + getBattPct() + ")";
        }

        public boolean isBt() {
            return this.bt;
        }

        public boolean isBtConn() {
            return this.btConn;
        }

        public boolean isGps() {
            return this.gps;
        }

        public boolean isWan() {
            return this.wan;
        }

        public boolean isWanReach() {
            return this.wanReach;
        }

        public boolean isSim() {
            return this.sim;
        }

        public boolean isSimValid() {
            return this.simValid;
        }

        public int getBattPct() {
            return this.battPct;
        }
    }

    public enum ResultForLog {
        FAILED(0),
        SUCCESSFULL(1),
        UNDEFINED(2);

        private int value;

        public int getValue() {
            return this.value;
        }

        ResultForLog(int i) {
            this.value = i;
        }
    }

    public enum LogEvent {
        UNDEFINED(0),
        PARKING_LOC(1),
        IMPACT_DET(2),
        CARE_CONN(3),
        CARE_DISCONN(4),
        CARE_NOT_CONF(5),
        USER_INTERATION(6),
        SOS_LOCATION_ACQUISITION(7),
        IMPACT_DETECTED_BY_PHONE(8),
        IMPACT_DETECTED_BY_PHONE_DATA_DUMP(10),
        MANUAL_SOS(11),
        IMPACT_DETECTED_DATA_DUMP(12),
        CARE_STATUS(13),
        INVALID_ODOMETER(14),
        CARE_RECON(15),
        LAMPS_ON_DETECTED(16),
        DTCS_DETECTED(17);

        private int value;

        public int getValue() {
            return this.value;
        }

        LogEvent(int i) {
            this.value = i;
        }
    }
}
