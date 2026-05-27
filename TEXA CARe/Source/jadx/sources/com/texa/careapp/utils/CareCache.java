package com.texa.careapp.utils;

import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;

/* JADX INFO: loaded from: classes2.dex */
public class CareCache {
    private static final int APP_VERSION = 1;
    private static final String BATTERY_CHARGE_LEVEL_KEY = "battery-charge-level";
    public static final String BATTERY_LEVEL_KEY = "BATTERY_LEVEL";
    private static final int DISK_MAX_SIZE = 1073741824;
    private static final int RAM_MAX_SIZE = 52428800;
    private static final String TAG = "CareCache";
    private DongleDataManager mDongleDataManager;
    private Gson mGson = new Gson();
    private SharedPreferences mPreferences;

    public CareCache(SharedPreferences sharedPreferences, DongleDataManager dongleDataManager) {
        this.mPreferences = sharedPreferences;
        this.mDongleDataManager = dongleDataManager;
    }

    public void putBatteryLevel(BatteryLevel batteryLevel) {
        this.mPreferences.edit().putString(BATTERY_LEVEL_KEY, batteryLevel.toString()).apply();
    }

    public BatteryLevel getBatteryLevel() {
        String string = this.mPreferences.getString(BATTERY_LEVEL_KEY, null);
        if (string != null) {
            return BatteryLevel.valueOf(string);
        }
        return BatteryLevel.GREEN;
    }

    public DongleModel getDongleModel() {
        return this.mDongleDataManager.getDongleModel();
    }
}
