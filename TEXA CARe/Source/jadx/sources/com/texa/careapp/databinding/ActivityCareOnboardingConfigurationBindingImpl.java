package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityCareOnboardingConfigurationBindingImpl extends ActivityCareOnboardingConfigurationBinding {
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
        sparseIntArray.put(R.id.activity_update_header, 1);
        sparseIntArray.put(R.id.activity_update_back_btn, 2);
        sparseIntArray.put(R.id.activity_update_progress_layout, 3);
        sparseIntArray.put(R.id.activity_update_message_primary, 4);
        sparseIntArray.put(R.id.activity_update_progress, 5);
        sparseIntArray.put(R.id.activity_update_message_secondary, 6);
        sparseIntArray.put(R.id.activity_update_message_success, 7);
        sparseIntArray.put(R.id.activity_update_status_container, 8);
        sparseIntArray.put(R.id.activity_update_kilometers_label, 9);
        sparseIntArray.put(R.id.activity_update_kilometers_input, 10);
        sparseIntArray.put(R.id.activity_update_kilometers_edit_text, 11);
        sparseIntArray.put(R.id.text_hint, 12);
        sparseIntArray.put(R.id.activity_update_nation_label, 13);
        sparseIntArray.put(R.id.activity_update_country_input, 14);
        sparseIntArray.put(R.id.activity_update_country_edit_text, 15);
        sparseIntArray.put(R.id.activity_update_registration_date_label, 16);
        sparseIntArray.put(R.id.activity_update_registration_date_input, 17);
        sparseIntArray.put(R.id.activity_update_registration_date_edit_text, 18);
        sparseIntArray.put(R.id.activity_update_button_layout, 19);
        sparseIntArray.put(R.id.activity_update_confirm, 20);
        sparseIntArray.put(R.id.activity_update_skip, 21);
    }

    public ActivityCareOnboardingConfigurationBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 22, sIncludes, sViewsWithIds));
    }

    private ActivityCareOnboardingConfigurationBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[2], (LinearLayout) objArr[19], (TextView) objArr[20], (EditText) objArr[15], (TextInputLayout) objArr[14], (RelativeLayout) objArr[1], (EditText) objArr[11], (TextInputLayout) objArr[10], (TextView) objArr[9], (TextView) objArr[4], (TextView) objArr[6], (TextView) objArr[7], (TextView) objArr[13], (ProgressBar) objArr[5], (LinearLayout) objArr[3], (EditText) objArr[18], (TextInputLayout) objArr[17], (TextView) objArr[16], (TextView) objArr[21], (LinearLayout) objArr[8], (TextView) objArr[12]);
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
