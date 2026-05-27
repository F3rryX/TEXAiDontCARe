package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterEngineRpm extends ParametersChartItem {
    private static final String TAG = "ParameterEngineRpm";
    private Double mAbsoluteValue;
    private final Communication mCommunication;
    private String mLabel;
    private int mPriority = Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()));
    private String mUnit;
    private String mValueFormatted;

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getChartType() {
        return 2;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLayoutPriority() {
        return 2;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLimitItem() {
        return 1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getMaxValue() {
        return 7000;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return 5000;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return 5000;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return true;
    }

    public ParameterEngineRpm(Context context, Communication communication) {
        this.mCommunication = communication;
        this.mLabel = context.getString(R.string.engine_rpm);
        this.mUnit = context.getString(R.string.unit_rpm);
    }

    public void update(VehicleParam vehicleParam) {
        this.mAbsoluteValue = vehicleParam.getValueNumeric();
        this.mValueFormatted = vehicleParam.getValueFormatted();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        return isConnected() ? this.mValueFormatted : "0";
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return this.mUnit;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        if (!isConnected()) {
            return 0;
        }
        Double d = this.mAbsoluteValue;
        if (d != null) {
            return d.intValue();
        }
        return -1;
    }

    private boolean isConnected() {
        return Utils.isCareConnected(this.mCommunication);
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return this.mPriority;
    }
}
