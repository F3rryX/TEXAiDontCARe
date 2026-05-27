package com.texa.careapp.app.diagnosis.tab.parameters.chart;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.LineData;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.ChartUtils;
import com.texa.carelib.diagresources.DataID;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersLineChart {
    public static void bindView(Context context, ParametersChartLine parametersChartLine, VehicleModel vehicleModel, boolean z, LineChart lineChart, TextView textView, AppCompatTextView appCompatTextView) {
        if (parametersChartLine.getReadableValue() != null && !parametersChartLine.getReadableValue().equalsIgnoreCase("")) {
            textView.setVisibility(0);
            String string = context.getString(R.string.format_string_space);
            Object[] objArr = new Object[2];
            objArr[0] = (z || parametersChartLine.getParameterType() != DataID.Parameter.ENGINE_TEMP.getId()) ? parametersChartLine.getReadableValue() : "-";
            objArr[1] = parametersChartLine.getUnit();
            String str = String.format(string, objArr);
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new RelativeSizeSpan(0.5f), str.length() - parametersChartLine.getUnit().length(), str.length(), 33);
            textView.setText(spannableString);
        } else {
            textView.setVisibility(8);
        }
        LineChart baseConfiguration = ChartUtils.getBaseConfiguration(lineChart, parametersChartLine.getMaxValue(), parametersChartLine.getMinValue());
        if (parametersChartLine.getValue() == -1) {
            appCompatTextView.setVisibility(0);
            setMockDataChartStyle(vehicleModel, context, parametersChartLine, false, appCompatTextView, textView, baseConfiguration);
        } else if (ChartUtils.getChartData(parametersChartLine).size() < 2) {
            appCompatTextView.setVisibility(0);
            setMockDataChartStyle(vehicleModel, context, parametersChartLine, true, appCompatTextView, textView, baseConfiguration);
        } else {
            createChart(vehicleModel, context, parametersChartLine, z, false, textView, baseConfiguration);
            appCompatTextView.setVisibility(8);
        }
    }

    public static void bindEmptyView(Context context, ParametersChartLine parametersChartLine, VehicleModel vehicleModel, LineChart lineChart, TextView textView, AppCompatTextView appCompatTextView) {
        LineChart baseConfiguration = ChartUtils.getBaseConfiguration(lineChart, parametersChartLine.getMaxValue(), parametersChartLine.getMinValue());
        textView.setVisibility(8);
        appCompatTextView.setVisibility(0);
        setMockDataChartStyle(vehicleModel, context, parametersChartLine, true, appCompatTextView, textView, baseConfiguration);
    }

    static void setMockDataChartStyle(VehicleModel vehicleModel, Context context, ParametersChartLine parametersChartLine, boolean z, AppCompatTextView appCompatTextView, TextView textView, LineChart lineChart) {
        if (!z) {
            appCompatTextView.setText(String.format(context.getString(R.string.parameters_no_data), parametersChartLine.getTitle().toUpperCase()));
        } else {
            appCompatTextView.setText(R.string.parameters_no_data_yet);
            appCompatTextView.setVisibility(0);
        }
        createChart(vehicleModel, context, parametersChartLine, false, true, textView, lineChart);
    }

    static void createChart(VehicleModel vehicleModel, Context context, ParametersChartLine parametersChartLine, boolean z, boolean z2, TextView textView, LineChart lineChart) {
        ChartUtils.ChartConfiguration chartConfiguration = new ChartUtils.ChartConfiguration(vehicleModel, parametersChartLine, parametersChartLine.getNormalColor(context), ContextCompat.getDrawable(context, R.drawable.fill_line_chart_normal));
        chartConfiguration.generateChart(context, !z2 ? ChartUtils.getChartData(parametersChartLine) : parametersChartLine.getMockHistory());
        if (chartConfiguration.getChartColor(context) == parametersChartLine.getNormalColor(context) || !z) {
            textView.setTextColor(-1);
        } else {
            textView.setTextColor(chartConfiguration.getChartColor(context));
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ChartUtils.getYAxisRealData(context, chartConfiguration.getYAxisRealVal(), chartConfiguration.getChartColor(context), parametersChartLine.getParameterType(), z2));
        arrayList.add(ChartUtils.getYAxisMockData(context, chartConfiguration.getYAxisMockVal(), chartConfiguration.getChartColor(context), chartConfiguration.getChartFill(context)));
        lineChart.clear();
        lineChart.setData(new LineData(arrayList));
    }
}
