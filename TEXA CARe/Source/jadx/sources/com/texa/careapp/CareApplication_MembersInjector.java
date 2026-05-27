package com.texa.careapp;

import android.app.NotificationManager;
import com.texa.careapp.utils.LogConfigurator;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class CareApplication_MembersInjector implements MembersInjector<CareApplication> {
    private final Provider<LogConfigurator> mLogConfiguratorProvider;
    private final Provider<NotificationManager> mNotificationManagerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<TexaService> mTexaServiceProvider;

    public CareApplication_MembersInjector(Provider<LogConfigurator> provider, Provider<Profile> provider2, Provider<TexaService> provider3, Provider<NotificationManager> provider4) {
        this.mLogConfiguratorProvider = provider;
        this.mProfileProvider = provider2;
        this.mTexaServiceProvider = provider3;
        this.mNotificationManagerProvider = provider4;
    }

    public static MembersInjector<CareApplication> create(Provider<LogConfigurator> provider, Provider<Profile> provider2, Provider<TexaService> provider3, Provider<NotificationManager> provider4) {
        return new CareApplication_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CareApplication careApplication) {
        injectMLogConfigurator(careApplication, this.mLogConfiguratorProvider.get());
        injectMProfile(careApplication, this.mProfileProvider.get());
        injectMTexaService(careApplication, this.mTexaServiceProvider.get());
        injectMNotificationManager(careApplication, this.mNotificationManagerProvider.get());
    }

    public static void injectMLogConfigurator(CareApplication careApplication, LogConfigurator logConfigurator) {
        careApplication.mLogConfigurator = logConfigurator;
    }

    public static void injectMProfile(CareApplication careApplication, Profile profile) {
        careApplication.mProfile = profile;
    }

    public static void injectMTexaService(CareApplication careApplication, TexaService texaService) {
        careApplication.mTexaService = texaService;
    }

    public static void injectMNotificationManager(CareApplication careApplication, NotificationManager notificationManager) {
        careApplication.mNotificationManager = notificationManager;
    }
}
