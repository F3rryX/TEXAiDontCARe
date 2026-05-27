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
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.views.ArrowViewPagerIndicator;
import com.texa.careapp.views.CircleDisplay;
import com.texa.careapp.views.CirclePageIndicator;
import com.texa.careapp.views.ControlledViewPager;
import com.texa.careapp.views.DashboardEmergencyButton;
import com.texa.careapp.views.ViewPagerContainer;

/* JADX INFO: loaded from: classes2.dex */
public class FragmentDashboardV2BindingImpl extends FragmentDashboardV2Binding {
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
        sparseIntArray.put(R.id.fragment_dashboard_vehicle_pager_arrow, 1);
        sparseIntArray.put(R.id.fragment_dashboard_vehicle_pager, 2);
        sparseIntArray.put(R.id.dashboard_secondary_indicators_layout, 3);
        sparseIntArray.put(R.id.circle_display_1, 4);
        sparseIntArray.put(R.id.circle_display_1_label, 5);
        sparseIntArray.put(R.id.circle_display_2, 6);
        sparseIntArray.put(R.id.circle_display_2_label, 7);
        sparseIntArray.put(R.id.circle_display_3, 8);
        sparseIntArray.put(R.id.circle_display_3_label, 9);
        sparseIntArray.put(R.id.fragment_dashboard_vehicle_name_lay, 10);
        sparseIntArray.put(R.id.fragment_dashboard_vehicle_name, 11);
        sparseIntArray.put(R.id.fragment_dashboard_vehicle_name_icon, 12);
        sparseIntArray.put(R.id.fragment_dashboard_view_pager_container, 13);
        sparseIntArray.put(R.id.fragment_dashboard_view_pager, 14);
        sparseIntArray.put(R.id.fragment_dashboard_view_pager_indicator, 15);
        sparseIntArray.put(R.id.btn_dashboard_sos, 16);
    }

    public FragmentDashboardV2BindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 17, sIncludes, sViewsWithIds));
    }

    private FragmentDashboardV2BindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (DashboardEmergencyButton) objArr[16], (CircleDisplay) objArr[4], (TextView) objArr[5], (CircleDisplay) objArr[6], (TextView) objArr[7], (CircleDisplay) objArr[8], (TextView) objArr[9], (LinearLayout) objArr[3], (AppCompatTextView) objArr[11], (ImageView) objArr[12], (RelativeLayout) objArr[10], (ControlledViewPager) objArr[2], (ArrowViewPagerIndicator) objArr[1], (ViewPager) objArr[14], (ViewPagerContainer) objArr[13], (CirclePageIndicator) objArr[15]);
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
