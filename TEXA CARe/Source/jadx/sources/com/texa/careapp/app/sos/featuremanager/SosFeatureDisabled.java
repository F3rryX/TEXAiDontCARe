package com.texa.careapp.app.sos.featuremanager;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.texa.care.R;
import com.texa.careapp.checks.Check;
import com.texa.careapp.model.ServiceDataModel;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes2.dex */
public class SosFeatureDisabled implements SosFeatureManager {
    private Context mContext;
    private String mServiceDisabledString;

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Disposable getButtonObservableSubscription() {
        return null;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void initData(ServiceDataModel serviceDataModel) {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public boolean isEnabled() {
        return false;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void registerImpactDetectionListener() {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void registerImpactDetectorListener() {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void setFragmentManager(FragmentManager fragmentManager) {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public boolean shouldCheckSosPrerequisites() {
        return false;
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void startButtonObserver() {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void unregisterImpactDetectionListener() {
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public void unregisterImpactDetectorListener() {
    }

    public SosFeatureDisabled(Context context) {
        this.mContext = context;
        this.mServiceDisabledString = context.getString(R.string.sos_service_not_available_for_purchase);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public String getSosServiceStatusDescription(Context context) {
        return context.getString(R.string.service_not_active);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public String getSosServiceStatusDescription(Context context, ServiceDataModel serviceDataModel) {
        return context.getString(R.string.service_not_active);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecks() {
        return Observable.just(Check.Result.OK);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecksForNotification() {
        return Observable.just(Check.Result.OK);
    }

    @Override // com.texa.careapp.app.sos.featuremanager.SosFeatureManager
    public Observable<Check.Result> observeChecksForServices() {
        return Observable.just(Check.Result.OK);
    }
}
