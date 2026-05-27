package com.texa.careapp.parameters;

import android.content.Context;
import com.google.firebase.appindexing.Indexable;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersNoChart;
import com.texa.careapp.model.VehicleParam;
import com.texa.carelib.diagresources.DataID;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterDistanceNextService extends ParametersNoChart {
    private static final String TAG = "ParameterDistanceNextService";
    private final String mLabel;
    private final String mUnit;
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
        return Indexable.MAX_STRING_LENGTH;
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

    public ParameterDistanceNextService(Context context) {
        this.mLabel = context.getString(R.string.distance_next_service);
        this.mUnit = context.getString(R.string.unit_km);
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
        if (this.mValue == null) {
            return "";
        }
        return this.mValue.intValue() + " ";
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
    public String getUnit() {
        return this.mUnit;
    }

    @Override // com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem
    public int getPriority() {
        return Constants.CARE_DRIVER_PARAMETERS.indexOf(Long.valueOf(DataID.Parameter.DISTANCE_NEXT_SERVICE.getId()));
    }
}
