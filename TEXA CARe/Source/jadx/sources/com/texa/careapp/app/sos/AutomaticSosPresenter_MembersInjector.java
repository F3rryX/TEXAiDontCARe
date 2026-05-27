package com.texa.careapp.app.sos;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class AutomaticSosPresenter_MembersInjector implements MembersInjector<AutomaticSosPresenter> {
    private final Provider<CAReWorkerManager> mCaReWorkerManagerProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<ReactiveLocationProvider> reactiveLocationProvider;

    public AutomaticSosPresenter_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<UserDataManager> provider2, Provider<Profile> provider3, Provider<FlavorDelegator> provider4, Provider<ReactiveLocationProvider> provider5, Provider<SharedPreferences> provider6, Provider<LoggerManager> provider7, Provider<Context> provider8, Provider<CAReWorkerManager> provider9) {
        this.mTexaCareApiServiceUserProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mProfileProvider = provider3;
        this.mFlavorDelegatorProvider = provider4;
        this.reactiveLocationProvider = provider5;
        this.mSharedPreferencesProvider = provider6;
        this.mLoggerManagerProvider = provider7;
        this.mContextProvider = provider8;
        this.mCaReWorkerManagerProvider = provider9;
    }

    public static MembersInjector<AutomaticSosPresenter> create(Provider<TexaCareApiServiceUser> provider, Provider<UserDataManager> provider2, Provider<Profile> provider3, Provider<FlavorDelegator> provider4, Provider<ReactiveLocationProvider> provider5, Provider<SharedPreferences> provider6, Provider<LoggerManager> provider7, Provider<Context> provider8, Provider<CAReWorkerManager> provider9) {
        return new AutomaticSosPresenter_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AutomaticSosPresenter automaticSosPresenter) {
        injectMTexaCareApiServiceUser(automaticSosPresenter, this.mTexaCareApiServiceUserProvider.get());
        injectMUserDataManager(automaticSosPresenter, this.mUserDataManagerProvider.get());
        injectMProfile(automaticSosPresenter, this.mProfileProvider.get());
        injectMFlavorDelegator(automaticSosPresenter, this.mFlavorDelegatorProvider.get());
        injectReactiveLocationProvider(automaticSosPresenter, this.reactiveLocationProvider.get());
        injectMSharedPreferences(automaticSosPresenter, this.mSharedPreferencesProvider.get());
        injectMLoggerManager(automaticSosPresenter, this.mLoggerManagerProvider.get());
        injectMContext(automaticSosPresenter, this.mContextProvider.get());
        injectMCaReWorkerManager(automaticSosPresenter, this.mCaReWorkerManagerProvider.get());
    }

    public static void injectMTexaCareApiServiceUser(AutomaticSosPresenter automaticSosPresenter, TexaCareApiServiceUser texaCareApiServiceUser) {
        automaticSosPresenter.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMUserDataManager(AutomaticSosPresenter automaticSosPresenter, UserDataManager userDataManager) {
        automaticSosPresenter.mUserDataManager = userDataManager;
    }

    public static void injectMProfile(AutomaticSosPresenter automaticSosPresenter, Profile profile) {
        automaticSosPresenter.mProfile = profile;
    }

    public static void injectMFlavorDelegator(AutomaticSosPresenter automaticSosPresenter, FlavorDelegator flavorDelegator) {
        automaticSosPresenter.mFlavorDelegator = flavorDelegator;
    }

    public static void injectReactiveLocationProvider(AutomaticSosPresenter automaticSosPresenter, ReactiveLocationProvider reactiveLocationProvider) {
        automaticSosPresenter.reactiveLocationProvider = reactiveLocationProvider;
    }

    public static void injectMSharedPreferences(AutomaticSosPresenter automaticSosPresenter, SharedPreferences sharedPreferences) {
        automaticSosPresenter.mSharedPreferences = sharedPreferences;
    }

    public static void injectMLoggerManager(AutomaticSosPresenter automaticSosPresenter, LoggerManager loggerManager) {
        automaticSosPresenter.mLoggerManager = loggerManager;
    }

    public static void injectMContext(AutomaticSosPresenter automaticSosPresenter, Context context) {
        automaticSosPresenter.mContext = context;
    }

    public static void injectMCaReWorkerManager(AutomaticSosPresenter automaticSosPresenter, CAReWorkerManager cAReWorkerManager) {
        automaticSosPresenter.mCaReWorkerManager = cAReWorkerManager;
    }
}
