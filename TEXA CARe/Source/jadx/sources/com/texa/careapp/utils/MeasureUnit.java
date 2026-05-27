package com.texa.careapp.utils;

import com.texa.care.R;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public enum MeasureUnit {
    LITER(R.string.unit_liter, "L"),
    DAYS(R.string.unit_days, "DAY"),
    PERCENT(R.string.unit_percent, Constants.UNIT_PERCENT_KEY),
    RPM(R.string.unit_rpm, Constants.UNIT_RPM_KEY),
    DISTANCE_KILOMETER(R.string.unit_km, Constants.UNIT_KILOMETER_KEY),
    SPEED_KHM(R.string.unit_speed_km, Constants.UNIT_SPEED_KMH_KEY),
    VOLTAGE(R.string.unit_volt, "V"),
    CELSIUS(R.string.unit_celsius, Constants.UNIT_CELSIUS_KEY),
    PRESSURE_MBAR(R.string.unit_millibar, Constants.UNIT_PRESSURE_MBAR),
    GRAMS_SEC(R.string.unit_gram_sec, "GRAM_SEC"),
    KPA(R.string.unit_kpa, "KPA");

    private String mServerCode;
    public int stringRes;

    MeasureUnit(int i, String str) {
        this.stringRes = i;
        this.mServerCode = str;
    }

    public String getServerCode() {
        return this.mServerCode;
    }

    public int getStringRes() {
        return this.stringRes;
    }
}
