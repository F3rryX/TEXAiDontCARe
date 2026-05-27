package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.model.VehicleParam;
import com.texa.carelib.diagresources.DataID;
import com.texa.carelib.diagresources.EnumValue;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterOilLevelStatus extends ParametersNoChart {
    private static final String TAG = "ParameterOilLevelStatus";
    private final String mLabel;
    private String mStatusActiveLabel;
    private String mStatusNotActiveLabel;
    private long mValueStatus;

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

    public ParameterOilLevelStatus(Context context) {
        this.mLabel = context.getString(R.string.oil_level_status);
        this.mStatusActiveLabel = context.getString(R.string.level_not_ok);
        this.mStatusNotActiveLabel = context.getString(R.string.level_ok);
    }

    public void update(VehicleParam vehicleParam) {
        this.mValueStatus = vehicleParam.getValueStatus();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        if (this.mValueStatus == EnumValue.ACTIVE.getId()) {
            return this.mStatusActiveLabel;
        }
        return this.mStatusNotActiveLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        return this.mValueStatus == EnumValue.ACTIVE.getId() ? 20 : 100;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Enum.OIL_LEVEL_STATUS.getId()));
    }
}
