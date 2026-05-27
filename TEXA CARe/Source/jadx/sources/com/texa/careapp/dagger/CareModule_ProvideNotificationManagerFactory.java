package com.texa.careapp.dagger;

import android.app.NotificationManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideNotificationManagerFactory implements Factory<NotificationManager> {
    private final CareModule module;

    public CareModule_ProvideNotificationManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public NotificationManager get() {
        return provideNotificationManager(this.module);
    }

    public static CareModule_ProvideNotificationManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideNotificationManagerFactory(careModule);
    }

    public static NotificationManager provideNotificationManager(CareModule careModule) {
        return (NotificationManager) Preconditions.checkNotNullFromProvides(careModule.provideNotificationManager());
    }
}
