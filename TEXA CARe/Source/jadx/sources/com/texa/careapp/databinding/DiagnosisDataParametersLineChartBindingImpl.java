package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.github.mikephil.charting.charts.LineChart;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisDataParametersLineChartBindingImpl extends DiagnosisDataParametersLineChartBinding {
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
        sparseIntArray.put(R.id.diagnosis_data_parameters_line_chart_header, 1);
        sparseIntArray.put(R.id.diagnosis_data_parameters_line_chart_title, 2);
        sparseIntArray.put(R.id.diagnosis_data_parameters_line_chart_value, 3);
        sparseIntArray.put(R.id.diagnosis_data_parameters_line_chart, 4);
        sparseIntArray.put(R.id.diagnosis_data_parameters_no_data_chart, 5);
    }

    public DiagnosisDataParametersLineChartBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private DiagnosisDataParametersLineChartBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LineChart) objArr[4], (RelativeLayout) objArr[1], (RelativeLayout) objArr[0], (TextView) objArr[2], (TextView) objArr[3], (AppCompatTextView) objArr[5]);
        this.mDirtyFlags = -1L;
        this.diagnosisDataParametersLineChartLayout.setTag(null);
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
