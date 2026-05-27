package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenBaseVehicleDataBinding extends ViewDataBinding {
    public final RelativeLayout screenBaseVehicleDataNextLayout;
    public final AutoCompleteTextView screenBaseVehicleDataPlateEditText;
    public final TextInputLayout screenBaseVehicleDataPlateInput;
    public final ScrollView screenBaseVehicleDataScrollView;
    public final EditText screenBaseVehicleDataVehicleModelEditText;
    public final TextInputLayout screenBaseVehicleDataVehicleModelInput;
    public final TextView screenBaseVehicleSkipVehicleInsertionLabel;

    protected ScreenBaseVehicleDataBinding(Object obj, View view, int i, RelativeLayout relativeLayout, AutoCompleteTextView autoCompleteTextView, TextInputLayout textInputLayout, ScrollView scrollView, EditText editText, TextInputLayout textInputLayout2, TextView textView) {
        super(obj, view, i);
        this.screenBaseVehicleDataNextLayout = relativeLayout;
        this.screenBaseVehicleDataPlateEditText = autoCompleteTextView;
        this.screenBaseVehicleDataPlateInput = textInputLayout;
        this.screenBaseVehicleDataScrollView = scrollView;
        this.screenBaseVehicleDataVehicleModelEditText = editText;
        this.screenBaseVehicleDataVehicleModelInput = textInputLayout2;
        this.screenBaseVehicleSkipVehicleInsertionLabel = textView;
    }

    public static ScreenBaseVehicleDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenBaseVehicleDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenBaseVehicleDataBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_base_vehicle_data, viewGroup, z, obj);
    }

    public static ScreenBaseVehicleDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenBaseVehicleDataBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenBaseVehicleDataBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_base_vehicle_data, null, false, obj);
    }

    public static ScreenBaseVehicleDataBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenBaseVehicleDataBinding bind(View view, Object obj) {
        return (ScreenBaseVehicleDataBinding) bind(obj, view, R.layout.screen_base_vehicle_data);
    }
}
