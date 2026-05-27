package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDialogCountryBinding extends ViewDataBinding {
    public final TextView screenDialogCountryCancel;
    public final LinearLayout screenDialogCountryHeader;
    public final RelativeLayout screenDialogCountryLay;
    public final RecyclerView screenDialogCountryRecycler;
    public final EditText screenDialogCountrySearch;

    protected ScreenDialogCountryBinding(Object obj, View view, int i, TextView textView, LinearLayout linearLayout, RelativeLayout relativeLayout, RecyclerView recyclerView, EditText editText) {
        super(obj, view, i);
        this.screenDialogCountryCancel = textView;
        this.screenDialogCountryHeader = linearLayout;
        this.screenDialogCountryLay = relativeLayout;
        this.screenDialogCountryRecycler = recyclerView;
        this.screenDialogCountrySearch = editText;
    }

    public static ScreenDialogCountryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogCountryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDialogCountryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_country, viewGroup, z, obj);
    }

    public static ScreenDialogCountryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogCountryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDialogCountryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_dialog_country, null, false, obj);
    }

    public static ScreenDialogCountryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDialogCountryBinding bind(View view, Object obj) {
        return (ScreenDialogCountryBinding) bind(obj, view, R.layout.screen_dialog_country);
    }
}
