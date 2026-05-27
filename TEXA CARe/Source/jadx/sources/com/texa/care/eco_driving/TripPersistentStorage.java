package com.texa.care.eco_driving;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class TripPersistentStorage {
    private static final long INVALID_LONG_DATE = -1;
    private static final String LAST_TRIP_ID = "LAST_TRIP_ID";
    private static final String TEMP_STOP_DATE = "TEMP_STOP_DATE";
    private static final String TEMP_STOP_ODO = "TEMP_STOP_ODO";
    private static final String TRIP_NUMBER_LABEL = "TRIP_NUMBER";
    private static final String TRIP_START_DATE = "TRIP_START_DATE";
    private Context context;

    TripPersistentStorage(Context context) {
        this.context = context;
    }

    String getTripID() {
        return PreferenceManager.getDefaultSharedPreferences(this.context).getString("TRIP_NUMBER", null);
    }

    void setTripID(String str) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        if (str == null) {
            defaultSharedPreferences.edit().remove("TRIP_NUMBER").apply();
        } else {
            defaultSharedPreferences.edit().putString("TRIP_NUMBER", str).apply();
        }
    }

    String getLastTripID() {
        return PreferenceManager.getDefaultSharedPreferences(this.context).getString(LAST_TRIP_ID, null);
    }

    void setLastTripID(String str) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        if (str == null) {
            defaultSharedPreferences.edit().remove(LAST_TRIP_ID).apply();
        } else {
            defaultSharedPreferences.edit().putString(LAST_TRIP_ID, str).apply();
        }
    }

    Date getTempStopDate() {
        long j = PreferenceManager.getDefaultSharedPreferences(this.context).getLong(TEMP_STOP_DATE, -1L);
        if (j != -1) {
            return new Date(j);
        }
        return null;
    }

    void setTempStopDate(Date date) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        if (date == null) {
            editorEdit.remove(TEMP_STOP_DATE);
        } else {
            editorEdit.putLong(TEMP_STOP_DATE, date.getTime());
        }
        editorEdit.apply();
    }

    float getTempStopOdo() {
        return PreferenceManager.getDefaultSharedPreferences(this.context).getFloat(TEMP_STOP_ODO, -1.0f);
    }

    void setTempStopOdo(float f) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        if (f == -1.0f) {
            editorEdit.remove(TEMP_STOP_ODO);
        } else {
            editorEdit.putFloat(TEMP_STOP_ODO, f);
        }
        editorEdit.apply();
    }

    void setTripStartDate(Date date) {
        SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        if (date == null) {
            editorEdit.remove(TRIP_START_DATE);
        } else {
            editorEdit.putLong(TRIP_START_DATE, date.getTime());
        }
        editorEdit.apply();
    }

    Date getTripStartDate() {
        long j = PreferenceManager.getDefaultSharedPreferences(this.context).getLong(TRIP_START_DATE, -1L);
        if (j != -1) {
            return new Date(j);
        }
        return null;
    }
}
