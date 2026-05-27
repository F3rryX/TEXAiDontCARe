package com.texa.careapp.app.diagnosis;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenDiagnosisDataBinding;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisDataScreen extends Screen {
    private CareApplication.ApplicationComponent mComponent;
    private int mTabIndex;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "diagnosisData";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_diagnosis_data;
    }

    public DiagnosisDataScreen(CareApplication careApplication, int i) {
        this(careApplication);
        this.mTabIndex = i;
    }

    public DiagnosisDataScreen(CareApplication careApplication) {
        this.mTabIndex = 0;
        CareApplication.ApplicationComponent applicationComponentComponent = careApplication.component();
        this.mComponent = applicationComponentComponent;
        applicationComponentComponent.inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenDiagnosisDataBinding screenDiagnosisDataBinding = (ScreenDiagnosisDataBinding) DataBindingUtil.bind(view);
        DiagnosisDataPagerAdapter diagnosisDataPagerAdapter = new DiagnosisDataPagerAdapter(this.mComponent);
        screenDiagnosisDataBinding.screenDiagnosisDataViewPager.setAdapter(diagnosisDataPagerAdapter);
        diagnosisDataPagerAdapter.setViewPager(screenDiagnosisDataBinding.screenDiagnosisDataViewPager);
        screenDiagnosisDataBinding.screenDiagnosisDataSlidingTabs.setDistributeEvenly(true);
        screenDiagnosisDataBinding.screenDiagnosisDataSlidingTabs.setViewPager(screenDiagnosisDataBinding.screenDiagnosisDataViewPager);
        screenDiagnosisDataBinding.screenDiagnosisDataSlidingTabs.setSelectedIndicatorColors(Utils.getColorResource(getContext(), R.color.accent));
        if (this.mTabIndex == 1) {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OPENED_PARAMETERS_SCREEN.getTag(), null);
        }
        diagnosisDataPagerAdapter.goToPage(this.mTabIndex);
    }
}
