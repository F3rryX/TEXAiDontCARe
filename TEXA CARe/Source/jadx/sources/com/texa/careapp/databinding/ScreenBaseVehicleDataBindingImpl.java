package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenBaseVehicleDataBindingImpl extends ScreenBaseVehicleDataBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;

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
        sparseIntArray.put(R.id.screen_base_vehicle_data_scroll_view, 1);
        sparseIntArray.put(R.id.screen_base_vehicle_data_vehicle_model_input, 2);
        sparseIntArray.put(R.id.screen_base_vehicle_data_vehicle_model_edit_text, 3);
        sparseIntArray.put(R.id.screen_base_vehicle_data_plate_input, 4);
        sparseIntArray.put(R.id.screen_base_vehicle_data_plate_edit_text, 5);
        sparseIntArray.put(R.id.screen_base_vehicle_skip_vehicle_insertion_label, 6);
        sparseIntArray.put(R.id.screen_base_vehicle_data_next_layout, 7);
    }

    public ScreenBaseVehicleDataBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds));
    }

    private ScreenBaseVehicleDataBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[7], (AutoCompleteTextView) objArr[5], (TextInputLayout) objArr[4], (ScrollView) objArr[1], (EditText) objArr[3], (TextInputLayout) objArr[2], (TextView) objArr[6]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
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
