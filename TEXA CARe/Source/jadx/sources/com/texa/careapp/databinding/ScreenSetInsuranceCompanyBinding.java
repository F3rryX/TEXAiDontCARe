package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenSetInsuranceCompanyBinding extends ViewDataBinding {
    public final ListView insuranceList;
    public final RelativeLayout otherCompanyButton;
    public final EditText searchInsuranceCompany;
    public final LinearLayout setInsuranceScreenContentLayout;
    public final TextView thresholdTitol;
    public final LinearLayout titleLayout;

    protected ScreenSetInsuranceCompanyBinding(Object obj, View view, int i, ListView listView, RelativeLayout relativeLayout, EditText editText, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2) {
        super(obj, view, i);
        this.insuranceList = listView;
        this.otherCompanyButton = relativeLayout;
        this.searchInsuranceCompany = editText;
        this.setInsuranceScreenContentLayout = linearLayout;
        this.thresholdTitol = textView;
        this.titleLayout = linearLayout2;
    }

    public static ScreenSetInsuranceCompanyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetInsuranceCompanyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenSetInsuranceCompanyBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_insurance_company, viewGroup, z, obj);
    }

    public static ScreenSetInsuranceCompanyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetInsuranceCompanyBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenSetInsuranceCompanyBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_set_insurance_company, null, false, obj);
    }

    public static ScreenSetInsuranceCompanyBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenSetInsuranceCompanyBinding bind(View view, Object obj) {
        return (ScreenSetInsuranceCompanyBinding) bind(obj, view, R.layout.screen_set_insurance_company);
    }
}
