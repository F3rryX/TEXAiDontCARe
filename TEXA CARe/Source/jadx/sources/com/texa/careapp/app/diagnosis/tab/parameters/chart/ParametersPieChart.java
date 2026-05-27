package com.texa.careapp.app.diagnosis.tab.parameters.chart;

import android.content.Context;
import android.graphics.Paint;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartItem;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ParametersPieChart {
    public static void bindView(Context context, ParametersChartItem parametersChartItem, PieChart pieChart, AppCompatTextView appCompatTextView) {
        appCompatTextView.setText(parametersChartItem.getReadableValue());
        serChartParameters(context, pieChart, parametersChartItem);
        if (parametersChartItem.getValue() == -1) {
            setNoDataChartStyle(context, pieChart, parametersChartItem.getTitle());
        } else {
            createChart(context, parametersChartItem, pieChart, appCompatTextView);
        }
    }

    public static void bindEmptyView(Context context, ParametersChartItem parametersChartItem, PieChart pieChart, AppCompatTextView appCompatTextView) {
        appCompatTextView.setText("0");
        serChartParameters(context, pieChart, parametersChartItem);
        setEmpty(context, parametersChartItem, pieChart, appCompatTextView);
    }

    private static void setEmpty(Context context, ParametersChartItem parametersChartItem, PieChart pieChart, AppCompatTextView appCompatTextView) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PieEntry(0.0f, (Object) 0));
        arrayList.add(new PieEntry(100.0f, (Object) 1));
        PieDataSet pieDataSet = new PieDataSet(arrayList, "");
        pieDataSet.setDrawValues(false);
        pieDataSet.setColors(parametersChartItem.getNormalColor(context), Utils.getColorResource(context, R.color.primary));
        appCompatTextView.setTextColor(-1);
        pieChart.invalidate();
        pieChart.setData(new PieData(pieDataSet));
    }

    private static void setNoDataChartStyle(Context context, PieChart pieChart, String str) {
        pieChart.setNoDataText(str);
        Paint paint = pieChart.getPaint(7);
        paint.setTextSize(context.getResources().getDimensionPixelSize(R.dimen.chart_not_available));
        paint.setColor(-1);
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTypeface(ResourcesCompat.getFont(context, R.font.font_light));
    }

    private static void serChartParameters(Context context, PieChart pieChart, ParametersChartItem parametersChartItem) {
        pieChart.setUsePercentValues(true);
        pieChart.setCenterText(parametersChartItem.getUnit());
        pieChart.setCenterTextColor(-1);
        pieChart.setCenterTextTypeface(ResourcesCompat.getFont(context, R.font.font_light));
        pieChart.setCenterTextSize(context.getResources().getDimensionPixelSize(R.dimen.pie_center_text_size));
        pieChart.setDrawHoleEnabled(true);
        pieChart.setHoleRadius(85.0f);
        pieChart.setMaxAngle(270.0f);
        pieChart.setRotationAngle(135.0f);
        pieChart.setHoleColor(Utils.getColorResource(context, android.R.color.transparent));
        pieChart.getLegend().setEnabled(false);
        pieChart.setExtraOffsets(0.0f, 0.0f, 0.0f, 0.0f);
        pieChart.setTouchEnabled(false);
        Description description = new Description();
        description.setText("");
        pieChart.setDescription(description);
    }

    private static void createChart(Context context, ParametersChartItem parametersChartItem, PieChart pieChart, AppCompatTextView appCompatTextView) {
        int maxValue = parametersChartItem.getValue() > parametersChartItem.getMaxValue() ? parametersChartItem.getMaxValue() : parametersChartItem.getValue();
        ArrayList arrayList = new ArrayList();
        int i = maxValue * 100;
        arrayList.add(new PieEntry(i / parametersChartItem.getMaxValue(), (Object) 0));
        arrayList.add(new PieEntry(100 - (i / parametersChartItem.getMaxValue()), (Object) 1));
        PieDataSet pieDataSet = new PieDataSet(arrayList, "");
        pieDataSet.setDrawValues(false);
        int[] iArr = new int[2];
        iArr[0] = parametersChartItem.getValue() >= parametersChartItem.getProblemValue() ? parametersChartItem.getProblemColor(context) : parametersChartItem.getNormalColor(context);
        iArr[1] = Utils.getColorResource(context, R.color.primary);
        pieDataSet.setColors(iArr);
        if (parametersChartItem.getValue() >= parametersChartItem.getProblemValue()) {
            appCompatTextView.setTextColor(parametersChartItem.getProblemColor(context));
        } else {
            appCompatTextView.setTextColor(-1);
        }
        pieChart.invalidate();
        pieChart.setData(new PieData(pieDataSet));
    }
}
