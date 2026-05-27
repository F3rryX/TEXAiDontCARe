package com.texa.careapp.app.diagnosis.tab.chart;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParametersChartItem {
    public abstract int getChartType();

    public abstract int getLayoutPriority();

    public abstract int getLimitItem();

    public abstract int getMaxValue();

    public abstract int getPriority();

    public abstract int getProblemValue();

    public abstract String getReadableValue();

    public abstract String getTitle();

    public abstract String getUnit();

    public abstract int getValue();

    public abstract int getWarningValue();

    public abstract boolean isHigherThreshold();

    public int getNormalColor(Context context) {
        return Utils.getColorResource(context, R.color.chart_normal_color);
    }

    public int getWarningColor(Context context) {
        return Utils.getColorResource(context, R.color.chart_warning_color);
    }

    public int getProblemColor(Context context) {
        return Utils.getColorResource(context, R.color.chart_problem_color);
    }
}
