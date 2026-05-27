package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenCompanyInfoBinding extends ViewDataBinding {
    public final TextView textviewAdministrativeHeadquartersPlant;
    public final TextView textviewCompanyFax;
    public final TextView textviewCompanyInfo1;
    public final TextView textviewCompanyInfo2;
    public final TextView textviewCompanyInfo3;
    public final TextView textviewCompanyInfo4;
    public final TextView textviewCompanyInfo5;
    public final TextView textviewCompanyPhone;
    public final TextView textviewCompanySite;
    public final TextView textviewRegisteredOffice;

    protected ScreenCompanyInfoBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10) {
        super(obj, view, i);
        this.textviewAdministrativeHeadquartersPlant = textView;
        this.textviewCompanyFax = textView2;
        this.textviewCompanyInfo1 = textView3;
        this.textviewCompanyInfo2 = textView4;
        this.textviewCompanyInfo3 = textView5;
        this.textviewCompanyInfo4 = textView6;
        this.textviewCompanyInfo5 = textView7;
        this.textviewCompanyPhone = textView8;
        this.textviewCompanySite = textView9;
        this.textviewRegisteredOffice = textView10;
    }

    public static ScreenCompanyInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCompanyInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenCompanyInfoBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_company_info, viewGroup, z, obj);
    }

    public static ScreenCompanyInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCompanyInfoBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenCompanyInfoBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_company_info, null, false, obj);
    }

    public static ScreenCompanyInfoBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenCompanyInfoBinding bind(View view, Object obj) {
        return (ScreenCompanyInfoBinding) bind(obj, view, R.layout.screen_company_info);
    }
}
