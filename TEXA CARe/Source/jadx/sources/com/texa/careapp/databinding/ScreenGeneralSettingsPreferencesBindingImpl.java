package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenGeneralSettingsPreferencesBindingImpl extends ScreenGeneralSettingsPreferencesBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ScrollView mboundView0;

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
        sparseIntArray.put(R.id.button_enable_notification, 1);
        sparseIntArray.put(R.id.toggleButton_enable_notification, 2);
        sparseIntArray.put(R.id.button_sound_on_connection, 3);
        sparseIntArray.put(R.id.toggleButton_sound_on_connection, 4);
        sparseIntArray.put(R.id.button_additional_phone_impact_detection, 5);
        sparseIntArray.put(R.id.toggleButton_additional_phone_impact_detection, 6);
        sparseIntArray.put(R.id.button_eco_driving_activation, 7);
        sparseIntArray.put(R.id.toggleButton_eco_driving_activation, 8);
        sparseIntArray.put(R.id.button_eco_driving_profile, 9);
        sparseIntArray.put(R.id.radio_group_profile_eco_driving, 10);
        sparseIntArray.put(R.id.radio_eco_driving_profile_eco, 11);
        sparseIntArray.put(R.id.radio_eco_driving_profile_normal, 12);
        sparseIntArray.put(R.id.radio_eco_driving_profile_sport, 13);
    }

    public ScreenGeneralSettingsPreferencesBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 14, sIncludes, sViewsWithIds));
    }

    private ScreenGeneralSettingsPreferencesBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[5], (RelativeLayout) objArr[7], (LinearLayout) objArr[9], (RelativeLayout) objArr[1], (RelativeLayout) objArr[3], (RadioButton) objArr[11], (RadioButton) objArr[12], (RadioButton) objArr[13], (RadioGroup) objArr[10], (SwitchCompat) objArr[6], (SwitchCompat) objArr[8], (SwitchCompat) objArr[2], (SwitchCompat) objArr[4]);
        this.mDirtyFlags = -1L;
        ScrollView scrollView = (ScrollView) objArr[0];
        this.mboundView0 = scrollView;
        scrollView.setTag(null);
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
