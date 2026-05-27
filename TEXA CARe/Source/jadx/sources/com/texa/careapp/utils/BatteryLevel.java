package com.texa.careapp.utils;

import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public enum BatteryLevel {
    RED(R.string.battery_level_error, com.texa.careapp.R.drawable.ic_battery_red, R.color.error, 25),
    YELLOW(R.string.battery_level_warning, com.texa.careapp.R.drawable.ic_battery_orange, R.color.warning, 50),
    GREEN(R.string.battery_level_ok, com.texa.careapp.R.drawable.ic_battery_green, R.color.ok, 100);

    private int mColorRes;
    private final int mDrawableRes;
    private final int mPercent;
    private int mStringRes;

    BatteryLevel(int i, int i2, int i3, int i4) {
        this.mStringRes = i;
        this.mDrawableRes = i2;
        this.mColorRes = i3;
        this.mPercent = i4;
    }

    public int getDrawableRes() {
        return this.mDrawableRes;
    }

    public int getPercent() {
        return this.mPercent;
    }

    public int getColorRes() {
        return this.mColorRes;
    }

    public int getStringRes() {
        return this.mStringRes;
    }
}
