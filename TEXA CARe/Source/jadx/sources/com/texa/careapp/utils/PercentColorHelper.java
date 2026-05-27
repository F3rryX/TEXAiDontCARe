package com.texa.careapp.utils;

import android.content.Context;
import android.util.Log;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class PercentColorHelper {
    private static final String TAG = "PercentColorHelper";
    public static final float THRESHOLD_OK_FLOAT = 0.5f;
    public static final int THRESHOLD_OK_INT = 50;
    public static final float THRESHOLD_WARNING_FLOAT = 0.25f;
    public static final int THRESHOLD_WARNING_INT = 25;
    private final int mErrorColor;
    private final int mOkColor;
    private final int mWarningColor;

    public PercentColorHelper(Context context) {
        this.mOkColor = Utils.getColorResource(context, R.color.ok);
        this.mWarningColor = Utils.getColorResource(context, R.color.warning);
        this.mErrorColor = Utils.getColorResource(context, R.color.error);
    }

    public int getColor(int i) {
        if (i < 0 || i > 100) {
            Log.d(TAG, "invalid int percent: " + i);
        }
        if (i >= 50) {
            return this.mOkColor;
        }
        if (i >= 25) {
            return this.mWarningColor;
        }
        return this.mErrorColor;
    }

    public int getColor(float f) {
        if (f < 0.0f || f > 1.0f) {
            Log.d(TAG, "invalid float percent: " + f);
        }
        if (f >= 0.5f) {
            return this.mOkColor;
        }
        if (f >= 0.25f) {
            return this.mWarningColor;
        }
        return this.mErrorColor;
    }

    public int getErrorColor() {
        return this.mErrorColor;
    }

    public int getWarningColor() {
        return this.mWarningColor;
    }

    public int getOkColor() {
        return this.mOkColor;
    }
}
