package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingTripEventItemBinding extends ViewDataBinding {

    @Bindable
    protected EcoDrivingTripDetailScreen mAdapter;
    public final RelativeLayout screenEcoDrivingTripEventItemButton;
    public final TextView screenEcoDrivingTripEventItemDate;
    public final AppCompatTextView screenEcoDrivingTripEventItemDescription;
    public final ImageView screenEcoDrivingTripEventItemIcon;
    public final View screenEcoDrivingTripEventItemSeparator;
    public final AppCompatTextView screenEcoDrivingTripEventItemTitle;

    public abstract void setAdapter(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen);

    protected ScreenEcoDrivingTripEventItemBinding(Object obj, View view, int i, RelativeLayout relativeLayout, TextView textView, AppCompatTextView appCompatTextView, ImageView imageView, View view2, AppCompatTextView appCompatTextView2) {
        super(obj, view, i);
        this.screenEcoDrivingTripEventItemButton = relativeLayout;
        this.screenEcoDrivingTripEventItemDate = textView;
        this.screenEcoDrivingTripEventItemDescription = appCompatTextView;
        this.screenEcoDrivingTripEventItemIcon = imageView;
        this.screenEcoDrivingTripEventItemSeparator = view2;
        this.screenEcoDrivingTripEventItemTitle = appCompatTextView2;
    }

    public EcoDrivingTripDetailScreen getAdapter() {
        return this.mAdapter;
    }

    public static ScreenEcoDrivingTripEventItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripEventItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingTripEventItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_event_item, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingTripEventItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripEventItemBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingTripEventItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_trip_event_item, null, false, obj);
    }

    public static ScreenEcoDrivingTripEventItemBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingTripEventItemBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingTripEventItemBinding) bind(obj, view, R.layout.screen_eco_driving_trip_event_item);
    }
}
