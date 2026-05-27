package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenScheduleGridBinding extends ViewDataBinding {
    public final FloatingActionButton addNewScheduleFloatingButton;
    public final LinearLayout emptyView;
    public final LinearLayout gotoSettings;
    public final RecyclerView screenScheduleRecycler;
    public final SwipeRefreshLayout screenScheduleRefresh;

    protected ScreenScheduleGridBinding(Object obj, View view, int i, FloatingActionButton floatingActionButton, LinearLayout linearLayout, LinearLayout linearLayout2, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        super(obj, view, i);
        this.addNewScheduleFloatingButton = floatingActionButton;
        this.emptyView = linearLayout;
        this.gotoSettings = linearLayout2;
        this.screenScheduleRecycler = recyclerView;
        this.screenScheduleRefresh = swipeRefreshLayout;
    }

    public static ScreenScheduleGridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenScheduleGridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenScheduleGridBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_schedule_grid, viewGroup, z, obj);
    }

    public static ScreenScheduleGridBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenScheduleGridBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenScheduleGridBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_schedule_grid, null, false, obj);
    }

    public static ScreenScheduleGridBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenScheduleGridBinding bind(View view, Object obj) {
        return (ScreenScheduleGridBinding) bind(obj, view, R.layout.screen_schedule_grid);
    }
}
