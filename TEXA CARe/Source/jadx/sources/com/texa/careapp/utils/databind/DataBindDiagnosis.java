package com.texa.careapp.utils.databind;

import android.content.Context;
import android.util.TypedValue;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DataBindDiagnosis {
    public float height;
    public float width;

    public DataBindDiagnosis(Context context) {
        this.height = TypedValue.applyDimension(1, 525.0f, context.getResources().getDisplayMetrics());
        this.width = TypedValue.applyDimension(1, 350.0f, context.getResources().getDisplayMetrics());
    }

    public DataBindDiagnosis(int i, Context context) {
        float f = i / 7.0f;
        this.height = 6.0f * f;
        this.width = f * 4.0f;
    }

    public DataBindDiagnosis(int i, int i2, Context context) {
        float fMin = Math.min(i / 7, i2 / 4);
        this.height = 6.0f * fMin;
        this.width = fMin * 4.0f;
    }

    public float getHeight() {
        return this.height;
    }

    public float getWidth() {
        return this.width;
    }

    public float getSquareMeasure() {
        float width = getWidth() / 4.0f;
        Timber.d("square Base Measure %s", Float.valueOf(width));
        return width;
    }

    public float getMeasureUnit(float f) {
        float squareMeasure = getSquareMeasure() * f;
        Timber.d("measure: %s * %s = %s", Float.valueOf(getSquareMeasure()), Float.valueOf(f), Float.valueOf(squareMeasure));
        return squareMeasure;
    }
}
