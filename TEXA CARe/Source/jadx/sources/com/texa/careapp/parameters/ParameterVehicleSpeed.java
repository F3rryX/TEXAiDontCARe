package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartPie;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterVehicleSpeed extends ParametersChartPie {
    private static final String TAG = "ParameterVehicleSpeed";
    private Double mAbsoluteValue;
    private final Communication mCommunication;
    private String mLabel;
    private int mPriority = Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()));
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
        return 200;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return 130;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return 130;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return true;
    }

    public ParameterVehicleSpeed(Context context, Communication communication) {
        this.mCommunication = communication;
        this.mLabel = context.getString(R.string.vehicle_speed);
        this.mUnit = context.getString(R.string.unit_speed_km);
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
        return !isConnected() ? "0" : this.mValueFormatted;
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
