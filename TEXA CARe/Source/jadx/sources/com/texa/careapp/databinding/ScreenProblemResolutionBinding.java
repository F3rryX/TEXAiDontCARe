package com.texa.careapp.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScreenProblemResolutionBinding extends ViewDataBinding {
    public final LinearLayout containerCompletedDiagnostic;
    public final LinearLayout containerTextBtDiagnostic;
    public final LinearLayout containerTextCareDiagnostic;
    public final LinearLayout containerTextTripDiagnostic;
    public final LinearLayout containerTextTurnOfDiagnostic;
    public final RelativeLayout containerViewCareDiagnostic;
    public final RelativeLayout containerViewTurnOffEngineDiagnostic;
    public final RelativeLayout containerViewUploadTripDiagnostic;
    public final ImageView imgBtDiagnostic;
    public final ImageView imgCareDiagnostic;
    public final ImageView imgTripDiagnostic;
    public final ImageView imgTurnOffEngineDiagnostic;
    public final RelativeLayout problemResolutionButton;
    public final TextView problemResolutionTextButton;
    public final ProgressBar progressCareDiagnostic;
    public final ProgressBar progressTripDiagnostic;
    public final ProgressBar progressTurnOffEngineDiagnostic;
    public final ScrollView scrollProblemResolution;
    public final TextView textViewSubtitleBtDiagnostic;
    public final TextView textViewSubtitleCareDiagnostic;
    public final TextView textViewSubtitleTripDiagnostic;
    public final TextView textViewSubtitleTurnOffDiagnostic;
    public final TextView textViewTitleBtDiagnostic;
    public final TextView textViewTitleCareDiagnostic;
    public final TextView textViewTitleTripDiagnostic;
    public final TextView textViewTitleTurnOffDiagnostic;

    protected ScreenProblemResolutionBinding(Object obj, View view, int i, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, RelativeLayout relativeLayout4, TextView textView, ProgressBar progressBar, ProgressBar progressBar2, ProgressBar progressBar3, ScrollView scrollView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9) {
        super(obj, view, i);
        this.containerCompletedDiagnostic = linearLayout;
        this.containerTextBtDiagnostic = linearLayout2;
        this.containerTextCareDiagnostic = linearLayout3;
        this.containerTextTripDiagnostic = linearLayout4;
        this.containerTextTurnOfDiagnostic = linearLayout5;
        this.containerViewCareDiagnostic = relativeLayout;
        this.containerViewTurnOffEngineDiagnostic = relativeLayout2;
        this.containerViewUploadTripDiagnostic = relativeLayout3;
        this.imgBtDiagnostic = imageView;
        this.imgCareDiagnostic = imageView2;
        this.imgTripDiagnostic = imageView3;
        this.imgTurnOffEngineDiagnostic = imageView4;
        this.problemResolutionButton = relativeLayout4;
        this.problemResolutionTextButton = textView;
        this.progressCareDiagnostic = progressBar;
        this.progressTripDiagnostic = progressBar2;
        this.progressTurnOffEngineDiagnostic = progressBar3;
        this.scrollProblemResolution = scrollView;
        this.textViewSubtitleBtDiagnostic = textView2;
        this.textViewSubtitleCareDiagnostic = textView3;
        this.textViewSubtitleTripDiagnostic = textView4;
        this.textViewSubtitleTurnOffDiagnostic = textView5;
        this.textViewTitleBtDiagnostic = textView6;
        this.textViewTitleCareDiagnostic = textView7;
        this.textViewTitleTripDiagnostic = textView8;
        this.textViewTitleTurnOffDiagnostic = textView9;
    }

    public static ScreenProblemResolutionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenProblemResolutionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ScreenProblemResolutionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_problem_resolution, viewGroup, z, obj);
    }

    public static ScreenProblemResolutionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenProblemResolutionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ScreenProblemResolutionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.screen_problem_resolution, null, false, obj);
    }

    public static ScreenProblemResolutionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ScreenProblemResolutionBinding bind(View view, Object obj) {
        return (ScreenProblemResolutionBinding) bind(obj, view, R.layout.screen_problem_resolution);
    }
}
