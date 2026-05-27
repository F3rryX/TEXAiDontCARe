package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.model.VehicleParamHistoryModel;
import com.texa.carelib.diagresources.DataID;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterFuelLevel extends ParametersChartLine {
    private static final String TAG = "ParameterFuelLevel";
    private List<VehicleParamHistoryModel> historyValues;
    private String mAbsoluteFormattedValue;
    private Double mAbsoluteValue;
    private String mLabel;
    private int mLayoutPriority;
    private Double mRelativeValue;
    private String mRelativeValueFormatted;
    private String mUnitLiter;
    private String mUnitPercent;

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getChartType() {
        return 1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLimitItem() {
        return 5;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public int getMinValue() {
        return -40;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return false;
    }

    public ParameterFuelLevel(Context context) {
        this.mLabel = context.getString(R.string.fuel_level);
        this.mUnitLiter = context.getString(R.string.unit_liter);
        this.mUnitPercent = context.getString(R.string.unit_percent);
    }

    public void update(VehicleParam vehicleParam) {
        if (vehicleParam.getDataId() == DataID.Parameter.FUEL_LEVEL_ABS.getId()) {
            this.mAbsoluteValue = vehicleParam.getValueNumeric();
            this.mAbsoluteFormattedValue = vehicleParam.getValueFormatted();
            this.historyValues = vehicleParam.getHistoryParam();
        } else if (vehicleParam.getDataId() == DataID.Parameter.FUEL_LEVEL_REL.getId()) {
            this.mRelativeValue = vehicleParam.getValueNumeric();
            this.mRelativeValueFormatted = vehicleParam.getValueFormatted();
            this.historyValues = vehicleParam.getHistoryParam();
        } else {
            throw new IllegalArgumentException("invalid dataId: " + vehicleParam.getDataId());
        }
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        String str = this.mAbsoluteFormattedValue;
        if (str != null) {
            return str;
        }
        String str2 = this.mRelativeValueFormatted;
        if (str2 != null) {
            return str2;
        }
        if (this.mAbsoluteValue != null) {
            return "" + this.mAbsoluteValue.intValue();
        }
        if (this.mRelativeValue == null) {
            return null;
        }
        return "" + this.mRelativeValue.intValue();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getValue() {
        Double d = this.mAbsoluteValue;
        if (d != null) {
            return d.intValue();
        }
        Double d2 = this.mRelativeValue;
        if (d2 != null) {
            return d2.intValue();
        }
        return -1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        if (this.mAbsoluteFormattedValue != null) {
            return this.mUnitLiter;
        }
        return this.mUnitPercent;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return this.mAbsoluteFormattedValue != null ? 15 : 20;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getMaxValue() {
        return this.mAbsoluteFormattedValue != null ? 90 : 100;
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
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.FUEL_LEVEL_REL.getId()));
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return this.mAbsoluteFormattedValue != null ? 5 : 10;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public List<VehicleParamHistoryModel> getHistory() {
        List<VehicleParamHistoryModel> list = this.historyValues;
        return list != null ? list : new ArrayList();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public List<VehicleParamHistoryModel> getMockHistory() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VehicleParamHistoryModel(25.0d));
        arrayList.add(new VehicleParamHistoryModel(59.0d));
        arrayList.add(new VehicleParamHistoryModel(30.0d));
        arrayList.add(new VehicleParamHistoryModel(60.0d));
        arrayList.add(new VehicleParamHistoryModel(70.0d));
        arrayList.add(new VehicleParamHistoryModel(10.0d));
        arrayList.add(new VehicleParamHistoryModel(25.0d));
        return arrayList;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public long getParameterType() {
        return DataID.Parameter.FUEL_LEVEL_ABS.getId();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public long getParameterTypeRelative() {
        return DataID.Parameter.FUEL_LEVEL_REL.getId();
    }
}
