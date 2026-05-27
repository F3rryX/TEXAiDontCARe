package com.texa.careapp.databinding;

import android.content.res.Resources;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.app.diagnosis.DiagnosisScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenEcoDrivingTripEventItemBindingImpl extends ScreenEcoDrivingTripEventItemBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private float mOldAdapterIsSmallScreenMboundView3AndroidDimenEcoDrivingDetailTripSmallItemHeightMboundView3AndroidDimenEcoDrivingDetailTripItemHeight;
    private float mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripItemHeight;
    private float mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight;
    private final RelativeLayout mboundView0;
    private final LinearLayout mboundView3;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.screen_eco_driving_trip_event_item_button, 4);
        sparseIntArray.put(R.id.screen_eco_driving_trip_event_item_separator, 5);
        sparseIntArray.put(R.id.screen_eco_driving_trip_event_item_title, 6);
        sparseIntArray.put(R.id.screen_eco_driving_trip_event_item_description, 7);
    }

    public ScreenEcoDrivingTripEventItemBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds));
    }

    private ScreenEcoDrivingTripEventItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (RelativeLayout) objArr[4], (TextView) objArr[1], (AppCompatTextView) objArr[7], (ImageView) objArr[2], (View) objArr[5], (AppCompatTextView) objArr[6]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[3];
        this.mboundView3 = linearLayout;
        linearLayout.setTag(null);
        this.screenEcoDrivingTripEventItemDate.setTag(null);
        this.screenEcoDrivingTripEventItemIcon.setTag(null);
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
        if (1 != i) {
            return false;
        }
        setAdapter((EcoDrivingTripDetailScreen) obj);
        return true;
    }

    @Override // com.texa.careapp.databinding.ScreenEcoDrivingTripEventItemBinding
    public void setAdapter(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen) {
        this.mAdapter = ecoDrivingTripDetailScreen;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return onChangeAdapterIsSmallScreen((ObservableField) obj, i2);
    }

    private boolean onChangeAdapterIsSmallScreen(ObservableField<Boolean> observableField, int i) {
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
        float dimension;
        float dimension2;
        long j2;
        long j3;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen = this.mAdapter;
        long j4 = j & 7;
        float dimension3 = 0.0f;
        if (j4 != 0) {
            ObservableField<Boolean> observableField = ecoDrivingTripDetailScreen != null ? ecoDrivingTripDetailScreen.isSmallScreen : null;
            updateRegistration(0, observableField);
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(observableField != null ? observableField.get() : null);
            if (j4 != 0) {
                if (zSafeUnbox) {
                    j2 = j | 16 | 64;
                    j3 = 256;
                } else {
                    j2 = j | 8 | 32;
                    j3 = 128;
                }
                j = j2 | j3;
            }
            Resources resources = this.mboundView3.getResources();
            dimension3 = zSafeUnbox ? resources.getDimension(R.dimen.eco_driving_detail_trip_small_item_height) : resources.getDimension(R.dimen.eco_driving_detail_trip_item_height);
            Resources resources2 = this.screenEcoDrivingTripEventItemIcon.getResources();
            dimension2 = zSafeUnbox ? resources2.getDimension(R.dimen.eco_driving_detail_trip_small_item_height) : resources2.getDimension(R.dimen.eco_driving_detail_trip_item_height);
            dimension = zSafeUnbox ? this.screenEcoDrivingTripEventItemDate.getResources().getDimension(R.dimen.eco_driving_detail_trip_small_item_height) : this.screenEcoDrivingTripEventItemDate.getResources().getDimension(R.dimen.eco_driving_detail_trip_item_height);
        } else {
            dimension = 0.0f;
            dimension2 = 0.0f;
        }
        long j5 = j & 7;
        if (j5 != 0) {
            DiagnosisScreen.setLayoutHeight(this.mboundView3, this.mOldAdapterIsSmallScreenMboundView3AndroidDimenEcoDrivingDetailTripSmallItemHeightMboundView3AndroidDimenEcoDrivingDetailTripItemHeight, dimension3);
            DiagnosisScreen.setLayoutHeight(this.screenEcoDrivingTripEventItemDate, this.mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripItemHeight, dimension);
            DiagnosisScreen.setLayoutHeight(this.screenEcoDrivingTripEventItemIcon, this.mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight, dimension2);
            DiagnosisScreen.setLayoutWidth(this.screenEcoDrivingTripEventItemIcon, this.mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight, dimension2);
        }
        if (j5 != 0) {
            this.mOldAdapterIsSmallScreenMboundView3AndroidDimenEcoDrivingDetailTripSmallItemHeightMboundView3AndroidDimenEcoDrivingDetailTripItemHeight = dimension3;
            this.mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripItemHeight = dimension;
            this.mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight = dimension2;
        }
    }
}
