package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSelectNewScheduleBinding extends ViewDataBinding {
    public final TextView labelAddConfirmed;
    public final LinearLayout layoutAddConfirmed;
    public final Spinner scheduleTypeSpinner;
    public final LinearLayout userDataContainer;
    public final TextView userLabel;
    public final Spinner userSpinner;
    public final LinearLayout vehicleDataContainer;
    public final TextView vehicleLabel;
    public final Spinner vehicleSpinner;

    protected ScreenSelectNewScheduleBinding(Object obj, View view, int i, TextView textView, LinearLayout linearLayout, Spinner spinner, LinearLayout linearLayout2, TextView textView2, Spinner spinner2, LinearLayout linearLayout3, TextView textView3, Spinner spinner3) {
        super(obj, view, i);
        this.labelAddConfirmed = textView;
        this.layoutAddConfirmed = linearLayout;
        this.scheduleTypeSpinner = spinner;
        this.userDataContainer = linearLayout2;
        this.userLabel = textView2;
        this.userSpinner = spinner2;
        this.vehicleDataContainer = linearLayout3;
        this.vehicleLabel = textView3;
        this.vehicleSpinner = spinner3;
    }

    public static ScreenSelectNewScheduleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSelectNewScheduleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSelectNewScheduleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_select_new_schedule, viewGroup, z, obj);
    }

    public static ScreenSelectNewScheduleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSelectNewScheduleBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSelectNewScheduleBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_select_new_schedule, null, false, obj);
    }

    public static ScreenSelectNewScheduleBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSelectNewScheduleBinding bind(View view, Object obj) {
        return (ScreenSelectNewScheduleBinding) bind(obj, view, R.layout.screen_select_new_schedule);
    }
}
