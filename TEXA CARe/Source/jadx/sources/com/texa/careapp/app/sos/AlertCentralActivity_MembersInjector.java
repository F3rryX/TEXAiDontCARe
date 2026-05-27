package com.texa.careapp.app.sos;

import android.content.SharedPreferences;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class AlertCentralActivity_MembersInjector implements MembersInjector<AlertCentralActivity> {
    private final Provider<CAReWorkerManager> mCaReWorkerManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FlavorDelegator> mFlavourDelegatorProvider;
    private final Provider<ReactiveLocationProvider> mLocationProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public AlertCentralActivity_MembersInjector(Provider<EventBus> provider, Provider<TexaCareApiServiceUser> provider2, Provider<UserDataManager> provider3, Provider<FlavorDelegator> provider4, Provider<Profile> provider5, Provider<ReactiveLocationProvider> provider6, Provider<SharedPreferences> provider7, Provider<LoggerManager> provider8, Provider<CAReWorkerManager> provider9) {
        this.mEventBusProvider = provider;
        this.mTexaCareApiServiceUserProvider = provider2;
        this.mUserDataManagerProvider = provider3;
        this.mFlavourDelegatorProvider = provider4;
        this.mProfileProvider = provider5;
        this.mLocationProvider = provider6;
        this.mSharedPreferencesProvider = provider7;
        this.mLoggerManagerProvider = provider8;
        this.mCaReWorkerManagerProvider = provider9;
    }

    public static MembersInjector<AlertCentralActivity> create(Provider<EventBus> provider, Provider<TexaCareApiServiceUser> provider2, Provider<UserDataManager> provider3, Provider<FlavorDelegator> provider4, Provider<Profile> provider5, Provider<ReactiveLocationProvider> provider6, Provider<SharedPreferences> provider7, Provider<LoggerManager> provider8, Provider<CAReWorkerManager> provider9) {
        return new AlertCentralActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AlertCentralActivity alertCentralActivity) {
        injectMEventBus(alertCentralActivity, this.mEventBusProvider.get());
        injectMTexaCareApiServiceUser(alertCentralActivity, this.mTexaCareApiServiceUserProvider.get());
        injectMUserDataManager(alertCentralActivity, this.mUserDataManagerProvider.get());
        injectMFlavourDelegator(alertCentralActivity, this.mFlavourDelegatorProvider.get());
        injectMProfile(alertCentralActivity, this.mProfileProvider.get());
        injectMLocationProvider(alertCentralActivity, this.mLocationProvider.get());
        injectMSharedPreferences(alertCentralActivity, this.mSharedPreferencesProvider.get());
        injectMLoggerManager(alertCentralActivity, this.mLoggerManagerProvider.get());
        injectMCaReWorkerManager(alertCentralActivity, this.mCaReWorkerManagerProvider.get());
    }

    public static void injectMEventBus(AlertCentralActivity alertCentralActivity, EventBus eventBus) {
        alertCentralActivity.mEventBus = eventBus;
    }

    public static void injectMTexaCareApiServiceUser(AlertCentralActivity alertCentralActivity, TexaCareApiServiceUser texaCareApiServiceUser) {
        alertCentralActivity.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMUserDataManager(AlertCentralActivity alertCentralActivity, UserDataManager userDataManager) {
        alertCentralActivity.mUserDataManager = userDataManager;
    }

    public static void injectMFlavourDelegator(AlertCentralActivity alertCentralActivity, FlavorDelegator flavorDelegator) {
        alertCentralActivity.mFlavourDelegator = flavorDelegator;
    }

    public static void injectMProfile(AlertCentralActivity alertCentralActivity, Profile profile) {
        alertCentralActivity.mProfile = profile;
    }

    public static void injectMLocationProvider(AlertCentralActivity alertCentralActivity, ReactiveLocationProvider reactiveLocationProvider) {
        alertCentralActivity.mLocationProvider = reactiveLocationProvider;
    }

    public static void injectMSharedPreferences(AlertCentralActivity alertCentralActivity, SharedPreferences sharedPreferences) {
        alertCentralActivity.mSharedPreferences = sharedPreferences;
    }

    public static void injectMLoggerManager(AlertCentralActivity alertCentralActivity, LoggerManager loggerManager) {
        alertCentralActivity.mLoggerManager = loggerManager;
    }

    public static void injectMCaReWorkerManager(AlertCentralActivity alertCentralActivity, CAReWorkerManager cAReWorkerManager) {
        alertCentralActivity.mCaReWorkerManager = cAReWorkerManager;
    }
}
