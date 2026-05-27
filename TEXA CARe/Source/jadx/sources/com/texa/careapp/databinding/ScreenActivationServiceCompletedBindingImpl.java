package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenActivationServiceCompletedBindingImpl extends ScreenActivationServiceCompletedBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;

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
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_title, 1);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_card_plus, 2);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_card_plus_car, 3);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_card_plus_plate, 4);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_when, 5);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_label, 6);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_due_day, 7);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_due_month, 8);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_card_light, 9);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_card_light_car, 10);
        sparseIntArray.put(R.id.screen_acceptation_sos_service_description_card_light_plate, 11);
        sparseIntArray.put(R.id.ok_button, 12);
    }

    public ScreenActivationServiceCompletedBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 13, sIncludes, sViewsWithIds));
    }

    private ScreenActivationServiceCompletedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[12], (CardView) objArr[9], (TextView) objArr[10], (TextView) objArr[11], (CardView) objArr[2], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[4], (TextView) objArr[7], (TextView) objArr[8], (TextView) objArr[6], (TextView) objArr[1], (LinearLayout) objArr[5], (RelativeLayout) objArr[0]);
        this.mDirtyFlags = -1L;
        this.tosFragmentContainer.setTag(null);
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
