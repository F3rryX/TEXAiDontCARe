package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScheduleHeaderListItemBinding extends ViewDataBinding {
    public final TextView titleHeader;

    protected ScheduleHeaderListItemBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.titleHeader = textView;
    }

    public static ScheduleHeaderListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScheduleHeaderListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScheduleHeaderListItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.schedule_header_list_item, viewGroup, z, obj);
    }

    public static ScheduleHeaderListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScheduleHeaderListItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScheduleHeaderListItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.schedule_header_list_item, null, false, obj);
    }

    public static ScheduleHeaderListItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScheduleHeaderListItemBinding bind(View view, Object obj) {
        return (ScheduleHeaderListItemBinding) bind(obj, view, R.layout.schedule_header_list_item);
    }
}
