package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.eftimoff.androipathview.PathView;
import com.texa.care.R;
import com.texa.careapp.utils.databind.DataBindDiagnosis;
import com.texa.careapp.views.RelativeTimeTextView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenDiagnosisBinding extends ViewDataBinding {
    public final ImageView diagnosisAdvancedCircle;
    public final ImageView diagnosisAdvancedElement;
    public final ImageView diagnosisAdvancedImage;
    public final TextView diagnosisAdvancedText;
    public final ImageView diagnosisBatteryStateCircle;
    public final ImageView diagnosisBatteryStateElement;
    public final ImageView diagnosisBatteryStateImage;
    public final TextView diagnosisBatteryStateLabel;
    public final TextView diagnosisBatteryStateValue;
    public final View diagnosisCarBotPlaceholder;
    public final LinearLayout diagnosisCarLayout;
    public final RelativeLayout diagnosisCarLayoutContainer;
    public final AppCompatTextView diagnosisCarName;
    public final PathView diagnosisCarPathview;
    public final LinearLayout diagnosisContainer;
    public final RelativeTimeTextView diagnosisDiagnosisStatus;
    public final TextView diagnosisDiagnosisStatusPlaceholder;
    public final ImageView diagnosisEngineTemperatureCircle;
    public final ImageView diagnosisEngineTemperatureElement;
    public final ImageView diagnosisEngineTemperatureImage;
    public final TextView diagnosisEngineTemperatureLabel;
    public final TextView diagnosisEngineTemperatureValue;
    public final LinearLayout diagnosisLayoutContainer;
    public final ImageView diagnosisMaintenanceScheduledCircle;
    public final ImageView diagnosisMaintenanceScheduledElement;
    public final ImageView diagnosisMaintenanceScheduledImage;
    public final ImageView diagnosisParametersCircle;
    public final ImageView diagnosisParametersElement;
    public final ImageView diagnosisParametersImage;
    public final TextView diagnosisServiceLabel;
    public final TextView diagnosisServiceValue;
    public final ImageView diagnosisStandardCircle;
    public final ImageView diagnosisStandardElement;
    public final ImageView diagnosisStandardImage;

    @Bindable
    protected DataBindDiagnosis mDiagnosis;

    public abstract void setDiagnosis(DataBindDiagnosis dataBindDiagnosis);

    protected ScreenDiagnosisBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, ImageView imageView4, ImageView imageView5, ImageView imageView6, TextView textView2, TextView textView3, View view2, LinearLayout linearLayout, RelativeLayout relativeLayout, AppCompatTextView appCompatTextView, PathView pathView, LinearLayout linearLayout2, RelativeTimeTextView relativeTimeTextView, TextView textView4, ImageView imageView7, ImageView imageView8, ImageView imageView9, TextView textView5, TextView textView6, LinearLayout linearLayout3, ImageView imageView10, ImageView imageView11, ImageView imageView12, ImageView imageView13, ImageView imageView14, ImageView imageView15, TextView textView7, TextView textView8, ImageView imageView16, ImageView imageView17, ImageView imageView18) {
        super(obj, view, i);
        this.diagnosisAdvancedCircle = imageView;
        this.diagnosisAdvancedElement = imageView2;
        this.diagnosisAdvancedImage = imageView3;
        this.diagnosisAdvancedText = textView;
        this.diagnosisBatteryStateCircle = imageView4;
        this.diagnosisBatteryStateElement = imageView5;
        this.diagnosisBatteryStateImage = imageView6;
        this.diagnosisBatteryStateLabel = textView2;
        this.diagnosisBatteryStateValue = textView3;
        this.diagnosisCarBotPlaceholder = view2;
        this.diagnosisCarLayout = linearLayout;
        this.diagnosisCarLayoutContainer = relativeLayout;
        this.diagnosisCarName = appCompatTextView;
        this.diagnosisCarPathview = pathView;
        this.diagnosisContainer = linearLayout2;
        this.diagnosisDiagnosisStatus = relativeTimeTextView;
        this.diagnosisDiagnosisStatusPlaceholder = textView4;
        this.diagnosisEngineTemperatureCircle = imageView7;
        this.diagnosisEngineTemperatureElement = imageView8;
        this.diagnosisEngineTemperatureImage = imageView9;
        this.diagnosisEngineTemperatureLabel = textView5;
        this.diagnosisEngineTemperatureValue = textView6;
        this.diagnosisLayoutContainer = linearLayout3;
        this.diagnosisMaintenanceScheduledCircle = imageView10;
        this.diagnosisMaintenanceScheduledElement = imageView11;
        this.diagnosisMaintenanceScheduledImage = imageView12;
        this.diagnosisParametersCircle = imageView13;
        this.diagnosisParametersElement = imageView14;
        this.diagnosisParametersImage = imageView15;
        this.diagnosisServiceLabel = textView7;
        this.diagnosisServiceValue = textView8;
        this.diagnosisStandardCircle = imageView16;
        this.diagnosisStandardElement = imageView17;
        this.diagnosisStandardImage = imageView18;
    }

    public DataBindDiagnosis getDiagnosis() {
        return this.mDiagnosis;
    }

    public static ScreenDiagnosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDiagnosisBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenDiagnosisBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_diagnosis, viewGroup, z, obj);
    }

    public static ScreenDiagnosisBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDiagnosisBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenDiagnosisBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_diagnosis, null, false, obj);
    }

    public static ScreenDiagnosisBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenDiagnosisBinding bind(View view, Object obj) {
        return (ScreenDiagnosisBinding) bind(obj, view, R.layout.screen_diagnosis);
    }
}
