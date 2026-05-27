package com.texa.careapp.databinding;

import android.content.res.Resources;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.DiagnosisScreen;
import com.texa.careapp.app.settings.services.SettingsServicesAdapter;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsServicesListItemBindingImpl extends SettingsServicesListItemBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private float mOldSettingsAdapterPreLollipopVersionSettingsServicesListItemInfoLayAndroidDimenSettingServicesPrelollipopSettingsServicesListItemInfoLayAndroidDimenSettingServicesPostlollipop;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.settings_services_list_item_main_info, 2);
        sparseIntArray.put(R.id.settings_services_list_item_second_info, 3);
        sparseIntArray.put(R.id.settings_services_list_item_status, 4);
        sparseIntArray.put(R.id.settings_services_list_item_delete, 5);
        sparseIntArray.put(R.id.alert_icon_service, 6);
        sparseIntArray.put(R.id.settings_services_list_item_label, 7);
        sparseIntArray.put(R.id.settings_services_list_item_due_day, 8);
        sparseIntArray.put(R.id.settings_services_list_item_due_month, 9);
    }

    public SettingsServicesListItemBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds));
    }

    private SettingsServicesListItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (ImageView) objArr[6], (CardView) objArr[0], (AppCompatTextView) objArr[5], (TextView) objArr[8], (TextView) objArr[9], (LinearLayout) objArr[1], (TextView) objArr[7], (AppCompatTextView) objArr[2], (AppCompatTextView) objArr[3], (AppCompatTextView) objArr[4]);
        this.mDirtyFlags = -1L;
        this.settingsServicesListItemCardView.setTag(null);
        this.settingsServicesListItemInfoLay.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
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
    public boolean setVariable(int i, Object obj) {
        if (3 != i) {
            return false;
        }
        setSettingsAdapter((SettingsServicesAdapter) obj);
        return true;
    }

    @Override // com.texa.careapp.databinding.SettingsServicesListItemBinding
    public void setSettingsAdapter(SettingsServicesAdapter settingsServicesAdapter) {
        this.mSettingsAdapter = settingsServicesAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return onChangeSettingsAdapterPreLollipopVersion((ObservableField) obj, i2);
    }

    private boolean onChangeSettingsAdapterPreLollipopVersion(ObservableField<Boolean> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        float f;
        float dimension;
        float dimension2;
        Resources resources;
        long j2;
        long j3;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        SettingsServicesAdapter settingsServicesAdapter = this.mSettingsAdapter;
        long j4 = j & 7;
        float dimension3 = 0.0f;
        if (j4 != 0) {
            ObservableField<Boolean> observableField = settingsServicesAdapter != null ? settingsServicesAdapter.preLollipopVersion : null;
            updateRegistration(0, observableField);
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(observableField != null ? observableField.get() : null);
            if (j4 != 0) {
                if (zSafeUnbox) {
                    j2 = j | 16 | 64 | 256;
                    j3 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                } else {
                    j2 = j | 8 | 32 | 128;
                    j3 = 512;
                }
                j = j2 | j3;
            }
            int i = R.dimen.zero_dp;
            Resources resources2 = this.settingsServicesListItemCardView.getResources();
            float dimension4 = zSafeUnbox ? resources2.getDimension(R.dimen.margin_default) : resources2.getDimension(R.dimen.zero_dp);
            dimension = this.settingsServicesListItemInfoLay.getResources().getDimension(zSafeUnbox ? R.dimen.setting_services_prelollipop : R.dimen.setting_services_postlollipop);
            Resources resources3 = this.settingsServicesListItemCardView.getResources();
            dimension2 = zSafeUnbox ? resources3.getDimension(R.dimen.zero_dp) : resources3.getDimension(R.dimen.activity_vertical_margin);
            if (zSafeUnbox) {
                resources = this.settingsServicesListItemCardView.getResources();
            } else {
                resources = this.settingsServicesListItemCardView.getResources();
                i = R.dimen.activity_horizontal_margin;
            }
            dimension3 = resources.getDimension(i);
            f = dimension4;
        } else {
            f = 0.0f;
            dimension = 0.0f;
            dimension2 = 0.0f;
        }
        long j5 = j & 7;
        if (j5 != 0) {
            SettingsServicesAdapter.setMarginStart(this.settingsServicesListItemCardView, dimension3);
            SettingsServicesAdapter.setMarginEnd(this.settingsServicesListItemCardView, dimension3);
            SettingsServicesAdapter.setMarginTop(this.settingsServicesListItemCardView, dimension2);
            SettingsServicesAdapter.setMarginBottom(this.settingsServicesListItemCardView, f);
            DiagnosisScreen.setLayoutWidth(this.settingsServicesListItemInfoLay, this.mOldSettingsAdapterPreLollipopVersionSettingsServicesListItemInfoLayAndroidDimenSettingServicesPrelollipopSettingsServicesListItemInfoLayAndroidDimenSettingServicesPostlollipop, dimension);
        }
        if (j5 != 0) {
            this.mOldSettingsAdapterPreLollipopVersionSettingsServicesListItemInfoLayAndroidDimenSettingServicesPrelollipopSettingsServicesListItemInfoLayAndroidDimenSettingServicesPostlollipop = dimension;
        }
    }
}
