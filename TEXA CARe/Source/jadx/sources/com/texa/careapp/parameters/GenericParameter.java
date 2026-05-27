package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.utils.MeasureUnit;

/* JADX INFO: loaded from: classes2.dex */
public class GenericParameter extends ParametersNoChart {
    private final Context mContext;
    private final long mDataId;
    private String mLabel;
    private int mPriority;
    private String mUnit;
    private String mValue;

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getChartType() {
        return 3;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLayoutPriority() {
        return 1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLimitItem() {
        return 1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getMaxValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return false;
    }

    public GenericParameter(Context context, long j, String str) {
        this.mContext = context;
        this.mDataId = j;
        this.mValue = str;
        this.mPriority = Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(j));
        this.mLabel = context.getString(Constants.DATAID_LABELS.get(j).intValue());
        MeasureUnit measureUnit = Constants.DATAID_MEASURE_UNIT.get(j);
        if (measureUnit != null) {
            this.mUnit = measureUnit.getStringRes() != 0 ? context.getString(measureUnit.getStringRes()) : "";
        }
    }

    public String toString() {
        return "GenericParameter{mDataId=" + this.mDataId + ", mUnit='" + this.mUnit + "', mValue='" + this.mValue + "', mPriority=" + this.mPriority + ", mLabel='" + this.mLabel + "'}";
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        return this.mValue;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return this.mUnit;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return this.mPriority;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mDataId == ((GenericParameter) obj).mDataId;
    }

    public int hashCode() {
        long j = this.mDataId;
        return (int) (j ^ (j >>> 32));
    }
}
