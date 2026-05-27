package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationServiceActivity_MembersInjector implements MembersInjector<ActivationServiceActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public ActivationServiceActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7, Provider<DongleDataManager> provider8, Provider<ServiceDataManager> provider9) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mEventBusProvider = provider7;
        this.mDongleDataManagerProvider2 = provider8;
        this.mServiceDataManagerProvider = provider9;
    }

    public static MembersInjector<ActivationServiceActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7, Provider<DongleDataManager> provider8, Provider<ServiceDataManager> provider9) {
        return new ActivationServiceActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceActivity activationServiceActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(activationServiceActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(activationServiceActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(activationServiceActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(activationServiceActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(activationServiceActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(activationServiceActivity, this.mLocalBroadcastManagerProvider.get());
        injectMEventBus(activationServiceActivity, this.mEventBusProvider.get());
        injectMDongleDataManager(activationServiceActivity, this.mDongleDataManagerProvider2.get());
        injectMServiceDataManager(activationServiceActivity, this.mServiceDataManagerProvider.get());
    }

    public static void injectMEventBus(ActivationServiceActivity activationServiceActivity, EventBus eventBus) {
        activationServiceActivity.mEventBus = eventBus;
    }

    public static void injectMDongleDataManager(ActivationServiceActivity activationServiceActivity, DongleDataManager dongleDataManager) {
        activationServiceActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMServiceDataManager(ActivationServiceActivity activationServiceActivity, ServiceDataManager serviceDataManager) {
        activationServiceActivity.mServiceDataManager = serviceDataManager;
    }
}
