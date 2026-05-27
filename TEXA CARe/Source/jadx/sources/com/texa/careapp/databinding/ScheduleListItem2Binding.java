package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScheduleListItem2Binding extends ViewDataBinding {
    public final TextView betweenText;
    public final RelativeLayout cardView;
    public final LinearLayout deleteButton;
    public final LinearLayout refreshButton;
    public final RelativeLayout relativeLayout;
    public final AppCompatTextView scheduleDay;
    public final TextView scheduleDescription;
    public final TextView scheduleExpiredDate;
    public final LinearLayout scheduleListCircleBackground;
    public final AppCompatTextView scheduleMonth;
    public final AppCompatTextView scheduleTitle;
    public final LinearLayout undeletableButton;

    protected ScheduleListItem2Binding(Object obj, View view, int i, TextView textView, RelativeLayout relativeLayout, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout2, AppCompatTextView appCompatTextView, TextView textView2, TextView textView3, LinearLayout linearLayout3, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, LinearLayout linearLayout4) {
        super(obj, view, i);
        this.betweenText = textView;
        this.cardView = relativeLayout;
        this.deleteButton = linearLayout;
        this.refreshButton = linearLayout2;
        this.relativeLayout = relativeLayout2;
        this.scheduleDay = appCompatTextView;
        this.scheduleDescription = textView2;
        this.scheduleExpiredDate = textView3;
        this.scheduleListCircleBackground = linearLayout3;
        this.scheduleMonth = appCompatTextView2;
        this.scheduleTitle = appCompatTextView3;
        this.undeletableButton = linearLayout4;
    }

    public static ScheduleListItem2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScheduleListItem2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScheduleListItem2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.schedule_list_item2, viewGroup, z, obj);
    }

    public static ScheduleListItem2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScheduleListItem2Binding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScheduleListItem2Binding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.schedule_list_item2, null, false, obj);
    }

    public static ScheduleListItem2Binding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScheduleListItem2Binding bind(View view, Object obj) {
        return (ScheduleListItem2Binding) bind(obj, view, R.layout.schedule_list_item2);
    }
}
