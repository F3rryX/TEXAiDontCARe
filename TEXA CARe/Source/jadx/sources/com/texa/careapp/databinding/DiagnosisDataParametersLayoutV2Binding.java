package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.charts.PieChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DiagnosisDataParametersLayoutV2Binding extends ViewDataBinding {
    public final LineChart diagnosisDataParametersBatteryChart;
    public final RelativeLayout diagnosisDataParametersBatteryChartHeader;
    public final TextView diagnosisDataParametersBatteryChartValue;
    public final AppCompatTextView diagnosisDataParametersBatteryNoDataChart;
    public final PieChart diagnosisDataParametersEngineRpmChart;
    public final AppCompatTextView diagnosisDataParametersEngineRpmChartValue;
    public final LineChart diagnosisDataParametersEngineTempChart;
    public final RelativeLayout diagnosisDataParametersEngineTempChartHeader;
    public final RelativeLayout diagnosisDataParametersEngineTempChartLay;
    public final TextView diagnosisDataParametersEngineTempChartValue;
    public final AppCompatTextView diagnosisDataParametersEngineTempNoDataChart;
    public final LineChart diagnosisDataParametersFuelLevelChart;
    public final RelativeLayout diagnosisDataParametersFuelLevelChartHeader;
    public final RelativeLayout diagnosisDataParametersFuelLevelChartLay;
    public final TextView diagnosisDataParametersFuelLevelChartTitle;
    public final TextView diagnosisDataParametersFuelLevelChartValue;
    public final AppCompatTextView diagnosisDataParametersFuelLevelNoDataChart;
    public final RelativeLayout diagnosisDataParametersLayout;
    public final RelativeLayout diagnosisDataParametersLayoutBattery;
    public final TextView diagnosisDataParametersLayoutBatteryLabel;
    public final TextView diagnosisDataParametersLayoutBatteryStatus;
    public final LinearLayout diagnosisDataParametersOtherLay;
    public final View diagnosisDataParametersShadow;
    public final PieChart diagnosisDataParametersSpeedChart;
    public final AppCompatTextView diagnosisDataParametersSpeedChartValue;

    protected DiagnosisDataParametersLayoutV2Binding(Object obj, View view, int i, LineChart lineChart, RelativeLayout relativeLayout, TextView textView, AppCompatTextView appCompatTextView, PieChart pieChart, AppCompatTextView appCompatTextView2, LineChart lineChart2, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView2, AppCompatTextView appCompatTextView3, LineChart lineChart3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, TextView textView3, TextView textView4, AppCompatTextView appCompatTextView4, RelativeLayout relativeLayout6, RelativeLayout relativeLayout7, TextView textView5, TextView textView6, LinearLayout linearLayout, View view2, PieChart pieChart2, AppCompatTextView appCompatTextView5) {
        super(obj, view, i);
        this.diagnosisDataParametersBatteryChart = lineChart;
        this.diagnosisDataParametersBatteryChartHeader = relativeLayout;
        this.diagnosisDataParametersBatteryChartValue = textView;
        this.diagnosisDataParametersBatteryNoDataChart = appCompatTextView;
        this.diagnosisDataParametersEngineRpmChart = pieChart;
        this.diagnosisDataParametersEngineRpmChartValue = appCompatTextView2;
        this.diagnosisDataParametersEngineTempChart = lineChart2;
        this.diagnosisDataParametersEngineTempChartHeader = relativeLayout2;
        this.diagnosisDataParametersEngineTempChartLay = relativeLayout3;
        this.diagnosisDataParametersEngineTempChartValue = textView2;
        this.diagnosisDataParametersEngineTempNoDataChart = appCompatTextView3;
        this.diagnosisDataParametersFuelLevelChart = lineChart3;
        this.diagnosisDataParametersFuelLevelChartHeader = relativeLayout4;
        this.diagnosisDataParametersFuelLevelChartLay = relativeLayout5;
        this.diagnosisDataParametersFuelLevelChartTitle = textView3;
        this.diagnosisDataParametersFuelLevelChartValue = textView4;
        this.diagnosisDataParametersFuelLevelNoDataChart = appCompatTextView4;
        this.diagnosisDataParametersLayout = relativeLayout6;
        this.diagnosisDataParametersLayoutBattery = relativeLayout7;
        this.diagnosisDataParametersLayoutBatteryLabel = textView5;
        this.diagnosisDataParametersLayoutBatteryStatus = textView6;
        this.diagnosisDataParametersOtherLay = linearLayout;
        this.diagnosisDataParametersShadow = view2;
        this.diagnosisDataParametersSpeedChart = pieChart2;
        this.diagnosisDataParametersSpeedChartValue = appCompatTextView5;
    }

    public static DiagnosisDataParametersLayoutV2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersLayoutV2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DiagnosisDataParametersLayoutV2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.diagnosis_data_parameters_layout_v2, viewGroup, z, obj);
    }

    public static DiagnosisDataParametersLayoutV2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersLayoutV2Binding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DiagnosisDataParametersLayoutV2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.diagnosis_data_parameters_layout_v2, null, false, obj);
    }

    public static DiagnosisDataParametersLayoutV2Binding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersLayoutV2Binding bind(View view, Object obj) {
        return (DiagnosisDataParametersLayoutV2Binding) bind(obj, view, R.layout.diagnosis_data_parameters_layout_v2);
    }
}
