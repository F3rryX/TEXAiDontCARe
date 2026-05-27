package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.model.VehicleParam;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterOilLevel extends ParametersNoChart {
    private static final String TAG = "ParameterOilLevel";
    private String mAbsoluteFormattedValue;
    private Double mAbsoluteValue;
    private String mLabel;
    private Double mRelativeValue;
    private String mRelativeValueFormatted;
    private String mUnitLiter;
    private String mUnitPercent;

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

    public ParameterOilLevel(Context context) {
        this.mLabel = context.getString(R.string.oil_level);
        this.mUnitLiter = context.getString(R.string.unit_liter);
        this.mUnitPercent = context.getString(R.string.unit_percent);
    }

    public void update(VehicleParam vehicleParam) {
        long dataId = vehicleParam.getDataId();
        if (dataId == DataID.Parameter.OIL_LEVEL_ABS.getId()) {
            this.mAbsoluteValue = vehicleParam.getValueNumeric();
            this.mAbsoluteFormattedValue = vehicleParam.getValueFormatted();
        } else if (dataId == DataID.Parameter.OIL_LEVEL_REL.getId()) {
            this.mRelativeValue = vehicleParam.getValueNumeric();
            this.mRelativeValueFormatted = vehicleParam.getValueFormatted();
        } else {
            throw new IllegalArgumentException("invalid dataId: " + dataId);
        }
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        String str = this.mAbsoluteFormattedValue;
        return str != null ? str : this.mRelativeValueFormatted;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        Double d = this.mAbsoluteValue;
        return d != null ? d.intValue() : this.mRelativeValue.intValue();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        if (this.mAbsoluteFormattedValue != null) {
            return this.mUnitLiter;
        }
        return this.mUnitPercent;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.OIL_LEVEL_REL.getId()));
    }
}
