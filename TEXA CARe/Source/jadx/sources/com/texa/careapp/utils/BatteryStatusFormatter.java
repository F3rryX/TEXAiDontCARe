package com.texa.careapp.utils;

import android.content.Context;
import android.util.Log;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryStatusFormatter {
    private static final String TAG = "BatteryStatusFormatter";
    private String[] batteryLabels;
    private int mErrorColor;
    private int mOkColor;
    private int mWarningColor;

    public BatteryStatusFormatter(Context context) {
        this.batteryLabels = context.getResources().getStringArray(R.array.battery_circle_indicator_labels);
        this.mOkColor = Utils.getColorResource(context, R.color.ok);
        this.mWarningColor = Utils.getColorResource(context, R.color.warning);
        this.mErrorColor = Utils.getColorResource(context, R.color.error);
    }

    public String format(int i) {
        float f = i / 100.0f;
        Log.d(TAG, "ratio:" + f);
        if (f >= 0.5f) {
            return this.batteryLabels[0];
        }
        if (f >= 0.25f) {
            return this.batteryLabels[1];
        }
        return this.batteryLabels[2];
    }

    public int getBatteryDrawable(int i) {
        Log.d(TAG, "ratio:" + (i / 100.0f));
        return com.texa.careapp.R.drawable.ic_battery_green;
    }

    public int getColor(int i) {
        float f = i / 100.0f;
        Log.d(TAG, "ratio:" + f);
        if (f >= 0.5f) {
            return this.mOkColor;
        }
        if (f >= 0.25f) {
            return this.mWarningColor;
        }
        return this.mErrorColor;
    }
}
