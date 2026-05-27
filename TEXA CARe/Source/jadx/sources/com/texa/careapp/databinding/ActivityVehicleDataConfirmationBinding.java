package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityVehicleDataConfirmationBinding extends ViewDataBinding {
    public final RelativeLayout activityUpdateConfirm;
    public final LinearLayout screenSigninActionbar;
    public final EditText vehicleDataConfirmKm;
    public final TextView vehicleDataConfirmModel;

    protected ActivityVehicleDataConfirmationBinding(Object obj, View view, int i, RelativeLayout relativeLayout, LinearLayout linearLayout, EditText editText, TextView textView) {
        super(obj, view, i);
        this.activityUpdateConfirm = relativeLayout;
        this.screenSigninActionbar = linearLayout;
        this.vehicleDataConfirmKm = editText;
        this.vehicleDataConfirmModel = textView;
    }

    public static ActivityVehicleDataConfirmationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityVehicleDataConfirmationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityVehicleDataConfirmationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_vehicle_data_confirmation, viewGroup, z, obj);
    }

    public static ActivityVehicleDataConfirmationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityVehicleDataConfirmationBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityVehicleDataConfirmationBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_vehicle_data_confirmation, null, false, obj);
    }

    public static ActivityVehicleDataConfirmationBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityVehicleDataConfirmationBinding bind(View view, Object obj) {
        return (ActivityVehicleDataConfirmationBinding) bind(obj, view, R.layout.activity_vehicle_data_confirmation);
    }
}
