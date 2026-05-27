package com.texa.careapp.app.schedule.addThreshold;

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
public final class AddNewThresholdActivity_MembersInjector implements MembersInjector<AddNewThresholdActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public AddNewThresholdActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mEventBusProvider = provider7;
    }

    public static MembersInjector<AddNewThresholdActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7) {
        return new AddNewThresholdActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AddNewThresholdActivity addNewThresholdActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(addNewThresholdActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(addNewThresholdActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(addNewThresholdActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(addNewThresholdActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(addNewThresholdActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(addNewThresholdActivity, this.mLocalBroadcastManagerProvider.get());
        injectMEventBus(addNewThresholdActivity, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(AddNewThresholdActivity addNewThresholdActivity, EventBus eventBus) {
        addNewThresholdActivity.mEventBus = eventBus;
    }
}
