package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.LineChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DiagnosisDataParametersLineChartBinding extends ViewDataBinding {
    public final LineChart diagnosisDataParametersLineChart;
    public final RelativeLayout diagnosisDataParametersLineChartHeader;
    public final RelativeLayout diagnosisDataParametersLineChartLayout;
    public final TextView diagnosisDataParametersLineChartTitle;
    public final TextView diagnosisDataParametersLineChartValue;
    public final AppCompatTextView diagnosisDataParametersNoDataChart;

    protected DiagnosisDataParametersLineChartBinding(Object obj, View view, int i, LineChart lineChart, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView) {
        super(obj, view, i);
        this.diagnosisDataParametersLineChart = lineChart;
        this.diagnosisDataParametersLineChartHeader = relativeLayout;
        this.diagnosisDataParametersLineChartLayout = relativeLayout2;
        this.diagnosisDataParametersLineChartTitle = textView;
        this.diagnosisDataParametersLineChartValue = textView2;
        this.diagnosisDataParametersNoDataChart = appCompatTextView;
    }

    public static DiagnosisDataParametersLineChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersLineChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DiagnosisDataParametersLineChartBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.diagnosis_data_parameters_line_chart, viewGroup, z, obj);
    }

    public static DiagnosisDataParametersLineChartBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersLineChartBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DiagnosisDataParametersLineChartBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.diagnosis_data_parameters_line_chart, null, false, obj);
    }

    public static DiagnosisDataParametersLineChartBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersLineChartBinding bind(View view, Object obj) {
        return (DiagnosisDataParametersLineChartBinding) bind(obj, view, R.layout.diagnosis_data_parameters_line_chart);
    }
}
