package com.texa.careapp.app.service;

import com.texa.careapp.utils.ServiceDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SosPrerequisiteNotificationController_MembersInjector implements MembersInjector<SosPrerequisiteNotificationController> {
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;

    public SosPrerequisiteNotificationController_MembersInjector(Provider<ServiceDataManager> provider) {
        this.mServiceDataManagerProvider = provider;
    }

    public static MembersInjector<SosPrerequisiteNotificationController> create(Provider<ServiceDataManager> provider) {
        return new SosPrerequisiteNotificationController_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SosPrerequisiteNotificationController sosPrerequisiteNotificationController) {
        injectMServiceDataManager(sosPrerequisiteNotificationController, this.mServiceDataManagerProvider.get());
    }

    public static void injectMServiceDataManager(SosPrerequisiteNotificationController sosPrerequisiteNotificationController, ServiceDataManager serviceDataManager) {
        sosPrerequisiteNotificationController.mServiceDataManager = serviceDataManager;
    }
}
