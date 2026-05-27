package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.model.VehicleParam;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterAbsCngLevel extends ParametersNoChart {
    private static final String TAG = "ParameterAbsCngLevel";
    private String mLabel;
    private String mUnit;
    private String mValueFormatted;

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

    public ParameterAbsCngLevel(Context context) {
        this.mLabel = context.getString(R.string.abs_cng_level);
        this.mUnit = context.getString(R.string.unit_kg);
    }

    public void update(VehicleParam vehicleParam) {
        this.mValueFormatted = vehicleParam.getValueFormatted();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        String str = this.mValueFormatted;
        return str == null ? "" : str;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return this.mUnit;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.ABS_CNG_LEVEL.getId()));
    }
}
