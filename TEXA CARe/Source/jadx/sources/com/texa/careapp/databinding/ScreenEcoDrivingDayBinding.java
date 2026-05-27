package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenEcoDrivingDayBinding extends ViewDataBinding {
    public final TextView screeEcoDrivingDayItemDateDay1;
    public final TextView screeEcoDrivingDayItemDateDay2;
    public final TextView screeEcoDrivingDayItemDateDay3;
    public final TextView screeEcoDrivingDayItemDateDay4;
    public final TextView screeEcoDrivingDayItemDateDay5;
    public final TextView screeEcoDrivingDayItemDateDay6;
    public final TextView screeEcoDrivingDayItemDateDay7;
    public final TextView screeEcoDrivingDayItemDay1;
    public final TextView screeEcoDrivingDayItemDay2;
    public final TextView screeEcoDrivingDayItemDay3;
    public final TextView screeEcoDrivingDayItemDay4;
    public final TextView screeEcoDrivingDayItemDay5;
    public final TextView screeEcoDrivingDayItemDay6;
    public final TextView screeEcoDrivingDayItemDay7;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay1;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay2;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay3;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay4;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay5;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay6;
    public final LinearLayout screeEcoDrivingDayItemLayoutDay7;
    public final TextView screeEcoDrivingDayItemScoreDay1;
    public final TextView screeEcoDrivingDayItemScoreDay2;
    public final TextView screeEcoDrivingDayItemScoreDay3;
    public final TextView screeEcoDrivingDayItemScoreDay4;
    public final TextView screeEcoDrivingDayItemScoreDay5;
    public final TextView screeEcoDrivingDayItemScoreDay6;
    public final TextView screeEcoDrivingDayItemScoreDay7;

    protected ScreenEcoDrivingDayBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, TextView textView15, TextView textView16, TextView textView17, TextView textView18, TextView textView19, TextView textView20, TextView textView21) {
        super(obj, view, i);
        this.screeEcoDrivingDayItemDateDay1 = textView;
        this.screeEcoDrivingDayItemDateDay2 = textView2;
        this.screeEcoDrivingDayItemDateDay3 = textView3;
        this.screeEcoDrivingDayItemDateDay4 = textView4;
        this.screeEcoDrivingDayItemDateDay5 = textView5;
        this.screeEcoDrivingDayItemDateDay6 = textView6;
        this.screeEcoDrivingDayItemDateDay7 = textView7;
        this.screeEcoDrivingDayItemDay1 = textView8;
        this.screeEcoDrivingDayItemDay2 = textView9;
        this.screeEcoDrivingDayItemDay3 = textView10;
        this.screeEcoDrivingDayItemDay4 = textView11;
        this.screeEcoDrivingDayItemDay5 = textView12;
        this.screeEcoDrivingDayItemDay6 = textView13;
        this.screeEcoDrivingDayItemDay7 = textView14;
        this.screeEcoDrivingDayItemLayoutDay1 = linearLayout;
        this.screeEcoDrivingDayItemLayoutDay2 = linearLayout2;
        this.screeEcoDrivingDayItemLayoutDay3 = linearLayout3;
        this.screeEcoDrivingDayItemLayoutDay4 = linearLayout4;
        this.screeEcoDrivingDayItemLayoutDay5 = linearLayout5;
        this.screeEcoDrivingDayItemLayoutDay6 = linearLayout6;
        this.screeEcoDrivingDayItemLayoutDay7 = linearLayout7;
        this.screeEcoDrivingDayItemScoreDay1 = textView15;
        this.screeEcoDrivingDayItemScoreDay2 = textView16;
        this.screeEcoDrivingDayItemScoreDay3 = textView17;
        this.screeEcoDrivingDayItemScoreDay4 = textView18;
        this.screeEcoDrivingDayItemScoreDay5 = textView19;
        this.screeEcoDrivingDayItemScoreDay6 = textView20;
        this.screeEcoDrivingDayItemScoreDay7 = textView21;
    }

    public static ScreenEcoDrivingDayBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingDayBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenEcoDrivingDayBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_day, viewGroup, z, obj);
    }

    public static ScreenEcoDrivingDayBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingDayBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenEcoDrivingDayBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_eco_driving_day, null, false, obj);
    }

    public static ScreenEcoDrivingDayBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenEcoDrivingDayBinding bind(View view, Object obj) {
        return (ScreenEcoDrivingDayBinding) bind(obj, view, R.layout.screen_eco_driving_day);
    }
}
