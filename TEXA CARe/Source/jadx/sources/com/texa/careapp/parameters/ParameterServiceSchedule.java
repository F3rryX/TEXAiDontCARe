package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.utils.ScheduleHelper;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterServiceSchedule extends ParametersNoChart {
    private static final String TAG = "ParameterServiceSchedule";
    private Context mContext;
    private final String mLabel;
    private ScheduleHelper.ServiceScheduleInfo mServiceInfo;

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
        return 100;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return -1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
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

    public ParameterServiceSchedule(Context context) {
        this.mContext = context;
        this.mLabel = context.getString(R.string.service);
    }

    public void update(ScheduleHelper.ServiceScheduleInfo serviceScheduleInfo) {
        this.mServiceInfo = serviceScheduleInfo;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        return this.mServiceInfo.value;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        ScheduleHelper.ServiceScheduleInfo serviceScheduleInfo = this.mServiceInfo;
        if (serviceScheduleInfo == null) {
            return 0;
        }
        if (serviceScheduleInfo.percent <= 0) {
            return 100;
        }
        return this.mServiceInfo.percent;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return this.mServiceInfo.unit.getStringRes() != 0 ? this.mContext.getString(this.mServiceInfo.unit.getStringRes()) : "";
    }
}
