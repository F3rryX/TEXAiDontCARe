package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.PieChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DiagnosisDataParametersPieChartBinding extends ViewDataBinding {
    public final PieChart diagnosisDataParametersPieChart;
    public final RelativeLayout diagnosisDataParametersPieChartLayout;
    public final TextView diagnosisDataParametersPieChartTitle;
    public final AppCompatTextView diagnosisDataParametersPieChartValue;

    protected DiagnosisDataParametersPieChartBinding(Object obj, View view, int i, PieChart pieChart, RelativeLayout relativeLayout, TextView textView, AppCompatTextView appCompatTextView) {
        super(obj, view, i);
        this.diagnosisDataParametersPieChart = pieChart;
        this.diagnosisDataParametersPieChartLayout = relativeLayout;
        this.diagnosisDataParametersPieChartTitle = textView;
        this.diagnosisDataParametersPieChartValue = appCompatTextView;
    }

    public static DiagnosisDataParametersPieChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersPieChartBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (DiagnosisDataParametersPieChartBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.diagnosis_data_parameters_pie_chart, viewGroup, z, obj);
    }

    public static DiagnosisDataParametersPieChartBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersPieChartBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (DiagnosisDataParametersPieChartBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.diagnosis_data_parameters_pie_chart, null, false, obj);
    }

    public static DiagnosisDataParametersPieChartBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DiagnosisDataParametersPieChartBinding bind(View view, Object obj) {
        return (DiagnosisDataParametersPieChartBinding) bind(obj, view, R.layout.diagnosis_data_parameters_pie_chart);
    }
}
