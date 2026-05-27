package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenInsertNewThresholdBinding extends ViewDataBinding {
    public final EditableDateView editDateViewNewThreshold;
    public final RelativeLayout layoutAddConfirmed;
    public final LinearLayout layoutSetDataNewThreshold;
    public final Spinner thresholdTypeSpinner;

    protected ScreenInsertNewThresholdBinding(Object obj, View view, int i, EditableDateView editableDateView, RelativeLayout relativeLayout, LinearLayout linearLayout, Spinner spinner) {
        super(obj, view, i);
        this.editDateViewNewThreshold = editableDateView;
        this.layoutAddConfirmed = relativeLayout;
        this.layoutSetDataNewThreshold = linearLayout;
        this.thresholdTypeSpinner = spinner;
    }

    public static ScreenInsertNewThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenInsertNewThresholdBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenInsertNewThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_insert_new_threshold, viewGroup, z, obj);
    }

    public static ScreenInsertNewThresholdBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenInsertNewThresholdBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenInsertNewThresholdBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_insert_new_threshold, null, false, obj);
    }

    public static ScreenInsertNewThresholdBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenInsertNewThresholdBinding bind(View view, Object obj) {
        return (ScreenInsertNewThresholdBinding) bind(obj, view, R.layout.screen_insert_new_threshold);
    }
}
