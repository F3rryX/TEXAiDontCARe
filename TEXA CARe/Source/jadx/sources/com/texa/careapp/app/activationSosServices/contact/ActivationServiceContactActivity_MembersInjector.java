package com.texa.careapp.app.activationSosServices.contact;

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

/* JADX INFO: loaded from: classes2.dex */
public final class ActivationServiceContactActivity_MembersInjector implements MembersInjector<ActivationServiceContactActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider2;

    public ActivationServiceContactActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<UserDataManager> provider7, Provider<EventBus> provider8) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mUserDataManagerProvider2 = provider7;
        this.mEventBusProvider = provider8;
    }

    public static MembersInjector<ActivationServiceContactActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<UserDataManager> provider7, Provider<EventBus> provider8) {
        return new ActivationServiceContactActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceContactActivity activationServiceContactActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(activationServiceContactActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(activationServiceContactActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(activationServiceContactActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(activationServiceContactActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(activationServiceContactActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(activationServiceContactActivity, this.mLocalBroadcastManagerProvider.get());
        injectMUserDataManager(activationServiceContactActivity, this.mUserDataManagerProvider2.get());
        injectMEventBus(activationServiceContactActivity, this.mEventBusProvider.get());
    }

    public static void injectMUserDataManager(ActivationServiceContactActivity activationServiceContactActivity, UserDataManager userDataManager) {
        activationServiceContactActivity.mUserDataManager = userDataManager;
    }

    public static void injectMEventBus(ActivationServiceContactActivity activationServiceContactActivity, EventBus eventBus) {
        activationServiceContactActivity.mEventBus = eventBus;
    }
}
