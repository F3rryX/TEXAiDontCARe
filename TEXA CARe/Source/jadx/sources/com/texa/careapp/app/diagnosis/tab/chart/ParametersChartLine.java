package com.texa.careapp.app.diagnosis.tab.chart;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.LineData;
import com.texa.care.R;
import com.texa.careapp.databinding.DiagnosisDataParametersLineChartBinding;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParamHistoryModel;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.careapp.utils.ChartUtils;
import com.texa.carelib.diagresources.DataID;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ParametersChartLine extends ParametersChartItem {
    public abstract List<VehicleParamHistoryModel> getHistory();

    public abstract int getMinValue();

    public abstract List<VehicleParamHistoryModel> getMockHistory();

    public abstract long getParameterType();

    public abstract long getParameterTypeRelative();

    public abstract void setLayoutPriority(int i);

    public static class LineChartViewHolder extends RecyclerView.ViewHolder {
        LineChart mChart;
        final AppCompatTextView mChartNoDataText;
        final RelativeLayout mLayout;
        final TextView mTitle;
        final TextView mValue;

        public LineChartViewHolder(View view) {
            super(view);
            DiagnosisDataParametersLineChartBinding diagnosisDataParametersLineChartBinding = (DiagnosisDataParametersLineChartBinding) DataBindingUtil.bind(view);
            this.mLayout = diagnosisDataParametersLineChartBinding.diagnosisDataParametersLineChartLayout;
            this.mTitle = diagnosisDataParametersLineChartBinding.diagnosisDataParametersLineChartTitle;
            this.mValue = diagnosisDataParametersLineChartBinding.diagnosisDataParametersLineChartValue;
            this.mChart = diagnosisDataParametersLineChartBinding.diagnosisDataParametersLineChart;
            this.mChartNoDataText = diagnosisDataParametersLineChartBinding.diagnosisDataParametersNoDataChart;
        }

        public void bindView(VehicleModel vehicleModel, Context context, ParametersChartLine parametersChartLine, int i, boolean z) {
            if (parametersChartLine.getTitle() != null && !parametersChartLine.getTitle().equalsIgnoreCase("") && parametersChartLine.getParameterType() != ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
                this.mTitle.setText(parametersChartLine.getTitle());
            } else {
                this.mTitle.setText("\n");
            }
            if (parametersChartLine.getReadableValue() != null && !parametersChartLine.getReadableValue().equalsIgnoreCase("")) {
                this.mValue.setVisibility(0);
                String string = context.getString(R.string.format_string_space);
                Object[] objArr = new Object[2];
                objArr[0] = (z || parametersChartLine.getParameterType() != DataID.Parameter.ENGINE_TEMP.getId()) ? parametersChartLine.getReadableValue() : "-";
                objArr[1] = parametersChartLine.getUnit();
                String str = String.format(string, objArr);
                SpannableString spannableString = new SpannableString(str);
                spannableString.setSpan(new RelativeSizeSpan(0.5f), str.length() - parametersChartLine.getUnit().length(), str.length(), 33);
                this.mValue.setText(spannableString);
            } else {
                this.mValue.setVisibility(8);
            }
            setChartParameters(context, i, parametersChartLine.getLayoutPriority());
            this.mChart = ChartUtils.getBaseConfiguration(this.mChart, parametersChartLine.getMaxValue(), parametersChartLine.getMinValue());
            if (parametersChartLine.getValue() == -1) {
                this.mChartNoDataText.setVisibility(0);
                setMockDataChartStyle(vehicleModel, context, parametersChartLine, false);
            } else if (ChartUtils.getChartData(parametersChartLine).size() < 2) {
                this.mChartNoDataText.setVisibility(0);
                setMockDataChartStyle(vehicleModel, context, parametersChartLine, true);
            } else {
                this.mChartNoDataText.setVisibility(8);
                createChart(vehicleModel, context, parametersChartLine, z, false);
            }
        }

        void setMockDataChartStyle(VehicleModel vehicleModel, Context context, ParametersChartLine parametersChartLine, boolean z) {
            this.mTitle.setText("\n");
            if (!z) {
                this.mChartNoDataText.setText(String.format(context.getString(R.string.parameters_no_data), parametersChartLine.getTitle().toUpperCase()));
            } else {
                this.mChartNoDataText.setText(R.string.parameters_no_data_yet);
            }
            createChart(vehicleModel, context, parametersChartLine, false, true);
        }

        void setChartParameters(Context context, int i, int i2) {
            if (i2 > 1) {
                GridLayoutManager.LayoutParams layoutParams = (GridLayoutManager.LayoutParams) this.mLayout.getLayoutParams();
                layoutParams.height = context.getResources().getDimensionPixelOffset(R.dimen.line_chart_layout_height);
                Resources resources = context.getResources();
                int i3 = i % 2;
                int i4 = R.dimen.chart_half_margin;
                int dimensionPixelSize = resources.getDimensionPixelSize(i3 == 1 ? R.dimen.chart_standard_margin : R.dimen.chart_half_margin);
                Resources resources2 = context.getResources();
                if (i3 != 1) {
                    i4 = R.dimen.chart_standard_margin;
                }
                layoutParams.setMargins(dimensionPixelSize, 0, resources2.getDimensionPixelSize(i4), context.getResources().getDimensionPixelOffset(R.dimen.chart_standard_margin));
                this.mLayout.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.chart_line_width);
                layoutParams2.setMargins(dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2, dimensionPixelSize2);
                this.mChartNoDataText.setLayoutParams(layoutParams2);
                return;
            }
            GridLayoutManager.LayoutParams layoutParams3 = (GridLayoutManager.LayoutParams) this.mLayout.getLayoutParams();
            layoutParams3.height = context.getResources().getDimensionPixelOffset(R.dimen.line_chart_single_height);
            layoutParams3.setMargins(0, 0, 0, context.getResources().getDimensionPixelOffset(R.dimen.chart_standard_margin));
            this.mLayout.setLayoutParams(layoutParams3);
            this.mLayout.setBackgroundResource(R.drawable.parameters_chart_no_stroke_background);
            this.mLayout.setPadding(0, context.getResources().getDimensionPixelOffset(R.dimen.chart_standard_margin), 0, 0);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams4.setMargins(0, 0, 0, 0);
            this.mChartNoDataText.setLayoutParams(layoutParams4);
        }

        void createChart(VehicleModel vehicleModel, Context context, ParametersChartLine parametersChartLine, boolean z, boolean z2) {
            ChartUtils.ChartConfiguration chartConfiguration = new ChartUtils.ChartConfiguration(vehicleModel, parametersChartLine, parametersChartLine.getNormalColor(context), ContextCompat.getDrawable(context, R.drawable.fill_line_chart_normal));
            chartConfiguration.generateChart(context, !z2 ? ChartUtils.getChartData(parametersChartLine) : parametersChartLine.getMockHistory());
            if (chartConfiguration.getChartColor(context) == parametersChartLine.getNormalColor(context) || !z) {
                this.mValue.setTextColor(-1);
            } else {
                this.mValue.setTextColor(chartConfiguration.getChartColor(context));
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(ChartUtils.getYAxisRealData(context, chartConfiguration.getYAxisRealVal(), chartConfiguration.getChartColor(context), parametersChartLine.getParameterType(), z2));
            arrayList.add(ChartUtils.getYAxisMockData(context, chartConfiguration.getYAxisMockVal(), chartConfiguration.getChartColor(context), chartConfiguration.getChartFill(context)));
            this.mChart.setData(new LineData(arrayList));
        }
    }
}
