package com.texa.careapp.app.diagnosis.tab.chart;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.texa.care.R;
import com.texa.careapp.databinding.DiagnosisDataParametersPieChartBinding;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParametersChartPie extends ParametersChartItem {

    public static class PieChartViewHolder extends RecyclerView.ViewHolder {
        final PieChart mChart;
        final RelativeLayout mLayout;
        final TextView mTitle;
        final AppCompatTextView mValue;

        public PieChartViewHolder(View view) {
            super(view);
            DiagnosisDataParametersPieChartBinding diagnosisDataParametersPieChartBinding = (DiagnosisDataParametersPieChartBinding) DataBindingUtil.bind(view);
            this.mLayout = diagnosisDataParametersPieChartBinding.diagnosisDataParametersPieChartLayout;
            this.mTitle = diagnosisDataParametersPieChartBinding.diagnosisDataParametersPieChartTitle;
            this.mValue = diagnosisDataParametersPieChartBinding.diagnosisDataParametersPieChartValue;
            this.mChart = diagnosisDataParametersPieChartBinding.diagnosisDataParametersPieChart;
        }

        public void bindView(Context context, ParametersChartItem parametersChartItem, int i) {
            this.mTitle.setText(parametersChartItem.getTitle());
            this.mValue.setText(parametersChartItem.getReadableValue());
            if (parametersChartItem.getLayoutPriority() > 1) {
                GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) this.mLayout.getLayoutParams();
                Resources resources = context.getResources();
                int i2 = i % 2;
                int i3 = R.dimen.chart_half_margin;
                int dimensionPixelSize = resources.getDimensionPixelSize(i2 == 1 ? R.dimen.chart_standard_margin : R.dimen.chart_half_margin);
                Resources resources2 = context.getResources();
                if (i2 != 1) {
                    i3 = R.dimen.chart_standard_margin;
                }
                layoutParams.setMargins(dimensionPixelSize, 0, resources2.getDimensionPixelSize(i3), context.getResources().getDimensionPixelOffset(R.dimen.chart_standard_margin));
                this.mLayout.setLayoutParams(layoutParams);
            }
            serChartParameters(context, parametersChartItem);
            if (parametersChartItem.getValue() == -1) {
                setNoDataChartStyle(context, parametersChartItem.getTitle());
            } else {
                createChart(context, parametersChartItem);
            }
        }

        void setNoDataChartStyle(Context context, String str) {
            this.mChart.setNoDataText(str);
            this.mTitle.setText("");
            Paint paint = this.mChart.getPaint(7);
            paint.setTextSize(context.getResources().getDimensionPixelSize(R.dimen.chart_not_available));
            paint.setColor(-1);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(ResourcesCompat.getFont(context, R.font.font_light));
        }

        void serChartParameters(Context context, ParametersChartItem parametersChartItem) {
            this.mChart.setUsePercentValues(true);
            this.mChart.setCenterText(parametersChartItem.getUnit());
            this.mChart.setCenterTextColor(-1);
            this.mChart.setCenterTextTypeface(ResourcesCompat.getFont(context, R.font.font_light));
            this.mChart.setCenterTextSize(context.getResources().getDimensionPixelSize(R.dimen.pie_center_text_size));
            this.mChart.setDrawHoleEnabled(true);
            this.mChart.setHoleRadius(85.0f);
            this.mChart.setMaxAngle(270.0f);
            this.mChart.setRotationAngle(135.0f);
            this.mChart.setHoleColor(Utils.getColorResource(context, android.R.color.transparent));
            this.mChart.getLegend().setEnabled(false);
            this.mChart.setExtraOffsets(0.0f, 0.0f, 0.0f, 0.0f);
            this.mChart.setTouchEnabled(false);
            Description description = new Description();
            description.setText("");
            this.mChart.setDescription(description);
        }

        void createChart(Context context, ParametersChartItem parametersChartItem) {
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
                this.mValue.setTextColor(parametersChartItem.getProblemColor(context));
            } else {
                this.mValue.setTextColor(-1);
            }
            this.mChart.invalidate();
            this.mChart.setData(new PieData(pieDataSet));
        }
    }
}
