package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.model.VehicleParam;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterDaysNextService extends ParametersNoChart {
    private static final String TAG = "ParameterDaysNextService";
    private final Context mContext;
    private final String mLabel;
    private Double mValue;

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
        return 730;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return "";
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return false;
    }

    public ParameterDaysNextService(Context context) {
        this.mContext = context;
        this.mLabel = context.getString(R.string.days_next_service);
    }

    public void update(VehicleParam vehicleParam) {
        this.mValue = vehicleParam.getValueNumeric();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        Double d = this.mValue;
        return d != null ? this.mContext.getString(R.string.remaining_days, Integer.valueOf(d.intValue())) : "";
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        Double d = this.mValue;
        if (d != null) {
            return d.intValue();
        }
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.DAYS_NEXT_SERVICE.getId()));
    }
}
