package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenActivationServiceCompletedBinding extends ViewDataBinding {
    public final TextView okButton;
    public final CardView screenAcceptationSosServiceDescriptionCardLight;
    public final TextView screenAcceptationSosServiceDescriptionCardLightCar;
    public final TextView screenAcceptationSosServiceDescriptionCardLightPlate;
    public final CardView screenAcceptationSosServiceDescriptionCardPlus;
    public final AppCompatTextView screenAcceptationSosServiceDescriptionCardPlusCar;
    public final AppCompatTextView screenAcceptationSosServiceDescriptionCardPlusPlate;
    public final TextView screenAcceptationSosServiceDescriptionDueDay;
    public final TextView screenAcceptationSosServiceDescriptionDueMonth;
    public final TextView screenAcceptationSosServiceDescriptionLabel;
    public final TextView screenAcceptationSosServiceDescriptionTitle;
    public final LinearLayout screenAcceptationSosServiceDescriptionWhen;
    public final RelativeLayout tosFragmentContainer;

    protected ScreenActivationServiceCompletedBinding(Object obj, View view, int i, TextView textView, CardView cardView, TextView textView2, TextView textView3, CardView cardView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TextView textView4, TextView textView5, TextView textView6, TextView textView7, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.okButton = textView;
        this.screenAcceptationSosServiceDescriptionCardLight = cardView;
        this.screenAcceptationSosServiceDescriptionCardLightCar = textView2;
        this.screenAcceptationSosServiceDescriptionCardLightPlate = textView3;
        this.screenAcceptationSosServiceDescriptionCardPlus = cardView2;
        this.screenAcceptationSosServiceDescriptionCardPlusCar = appCompatTextView;
        this.screenAcceptationSosServiceDescriptionCardPlusPlate = appCompatTextView2;
        this.screenAcceptationSosServiceDescriptionDueDay = textView4;
        this.screenAcceptationSosServiceDescriptionDueMonth = textView5;
        this.screenAcceptationSosServiceDescriptionLabel = textView6;
        this.screenAcceptationSosServiceDescriptionTitle = textView7;
        this.screenAcceptationSosServiceDescriptionWhen = linearLayout;
        this.tosFragmentContainer = relativeLayout;
    }

    public static ScreenActivationServiceCompletedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationServiceCompletedBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenActivationServiceCompletedBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_service_completed, viewGroup, z, obj);
    }

    public static ScreenActivationServiceCompletedBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationServiceCompletedBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenActivationServiceCompletedBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_activation_service_completed, null, false, obj);
    }

    public static ScreenActivationServiceCompletedBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenActivationServiceCompletedBinding bind(View view, Object obj) {
        return (ScreenActivationServiceCompletedBinding) bind(obj, view, R.layout.screen_activation_service_completed);
    }
}
