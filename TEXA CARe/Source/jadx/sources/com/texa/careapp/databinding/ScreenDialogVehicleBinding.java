package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogVehicleBinding extends ViewDataBinding {
    public final TextView screenDialogVehicleCancel;
    public final TextView screenDialogVehicleDescription;
    public final LinearLayout screenDialogVehicleLay;
    public final ProgressBar screenDialogVehicleProgress;
    public final RecyclerView screenDialogVehicleRecycler;
    public final EditText screenDialogVehicleSearch;

    protected ScreenDialogVehicleBinding(Object obj, View view, int i, TextView textView, TextView textView2, LinearLayout linearLayout, ProgressBar progressBar, RecyclerView recyclerView, EditText editText) {
        super(obj, view, i);
        this.screenDialogVehicleCancel = textView;
        this.screenDialogVehicleDescription = textView2;
        this.screenDialogVehicleLay = linearLayout;
        this.screenDialogVehicleProgress = progressBar;
        this.screenDialogVehicleRecycler = recyclerView;
        this.screenDialogVehicleSearch = editText;
    }

    public static ScreenDialogVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_vehicle, viewGroup, z, obj);
    }

    public static ScreenDialogVehicleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogVehicleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_vehicle, null, false, obj);
    }

    public static ScreenDialogVehicleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogVehicleBinding bind(View view, Object obj) {
        return (ScreenDialogVehicleBinding) bind(obj, view, R.layout.screen_dialog_vehicle);
    }
}
