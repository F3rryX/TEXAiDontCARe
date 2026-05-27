package com.texa.careapp.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.views.CirclePageIndicator;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityWalkthroughBindingImpl extends ActivityWalkthroughBinding {
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
        sparseIntArray.put(R.id.activity_walkthrough_video_view, 1);
        sparseIntArray.put(R.id.activity_walkthrough_click, 2);
        sparseIntArray.put(R.id.activity_walkthrough_pager, 3);
        sparseIntArray.put(R.id.activity_walkthrough_bottom_lay, 4);
        sparseIntArray.put(R.id.activity_walkthrough_bottom_lay_content, 5);
        sparseIntArray.put(R.id.activity_walkthrough_indicator, 6);
        sparseIntArray.put(R.id.activity_walkthrough_btn_skip, 7);
        sparseIntArray.put(R.id.activity_walkthrough_btn_next, 8);
    }

    public ActivityWalkthroughBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private ActivityWalkthroughBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[4], (RelativeLayout) objArr[5], (RelativeLayout) objArr[8], (TextView) objArr[7], (View) objArr[2], (CirclePageIndicator) objArr[6], (ViewPager) objArr[3], (VideoView) objArr[1]);
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
