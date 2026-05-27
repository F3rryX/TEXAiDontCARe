package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenProblemResolutionBindingImpl extends ScreenProblemResolutionBinding {
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
        sparseIntArray.put(R.id.scroll_problem_resolution, 1);
        sparseIntArray.put(R.id.container_text_bt_diagnostic, 2);
        sparseIntArray.put(R.id.text_view_title_bt_diagnostic, 3);
        sparseIntArray.put(R.id.text_view_subtitle_bt_diagnostic, 4);
        sparseIntArray.put(R.id.img_bt_diagnostic, 5);
        sparseIntArray.put(R.id.container_view_care_diagnostic, 6);
        sparseIntArray.put(R.id.container_text_care_diagnostic, 7);
        sparseIntArray.put(R.id.text_view_title_care_diagnostic, 8);
        sparseIntArray.put(R.id.text_view_subtitle_care_diagnostic, 9);
        sparseIntArray.put(R.id.img_care_diagnostic, 10);
        sparseIntArray.put(R.id.progress_care_diagnostic, 11);
        sparseIntArray.put(R.id.container_view_turn_off_engine_diagnostic, 12);
        sparseIntArray.put(R.id.container_text_turn_of_diagnostic, 13);
        sparseIntArray.put(R.id.text_view_title_turn_off_diagnostic, 14);
        sparseIntArray.put(R.id.text_view_subtitle_turn_off_diagnostic, 15);
        sparseIntArray.put(R.id.img_turn_off_engine_diagnostic, 16);
        sparseIntArray.put(R.id.progress_turn_off_engine_diagnostic, 17);
        sparseIntArray.put(R.id.container_view_upload_trip_diagnostic, 18);
        sparseIntArray.put(R.id.container_text_trip_diagnostic, 19);
        sparseIntArray.put(R.id.text_view_title_trip_diagnostic, 20);
        sparseIntArray.put(R.id.text_view_subtitle_trip_diagnostic, 21);
        sparseIntArray.put(R.id.img_trip_diagnostic, 22);
        sparseIntArray.put(R.id.progress_trip_diagnostic, 23);
        sparseIntArray.put(R.id.container_completed_diagnostic, 24);
        sparseIntArray.put(R.id.problem_resolution_button, 25);
        sparseIntArray.put(R.id.problem_resolution_text_button, 26);
    }

    public ScreenProblemResolutionBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 27, sIncludes, sViewsWithIds));
    }

    private ScreenProblemResolutionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[24], (LinearLayout) objArr[2], (LinearLayout) objArr[7], (LinearLayout) objArr[19], (LinearLayout) objArr[13], (RelativeLayout) objArr[6], (RelativeLayout) objArr[12], (RelativeLayout) objArr[18], (ImageView) objArr[5], (ImageView) objArr[10], (ImageView) objArr[22], (ImageView) objArr[16], (RelativeLayout) objArr[25], (TextView) objArr[26], (ProgressBar) objArr[11], (ProgressBar) objArr[23], (ProgressBar) objArr[17], (ScrollView) objArr[1], (TextView) objArr[4], (TextView) objArr[9], (TextView) objArr[21], (TextView) objArr[15], (TextView) objArr[3], (TextView) objArr[8], (TextView) objArr[20], (TextView) objArr[14]);
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
