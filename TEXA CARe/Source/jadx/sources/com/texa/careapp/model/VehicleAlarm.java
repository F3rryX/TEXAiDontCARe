package com.texa.careapp.model;

import com.google.firebase.messaging.Constants;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.utils.MeasureUnit;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleAlarm {
    private static final String TAG = "VehicleAlarm";

    @SerializedName(Constants.ScionAnalytics.MessageType.DATA_MESSAGE)
    @Expose
    private ArrayList<AlarmData> alarmDataList;

    @SerializedName("status")
    @Expose
    private AlarmStatus alarmStatus;

    @SerializedName("type")
    @Expose
    private AlarmType alarmType;

    @SerializedName("data_unit")
    @Expose
    private MeasureUnit measureUnit;

    @Expose
    private Date timestamp = new Date();

    @SerializedName("vehicle_id")
    @Expose
    private String vehicleId;

    public void setAlarmDataList(ArrayList<AlarmData> arrayList) {
        this.alarmDataList = arrayList;
    }

    public void setAlarmStatus(AlarmStatus alarmStatus) {
        this.alarmStatus = alarmStatus;
    }

    public void setAlarmType(AlarmType alarmType) {
        this.alarmType = alarmType;
    }

    public void setMeasureUnit(MeasureUnit measureUnit) {
        this.measureUnit = measureUnit;
    }

    public void setTimestamp(Date date) {
        this.timestamp = date;
    }

    public void setVehicleId(String str) {
        this.vehicleId = str;
    }

    public String toString() {
        return "VehicleAlarm(vehicleId=" + getVehicleId() + ", alarmType=" + getAlarmType() + ", alarmStatus=" + getAlarmStatus() + ", measureUnit=" + getMeasureUnit() + ", alarmDataList=" + getAlarmDataList() + ", timestamp=" + getTimestamp() + ")";
    }

    public String getVehicleId() {
        return this.vehicleId;
    }

    public AlarmType getAlarmType() {
        return this.alarmType;
    }

    public AlarmStatus getAlarmStatus() {
        return this.alarmStatus;
    }

    public MeasureUnit getMeasureUnit() {
        return this.measureUnit;
    }

    public ArrayList<AlarmData> getAlarmDataList() {
        return this.alarmDataList;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VehicleAlarm vehicleAlarm = (VehicleAlarm) obj;
        return this.vehicleId.equals(vehicleAlarm.vehicleId) && this.alarmType == vehicleAlarm.alarmType;
    }

    public int hashCode() {
        int iHashCode = this.vehicleId.hashCode();
        AlarmType alarmType = this.alarmType;
        return alarmType != null ? (iHashCode * 31) + alarmType.hashCode() : iHashCode * 31;
    }

    public void addAlarmData(AlarmData alarmData) {
        if (this.alarmDataList == null) {
            this.alarmDataList = new ArrayList<>();
        }
        this.alarmDataList.add(alarmData);
    }

    public static class AlarmData {

        @SerializedName("timestamp")
        @Expose
        private Date timestamp;

        @SerializedName("value")
        @Expose
        private float value;

        protected boolean canEqual(Object obj) {
            return obj instanceof AlarmData;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AlarmData)) {
                return false;
            }
            AlarmData alarmData = (AlarmData) obj;
            if (!alarmData.canEqual(this) || Float.compare(getValue(), alarmData.getValue()) != 0) {
                return false;
            }
            Date timestamp = getTimestamp();
            Date timestamp2 = alarmData.getTimestamp();
            return timestamp != null ? timestamp.equals(timestamp2) : timestamp2 == null;
        }

        public int hashCode() {
            int iFloatToIntBits = Float.floatToIntBits(getValue()) + 59;
            Date timestamp = getTimestamp();
            return (iFloatToIntBits * 59) + (timestamp == null ? 43 : timestamp.hashCode());
        }

        public void setTimestamp(Date date) {
            this.timestamp = date;
        }

        public void setValue(float f) {
            this.value = f;
        }

        public String toString() {
            return "VehicleAlarm.AlarmData(value=" + getValue() + ", timestamp=" + getTimestamp() + ")";
        }

        public float getValue() {
            return this.value;
        }

        public Date getTimestamp() {
            return this.timestamp;
        }

        public AlarmData() {
        }

        public AlarmData(float f) {
            this.timestamp = new Date();
            this.value = f;
        }
    }
}
