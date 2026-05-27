package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.charts.PieChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisDataParametersLayoutV2BindingImpl extends DiagnosisDataParametersLayoutV2Binding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.diagnosis_data_parameters_layout_battery, 1);
        sparseIntArray.put(R.id.diagnosis_data_parameters_layout_battery_label, 2);
        sparseIntArray.put(R.id.diagnosis_data_parameters_layout_battery_status, 3);
        sparseIntArray.put(R.id.diagnosis_data_parameters_battery_chart_header, 4);
        sparseIntArray.put(R.id.diagnosis_data_parameters_battery_chart_value, 5);
        sparseIntArray.put(R.id.diagnosis_data_parameters_battery_chart, 6);
        sparseIntArray.put(R.id.diagnosis_data_parameters_battery_no_data_chart, 7);
        sparseIntArray.put(R.id.diagnosis_data_parameters_speed_chart, 8);
        sparseIntArray.put(R.id.diagnosis_data_parameters_speed_chart_value, 9);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_rpm_chart, 10);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_rpm_chart_value, 11);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_temp_chart_lay, 12);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_temp_chart_header, 13);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_temp_chart_value, 14);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_temp_chart, 15);
        sparseIntArray.put(R.id.diagnosis_data_parameters_engine_temp_no_data_chart, 16);
        sparseIntArray.put(R.id.diagnosis_data_parameters_fuel_level_chart_lay, 17);
        sparseIntArray.put(R.id.diagnosis_data_parameters_fuel_level_chart_header, 18);
        sparseIntArray.put(R.id.diagnosis_data_parameters_fuel_level_chart_title, 19);
        sparseIntArray.put(R.id.diagnosis_data_parameters_fuel_level_chart_value, 20);
        sparseIntArray.put(R.id.diagnosis_data_parameters_fuel_level_chart, 21);
        sparseIntArray.put(R.id.diagnosis_data_parameters_fuel_level_no_data_chart, 22);
        sparseIntArray.put(R.id.diagnosis_data_parameters_other_lay, 23);
        sparseIntArray.put(R.id.diagnosis_data_parameters_shadow, 24);
    }

    public DiagnosisDataParametersLayoutV2BindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 25, sIncludes, sViewsWithIds));
    }

    private DiagnosisDataParametersLayoutV2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LineChart) objArr[6], (RelativeLayout) objArr[4], (TextView) objArr[5], (AppCompatTextView) objArr[7], (PieChart) objArr[10], (AppCompatTextView) objArr[11], (LineChart) objArr[15], (RelativeLayout) objArr[13], (RelativeLayout) objArr[12], (TextView) objArr[14], (AppCompatTextView) objArr[16], (LineChart) objArr[21], (RelativeLayout) objArr[18], (RelativeLayout) objArr[17], (TextView) objArr[19], (TextView) objArr[20], (AppCompatTextView) objArr[22], (RelativeLayout) objArr[0], (RelativeLayout) objArr[1], (TextView) objArr[2], (TextView) objArr[3], (LinearLayout) objArr[23], (View) objArr[24], (PieChart) objArr[8], (AppCompatTextView) objArr[9]);
        this.mDirtyFlags = -1L;
        this.diagnosisDataParametersLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0L;
        }
    }
}
