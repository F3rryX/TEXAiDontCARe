package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.EditableDateView;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenSettingsUserBindingImpl extends ScreenSettingsUserBinding {
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
        sparseIntArray.put(R.id.edit_text_user_first_name, 1);
        sparseIntArray.put(R.id.edit_text_user_last_name, 2);
        sparseIntArray.put(R.id.edit_text_user_fiscal_code, 3);
        sparseIntArray.put(R.id.edit_text_user_email, 4);
        sparseIntArray.put(R.id.edit_text_user_phone_number, 5);
        sparseIntArray.put(R.id.layout_exp_driver_license, 6);
        sparseIntArray.put(R.id.editDateView_user_driver_license, 7);
        sparseIntArray.put(R.id.layout_set_user_address, 8);
        sparseIntArray.put(R.id.icon_set_user_address, 9);
        sparseIntArray.put(R.id.div_top_user_logout, 10);
        sparseIntArray.put(R.id.layout_user_logout, 11);
    }

    public ScreenSettingsUserBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 12, sIncludes, sViewsWithIds));
    }

    private ScreenSettingsUserBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[10], (EditableDateView) objArr[7], (EditText) objArr[4], (EditText) objArr[1], (EditText) objArr[3], (EditText) objArr[2], (EditText) objArr[5], (ImageView) objArr[9], (RelativeLayout) objArr[6], (RelativeLayout) objArr[8], (LinearLayout) objArr[11]);
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
