package com.texa.careapp.parameters;

import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.model.VehicleParamHistoryModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.diagresources.DataID;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterEngineTemperature extends ParametersChartLine {
    public static final int PROBLEM_LIMIT = 111;
    private static final String TAG = "ParameterEngineTemperature";
    public static final int WARNING_LIMIT = 97;
    private List<VehicleParamHistoryModel> historyValues;
    private String mAbsoluteFormattedValue;
    private Double mAbsoluteValue;
    private final Communication mCommunication;
    Context mContext;
    private String mLabel;
    private int mLayoutPriority;
    private int mPriority = Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()));
    private String mUnitCelsius;

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getChartType() {
        return 1;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getLimitItem() {
        return 5;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getMaxValue() {
        return 150;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public int getMinValue() {
        return -40;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public long getParameterTypeRelative() {
        return -1L;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getProblemValue() {
        return 111;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getWarningValue() {
        return 97;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public boolean isHigherThreshold() {
        return true;
    }

    public ParameterEngineTemperature(Context context, Communication communication) {
        this.mContext = context;
        this.mCommunication = communication;
        this.mLabel = context.getString(R.string.engine_temp);
        this.mUnitCelsius = context.getString(R.string.unit_celsius);
    }

    public void update(VehicleParam vehicleParam) {
        this.mAbsoluteValue = vehicleParam.getValueNumeric();
        this.mAbsoluteFormattedValue = vehicleParam.getValueFormatted();
        this.historyValues = vehicleParam.getHistoryParam();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getTitle() {
        return this.mLabel;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getReadableValue() {
        return !isConnected() ? "-" : this.mAbsoluteFormattedValue;
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

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public String getUnit() {
        return this.mUnitCelsius;
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
        return this.mPriority;
    }

    private boolean isConnected() {
        return Utils.isCareConnected(this.mCommunication);
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
        arrayList.add(new VehicleParamHistoryModel(78.0d));
        arrayList.add(new VehicleParamHistoryModel(30.0d));
        arrayList.add(new VehicleParamHistoryModel(60.0d));
        arrayList.add(new VehicleParamHistoryModel(90.0d));
        arrayList.add(new VehicleParamHistoryModel(10.0d));
        arrayList.add(new VehicleParamHistoryModel(25.0d));
        return arrayList;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine
    public long getParameterType() {
        return DataID.Parameter.ENGINE_TEMP.getId();
    }
}
