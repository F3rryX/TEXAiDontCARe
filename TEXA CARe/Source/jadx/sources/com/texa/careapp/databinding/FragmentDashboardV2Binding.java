package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
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
public abstract class FragmentDashboardV2Binding extends ViewDataBinding {
    public final DashboardEmergencyButton btnDashboardSos;
    public final CircleDisplay circleDisplay1;
    public final TextView circleDisplay1Label;
    public final CircleDisplay circleDisplay2;
    public final TextView circleDisplay2Label;
    public final CircleDisplay circleDisplay3;
    public final TextView circleDisplay3Label;
    public final LinearLayout dashboardSecondaryIndicatorsLayout;
    public final AppCompatTextView fragmentDashboardVehicleName;
    public final ImageView fragmentDashboardVehicleNameIcon;
    public final RelativeLayout fragmentDashboardVehicleNameLay;
    public final ControlledViewPager fragmentDashboardVehiclePager;
    public final ArrowViewPagerIndicator fragmentDashboardVehiclePagerArrow;
    public final ViewPager fragmentDashboardViewPager;
    public final ViewPagerContainer fragmentDashboardViewPagerContainer;
    public final CirclePageIndicator fragmentDashboardViewPagerIndicator;

    protected FragmentDashboardV2Binding(Object obj, View view, int i, DashboardEmergencyButton dashboardEmergencyButton, CircleDisplay circleDisplay, TextView textView, CircleDisplay circleDisplay2, TextView textView2, CircleDisplay circleDisplay3, TextView textView3, LinearLayout linearLayout, AppCompatTextView appCompatTextView, ImageView imageView, RelativeLayout relativeLayout, ControlledViewPager controlledViewPager, ArrowViewPagerIndicator arrowViewPagerIndicator, ViewPager viewPager, ViewPagerContainer viewPagerContainer, CirclePageIndicator circlePageIndicator) {
        super(obj, view, i);
        this.btnDashboardSos = dashboardEmergencyButton;
        this.circleDisplay1 = circleDisplay;
        this.circleDisplay1Label = textView;
        this.circleDisplay2 = circleDisplay2;
        this.circleDisplay2Label = textView2;
        this.circleDisplay3 = circleDisplay3;
        this.circleDisplay3Label = textView3;
        this.dashboardSecondaryIndicatorsLayout = linearLayout;
        this.fragmentDashboardVehicleName = appCompatTextView;
        this.fragmentDashboardVehicleNameIcon = imageView;
        this.fragmentDashboardVehicleNameLay = relativeLayout;
        this.fragmentDashboardVehiclePager = controlledViewPager;
        this.fragmentDashboardVehiclePagerArrow = arrowViewPagerIndicator;
        this.fragmentDashboardViewPager = viewPager;
        this.fragmentDashboardViewPagerContainer = viewPagerContainer;
        this.fragmentDashboardViewPagerIndicator = circlePageIndicator;
    }

    public static FragmentDashboardV2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDashboardV2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentDashboardV2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_dashboard_v2, viewGroup, z, obj);
    }

    public static FragmentDashboardV2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDashboardV2Binding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentDashboardV2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_dashboard_v2, null, false, obj);
    }

    public static FragmentDashboardV2Binding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDashboardV2Binding bind(View view, Object obj) {
        return (FragmentDashboardV2Binding) bind(obj, view, R.layout.fragment_dashboard_v2);
    }
}
