package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class SosInAppBillingSubscription_MembersInjector implements MembersInjector<SosInAppBillingSubscription> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SosInAppBillingSubscription_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mEventBusProvider = provider7;
    }

    public static MembersInjector<SosInAppBillingSubscription> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7) {
        return new SosInAppBillingSubscription_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SosInAppBillingSubscription sosInAppBillingSubscription) {
        BaseActivity_MembersInjector.injectMUserDataManager(sosInAppBillingSubscription, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(sosInAppBillingSubscription, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(sosInAppBillingSubscription, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(sosInAppBillingSubscription, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(sosInAppBillingSubscription, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(sosInAppBillingSubscription, this.mLocalBroadcastManagerProvider.get());
        injectMEventBus(sosInAppBillingSubscription, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(SosInAppBillingSubscription sosInAppBillingSubscription, EventBus eventBus) {
        sosInAppBillingSubscription.mEventBus = eventBus;
    }
}
