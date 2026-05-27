package com.google.firebase.appindexing.builders;

import com.texa.careapp.Constants;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AlarmBuilder extends IndexableBuilder<AlarmBuilder> {
    public static final String FRIDAY = "Friday";
    public static final String MONDAY = "Monday";
    public static final String SATURDAY = "Saturday";
    public static final String SUNDAY = "Sunday";
    public static final String THURSDAY = "Thursday";
    public static final String TUESDAY = "Tuesday";
    public static final String WEDNESDAY = "Wednesday";

    AlarmBuilder() {
        super("Alarm");
    }

    public AlarmBuilder setAlarmInstances(AlarmInstanceBuilder... alarmInstanceBuilderArr) {
        put("alarmInstances", alarmInstanceBuilderArr);
        return this;
    }

    public AlarmBuilder setDayOfWeek(String... strArr) {
        for (String str : strArr) {
            if (!SUNDAY.equals(str) && !MONDAY.equals(str) && !TUESDAY.equals(str) && !WEDNESDAY.equals(str) && !THURSDAY.equals(str) && !FRIDAY.equals(str) && !SATURDAY.equals(str)) {
                String strValueOf = String.valueOf(str);
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid weekday ".concat(strValueOf) : new String("Invalid weekday "));
            }
        }
        put("dayOfWeek", strArr);
        return this;
    }

    public AlarmBuilder setEnabled(boolean z) {
        put("enabled", z);
        return this;
    }

    public AlarmBuilder setIdentifier(String str) {
        put("identifier", str);
        return this;
    }

    public AlarmBuilder setMessage(String str) {
        put(Constants.GCM_EXTRA_MESSAGE, str);
        return this;
    }

    public AlarmBuilder setRingtone(String str) {
        put("ringtone", str);
        return this;
    }

    public AlarmBuilder setVibrate(boolean z) {
        put("vibrate", z);
        return this;
    }

    public AlarmBuilder setHour(int i) {
        if (i < 0 || i > 23) {
            throw new IllegalArgumentException("Invalid alarm hour");
        }
        put("hour", i);
        return this;
    }

    public AlarmBuilder setMinute(int i) {
        if (i < 0 || i > 59) {
            throw new IllegalArgumentException("Invalid alarm minute");
        }
        put("minute", i);
        return this;
    }
}
