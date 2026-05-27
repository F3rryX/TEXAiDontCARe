package com.texa.careapp.fcm;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.annotations.Expose;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FcmAlarmNotification {
    public static String ALARM_STATE_ACTIVE = "ACTIVE";
    public static String ALARM_STATE_IDLE = "IDLE";
    public static String ALARM_STATE_WARNING = "WARNING";

    @Expose
    private String alarm_state;

    @Expose
    private String alarm_type;

    @Expose
    private String alarm_value;

    @Expose
    private String message;

    @Expose
    private String notification_type;

    @Expose
    private String send_time;

    @Expose
    private String user_id;

    @Expose
    private String vehicle_id;

    public String getNotification_type() {
        return this.notification_type;
    }

    public void setNotification_type(String str) {
        this.notification_type = str;
    }

    public String getSend_time() {
        return this.send_time;
    }

    public void setSend_time(String str) {
        this.send_time = str;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public String getVehicle_id() {
        return this.vehicle_id;
    }

    public void setVehicle_id(String str) {
        this.vehicle_id = str;
    }

    public String getAlarm_type() {
        return this.alarm_type;
    }

    public void setAlarm_type(String str) {
        this.alarm_type = str;
    }

    public String getAlarm_state() {
        return this.alarm_state;
    }

    public void setAlarm_state(String str) {
        this.alarm_state = str;
    }

    public String getAlarm_value() {
        return this.alarm_value;
    }

    public void setAlarm_value(String str) {
        this.alarm_value = str;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public FcmAlarmNotification(Map<String, String> map) {
        JsonElement jsonElement = new JsonParser().parse(map.get(FcmConstants.NOTIFICATION_OBJ));
        this.notification_type = map.get(FcmConstants.NOTIFICATION_TYPE);
        this.user_id = jsonElement.getAsJsonObject().get(FcmConstants.NOTIFICATION_USER_ID).getAsString();
        this.vehicle_id = jsonElement.getAsJsonObject().get("vehicle_id").getAsString();
        this.alarm_type = jsonElement.getAsJsonObject().get(FcmConstants.NOTIFICATION_ALLARM_TYPE).getAsString();
        this.alarm_state = jsonElement.getAsJsonObject().get(FcmConstants.NOTIFICATION_ALLARM_STATE).getAsString();
    }
}
