package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.views.AlertImageView;

/* JADX INFO: loaded from: classes2.dex */
public class ContactsGridBindingImpl extends ContactsGridBinding {
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
        sparseIntArray.put(R.id.central_operator_item, 1);
        sparseIntArray.put(R.id.sos_image, 2);
        sparseIntArray.put(R.id.sos_service_title, 3);
        sparseIntArray.put(R.id.sos_service_status, 4);
        sparseIntArray.put(R.id.emergency_button_alert_icon, 5);
        sparseIntArray.put(R.id.contacts_grid_badge, 6);
        sparseIntArray.put(R.id.contacts_grid_badge_text, 7);
        sparseIntArray.put(R.id.mechanic_item, 8);
        sparseIntArray.put(R.id.call_mechanic_button, 9);
        sparseIntArray.put(R.id.call_mechanic_title, 10);
        sparseIntArray.put(R.id.mechanic_description, 11);
        sparseIntArray.put(R.id.contact_sos_go_to_settings, 12);
    }

    public ContactsGridBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 13, sIncludes, sViewsWithIds));
    }

    private ContactsGridBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[9], (TextView) objArr[10], (RelativeLayout) objArr[1], (ImageView) objArr[12], (LinearLayout) objArr[6], (AppCompatTextView) objArr[7], (AlertImageView) objArr[5], (TextView) objArr[11], (RelativeLayout) objArr[8], (ImageView) objArr[2], (TextView) objArr[4], (TextView) objArr[3]);
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
