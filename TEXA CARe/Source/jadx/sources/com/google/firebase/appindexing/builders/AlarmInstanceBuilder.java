package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.internal.zzae;
import java.util.Calendar;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class AlarmInstanceBuilder extends IndexableBuilder<AlarmInstanceBuilder> {
    public static final String DISMISSED = "Dismissed";
    public static final String FIRED = "Fired";
    public static final String MISSED = "Missed";
    public static final String SCHEDULED = "Scheduled";
    public static final String SNOOZED = "Snoozed";
    public static final String UNKNOWN = "Unknown";

    AlarmInstanceBuilder() {
        super("AlarmInstance");
    }

    public AlarmInstanceBuilder setAlarmStatus(String str) {
        if (FIRED.equals(str) || SNOOZED.equals(str) || "Missed".equals(str) || DISMISSED.equals(str) || SCHEDULED.equals(str) || "Unknown".equals(str)) {
            return put("alarmStatus", str);
        }
        String strValueOf = String.valueOf(str);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid alarm status ".concat(strValueOf) : new String("Invalid alarm status "));
    }

    public AlarmInstanceBuilder setScheduledTime(Calendar calendar) {
        return put("scheduledTime", zzae.zza(calendar));
    }
}
