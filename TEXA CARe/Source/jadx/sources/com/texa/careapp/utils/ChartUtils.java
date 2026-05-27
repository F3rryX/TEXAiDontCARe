package com.texa.careapp.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.LongSparseArray;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.ValueFormatter;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.tab.chart.ParametersChartLine;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParamHistoryModel;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.carelib.diagresources.DataID;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class ChartUtils {
    private static final long SAMPLING_TIME = 180000;

    public static LineChart getBaseConfiguration(LineChart lineChart, int i, int i2) {
        lineChart.setDrawGridBackground(false);
        lineChart.setTouchEnabled(false);
        lineChart.setDragEnabled(false);
        lineChart.setScaleEnabled(false);
        lineChart.setPinchZoom(false);
        lineChart.getLegend().setEnabled(false);
        lineChart.getAxisLeft().setEnabled(false);
        lineChart.getAxisRight().setEnabled(false);
        lineChart.getXAxis().setEnabled(false);
        lineChart.setViewPortOffsets(0.0f, 25.0f, 0.0f, 0.0f);
        lineChart.setAutoScaleMinMaxEnabled(false);
        Description description = new Description();
        description.setText("");
        lineChart.setDescription(description);
        YAxis axisLeft = lineChart.getAxisLeft();
        axisLeft.removeAllLimitLines();
        axisLeft.setAxisMaximum(i);
        axisLeft.setAxisMinimum(i2 - 5.0f);
        axisLeft.setDrawZeroLine(false);
        return lineChart;
    }

    public static List<String> getXAxisData(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add("" + i2);
        }
        return arrayList;
    }

    public static LineDataSet getYAxisMockData(Context context, ArrayList<Entry> arrayList, int i, Drawable drawable) {
        LineDataSet lineDataSet = new LineDataSet(arrayList, "YAxisMock");
        lineDataSet.setColor(i);
        lineDataSet.setDrawCircles(false);
        lineDataSet.setLineWidth(context.getResources().getDimensionPixelSize(R.dimen.chart_line_width));
        lineDataSet.setDrawValues(false);
        lineDataSet.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        if (Build.VERSION.SDK_INT >= 18) {
            lineDataSet.setFillDrawable(drawable);
        }
        lineDataSet.setAxisDependency(YAxis.AxisDependency.LEFT);
        lineDataSet.setDrawFilled(true);
        lineDataSet.notifyDataSetChanged();
        return lineDataSet;
    }

    public static LineDataSet getYAxisRealData(final Context context, ArrayList<Entry> arrayList, int i, final long j, boolean z) {
        LineDataSet lineDataSet = new LineDataSet(arrayList, "YAxisReal");
        if (!z) {
            lineDataSet.setValueTextColor(-1);
            lineDataSet.setValueTypeface(ResourcesCompat.getFont(context, R.font.font_light));
            lineDataSet.setValueTextSize(10.0f);
            lineDataSet.setValueFormatter(new ValueFormatter() { // from class: com.texa.careapp.utils.ChartUtils.1
                @Override // com.github.mikephil.charting.formatter.ValueFormatter
                public String getPointLabel(Entry entry) {
                    return ChartUtils.getChartDataFormatter(context, j, (VehicleParamHistoryModel) entry.getData());
                }
            });
            lineDataSet.setDrawValues(true);
        } else {
            lineDataSet.setDrawValues(false);
        }
        lineDataSet.setAxisDependency(YAxis.AxisDependency.LEFT);
        lineDataSet.setDrawCircles(true);
        lineDataSet.setCircleRadius(context.getResources().getDimensionPixelSize(R.dimen.chart_line_radius));
        lineDataSet.setCircleColor(-1);
        lineDataSet.setDrawCircleHole(true);
        lineDataSet.setCircleHoleColor(i);
        lineDataSet.setColor(0);
        lineDataSet.setLineWidth(context.getResources().getDimensionPixelSize(R.dimen.chart_line_width));
        lineDataSet.setMode(LineDataSet.Mode.CUBIC_BEZIER);
        lineDataSet.notifyDataSetChanged();
        return lineDataSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getChartDataFormatter(Context context, long j, VehicleParamHistoryModel vehicleParamHistoryModel) {
        String strChartTimeFormat;
        if (j == DataID.Parameter.ENGINE_TEMP.getId() || j == DataID.Parameter.FUEL_LEVEL_ABS.getId() || j == DataID.Parameter.FUEL_LEVEL_REL.getId() || j != ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (vehicleParamHistoryModel.getDate() == null) {
            return "";
        }
        long time = jCurrentTimeMillis - vehicleParamHistoryModel.getDate().getTime();
        if (time >= 0 && time <= 60000) {
            strChartTimeFormat = context.getString(R.string.chart_time_format_now);
        } else {
            strChartTimeFormat = chartTimeFormat(context, time, vehicleParamHistoryModel.getDate());
        }
        return strChartTimeFormat;
    }

    private static String chartTimeFormat(Context context, long j, Date date) {
        if (j < 3600000) {
            return String.format(context.getString(R.string.chart_time_format_minutes), String.valueOf((int) (j / 60000)));
        }
        if (j < 86400000) {
            return String.format(context.getString(R.string.chart_time_format_hour), String.valueOf((int) (j / 3600000)));
        }
        return new SimpleDateFormat(context.getString(R.string.chart_time_format_date), Locale.getDefault()).format(date);
    }

    public static List<VehicleParamHistoryModel> getChartData(ParametersChartLine parametersChartLine) {
        ArrayList arrayList = new ArrayList();
        if (parametersChartLine.getParameterType() == DataID.Parameter.ENGINE_TEMP.getId()) {
            return getEngineTemperatureChartData(parametersChartLine.getHistory(), parametersChartLine.getLimitItem());
        }
        if (parametersChartLine.getParameterType() == DataID.Parameter.FUEL_LEVEL_ABS.getId() || parametersChartLine.getParameterType() == DataID.Parameter.FUEL_LEVEL_REL.getId()) {
            return getFuelLevelChartData(parametersChartLine.getHistory(), parametersChartLine.getLimitItem());
        }
        return parametersChartLine.getParameterType() == ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL ? getBatteryStatusChartData(parametersChartLine.getHistory(), parametersChartLine.getLimitItem()) : arrayList;
    }

    private static List<VehicleParamHistoryModel> getFuelLevelChartData(List<VehicleParamHistoryModel> list, int i) {
        ArrayList arrayList = new ArrayList();
        LongSparseArray longSparseArray = new LongSparseArray();
        Date date = new Date();
        if (!list.isEmpty()) {
            date = list.get(0).getDate();
        }
        double value = 0.0d;
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (list.get(i3).getDate().getTime() <= date.getTime() + SAMPLING_TIME) {
                value += list.get(i3).getValue();
                i2++;
                if (i3 == list.size() - 1) {
                    longSparseArray.put(date.getTime(), getAvgParam(value / ((double) i2), null));
                }
            } else {
                longSparseArray.put(date.getTime(), getAvgParam(value / ((double) i2), null));
                value = list.get(i3).getValue();
                date = list.get(i3).getDate();
                if (i3 == list.size() - 1) {
                    longSparseArray.put(date.getTime(), getAvgParam(value / ((double) 1), null));
                }
                i2 = 1;
            }
        }
        for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
            arrayList.add((VehicleParamHistoryModel) longSparseArray.get(longSparseArray.keyAt(i4)));
        }
        return arrayList.subList(arrayList.size() - (i <= arrayList.size() ? i : arrayList.size()), arrayList.size());
    }

    private static List<VehicleParamHistoryModel> getBatteryStatusChartData(List<VehicleParamHistoryModel> list, int i) {
        ArrayList arrayList = new ArrayList();
        LongSparseArray longSparseArray = new LongSparseArray();
        Calendar calendar = Calendar.getInstance();
        if (!list.isEmpty()) {
            calendar = setMidnightTime(calendar, list.get(0).getDate());
        }
        double value = 0.0d;
        Calendar calendar2 = Calendar.getInstance();
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            calendar2 = setMidnightTime(calendar2, list.get(i3).getDate());
            if (calendar2.getTimeInMillis() == calendar.getTimeInMillis()) {
                value += list.get(i3).getValue();
                i2++;
                if (i3 == list.size() - 1) {
                    longSparseArray.put(calendar.getTimeInMillis(), getAvgParam(value / ((double) i2), calendar.getTime()));
                }
            } else {
                longSparseArray.put(calendar.getTimeInMillis(), getAvgParam(value / ((double) i2), calendar.getTime()));
                value = list.get(i3).getValue();
                calendar = setMidnightTime(calendar, list.get(i3).getDate());
                if (i3 == list.size() - 1) {
                    longSparseArray.put(calendar.getTimeInMillis(), getAvgParam(value / ((double) 1), calendar.getTime()));
                }
                i2 = 1;
            }
        }
        if (longSparseArray.size() >= 6) {
            for (int i4 = 0; i4 < longSparseArray.size(); i4++) {
                arrayList.add((VehicleParamHistoryModel) longSparseArray.get(longSparseArray.keyAt(i4)));
            }
        } else {
            arrayList.addAll(list);
        }
        return arrayList.subList(arrayList.size() - (i <= arrayList.size() ? i : arrayList.size()), arrayList.size());
    }

    private static VehicleParamHistoryModel getAvgParam(double d, Date date) {
        VehicleParamHistoryModel vehicleParamHistoryModel = new VehicleParamHistoryModel();
        vehicleParamHistoryModel.setValue(d);
        vehicleParamHistoryModel.setDate(date);
        return vehicleParamHistoryModel;
    }

    private static Calendar setMidnightTime(Calendar calendar, Date date) {
        calendar.setTime(date);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar;
    }

    private static List<VehicleParamHistoryModel> getEngineTemperatureChartData(List<VehicleParamHistoryModel> list, int i) {
        if (i > list.size()) {
            i = list.size();
        }
        return list.subList(list.size() - i, list.size());
    }

    public static class ChartConfiguration {
        private int chartColor;
        private Drawable chartFill;
        private ParametersChartLine item;
        private VehicleModel vehicleModel;
        private ArrayList<Entry> yAxisMockVal = new ArrayList<>();
        private ArrayList<Entry> yAxisRealVal = new ArrayList<>();

        public ChartConfiguration(VehicleModel vehicleModel, ParametersChartLine parametersChartLine, int i, Drawable drawable) {
            this.item = parametersChartLine;
            this.chartColor = i;
            this.chartFill = drawable;
            this.vehicleModel = vehicleModel;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0089, code lost:
        
            r7.chartColor = r7.item.getProblemColor(r8);
            r7.chartFill = androidx.core.content.ContextCompat.getDrawable(r8, com.texa.care.R.drawable.fill_line_chart_problem);
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00f8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void generateChart(Context context, List<VehicleParamHistoryModel> list) {
            int i = 0;
            this.yAxisMockVal.add(new Entry(0.0f, (float) list.get(0).getValue()));
            while (i < list.size()) {
                int i2 = i + 1;
                float f = i2;
                this.yAxisRealVal.add(new Entry(f, (float) list.get(i).getValue(), list.get(i)));
                this.yAxisMockVal.add(new Entry(f, (float) list.get(i).getValue()));
                if (i == list.size() - 1) {
                    if (this.item.isHigherThreshold()) {
                        if (this.item.isHigherThreshold()) {
                            if (list.get(i).getValue() > this.item.getWarningValue() || list.get(i).getValue() <= this.item.getProblemValue()) {
                            }
                        } else if (list.get(i).getValue() >= this.item.getWarningValue() && list.get(i).getValue() < this.item.getProblemValue()) {
                            this.chartColor = this.item.getWarningColor(context);
                            this.chartFill = ContextCompat.getDrawable(context, R.drawable.fill_line_chart_warning);
                        }
                    } else if (this.item.isHigherThreshold()) {
                    }
                }
                i = i2;
            }
            this.yAxisMockVal.add(new Entry(this.yAxisMockVal.size(), (float) list.get(list.size() - 1).getValue()));
        }

        public ArrayList<Entry> getYAxisRealVal() {
            return this.yAxisRealVal;
        }

        public ArrayList<Entry> getYAxisMockVal() {
            return this.yAxisMockVal;
        }

        public int getChartColor(Context context) {
            if (this.item.getParameterType() != ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
                return this.chartColor;
            }
            return getBatteryStatusColor(context);
        }

        public Drawable getChartFill(Context context) {
            if (this.item.getParameterType() != ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL) {
                return this.chartFill;
            }
            return getBatteryStatusFill(context);
        }

        private int getBatteryStatusColor(Context context) {
            String batteryValue = ChartUtils.readBatteryValue(this.vehicleModel);
            int normalColor = this.item.getNormalColor(context);
            if (AlarmStatus.RED.name().equals(batteryValue)) {
                return this.item.getProblemColor(context);
            }
            return AlarmStatus.YELLOW.name().equals(batteryValue) ? this.item.getWarningColor(context) : normalColor;
        }

        private Drawable getBatteryStatusFill(Context context) {
            String batteryValue = ChartUtils.readBatteryValue(this.vehicleModel);
            Drawable drawable = ContextCompat.getDrawable(context, R.drawable.fill_line_chart_normal);
            if (AlarmStatus.RED.name().equals(batteryValue)) {
                return ContextCompat.getDrawable(context, R.drawable.fill_line_chart_problem);
            }
            return AlarmStatus.YELLOW.name().equals(batteryValue) ? ContextCompat.getDrawable(context, R.drawable.fill_line_chart_warning) : drawable;
        }
    }

    public static String readBatteryValue(VehicleModel vehicleModel) {
        String strName = null;
        if (vehicleModel != null && vehicleModel.getAlarms() != null && !vehicleModel.getAlarms().isEmpty()) {
            for (VehicleAlarm vehicleAlarm : vehicleModel.getAlarms()) {
                if (vehicleAlarm.getAlarmType() == AlarmType.BATTERY_STATE) {
                    strName = vehicleAlarm.getAlarmStatus().name();
                }
            }
        }
        return strName;
    }
}
