package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.model.VehicleParamHistoryModel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterBatteryVoltage extends ParametersChartLine {
    public static final long BATTERY_VOLTAGE_LEVEL = 1234567890;
    private List<VehicleParamHistoryModel> historyValues;
    private String mFormattedValue;
    private final String mLabel;
    private int mLayoutPriority;
    private Double mNumericValue;
    private final String mUnit;

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getChartType() {
        return 1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLimitItem() {
        return 6;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getMaxValue() {
        return 20;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public int getMinValue() {
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public long getParameterType() {
        return BATTERY_VOLTAGE_LEVEL;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public long getParameterTypeRelative() {
        return -1L;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return 10;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return 12;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return false;
    }

    public ParameterBatteryVoltage(Context context) {
        this.mLabel = context.getString(R.string.battery_status);
        this.mUnit = context.getString(R.string.unit_volt);
    }

    public void update(VehicleParam vehicleParam) {
        this.mNumericValue = vehicleParam.getValueNumeric();
        this.mFormattedValue = "" + vehicleParam.getValueNumeric().floatValue();
        this.historyValues = vehicleParam.getHistoryParam();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        String str = this.mFormattedValue;
        return str != null ? str : "-";
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        Double d = this.mNumericValue;
        if (d != null) {
            return d.intValue();
        }
        return 0;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return this.mUnit;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLayoutPriority() {
        return this.mLayoutPriority;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public void setLayoutPriority(int i) {
        this.mLayoutPriority = i;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(BATTERY_VOLTAGE_LEVEL));
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public List<VehicleParamHistoryModel> getHistory() {
        List<VehicleParamHistoryModel> list = this.historyValues;
        return list != null ? list : new ArrayList();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public List<VehicleParamHistoryModel> getMockHistory() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VehicleParamHistoryModel(2.0d));
        arrayList.add(new VehicleParamHistoryModel(8.0d));
        arrayList.add(new VehicleParamHistoryModel(6.0d));
        arrayList.add(new VehicleParamHistoryModel(14.0d));
        arrayList.add(new VehicleParamHistoryModel(12.0d));
        arrayList.add(new VehicleParamHistoryModel(3.0d));
        arrayList.add(new VehicleParamHistoryModel(9.0d));
        arrayList.add(new VehicleParamHistoryModel(1.0d));
        arrayList.add(new VehicleParamHistoryModel(7.0d));
        arrayList.add(new VehicleParamHistoryModel(10.0d));
        return arrayList;
    }
}
