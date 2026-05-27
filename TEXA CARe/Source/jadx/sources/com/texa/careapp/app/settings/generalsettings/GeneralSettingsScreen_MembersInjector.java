package com.texa.careapp.app.settings.generalsettings;

import android.content.SharedPreferences;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.careapp.app.service.ServiceNotificationController;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class GeneralSettingsScreen_MembersInjector implements MembersInjector<GeneralSettingsScreen> {
    private final Provider<DrivingStyleManager> drivingStyleManagerProvider;
    private final Provider<ServiceNotificationController> mServiceNotificationControllerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;

    public GeneralSettingsScreen_MembersInjector(Provider<SharedPreferences> provider, Provider<DrivingStyleManager> provider2, Provider<ServiceNotificationController> provider3) {
        this.mSharedPreferencesProvider = provider;
        this.drivingStyleManagerProvider = provider2;
        this.mServiceNotificationControllerProvider = provider3;
    }

    public static MembersInjector<GeneralSettingsScreen> create(Provider<SharedPreferences> provider, Provider<DrivingStyleManager> provider2, Provider<ServiceNotificationController> provider3) {
        return new GeneralSettingsScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(GeneralSettingsScreen generalSettingsScreen) {
        injectMSharedPreferences(generalSettingsScreen, this.mSharedPreferencesProvider.get());
        injectDrivingStyleManager(generalSettingsScreen, this.drivingStyleManagerProvider.get());
        injectMServiceNotificationController(generalSettingsScreen, this.mServiceNotificationControllerProvider.get());
    }

    public static void injectMSharedPreferences(GeneralSettingsScreen generalSettingsScreen, SharedPreferences sharedPreferences) {
        generalSettingsScreen.mSharedPreferences = sharedPreferences;
    }

    public static void injectDrivingStyleManager(GeneralSettingsScreen generalSettingsScreen, DrivingStyleManager drivingStyleManager) {
        generalSettingsScreen.drivingStyleManager = drivingStyleManager;
    }

    public static void injectMServiceNotificationController(GeneralSettingsScreen generalSettingsScreen, ServiceNotificationController serviceNotificationController) {
        generalSettingsScreen.mServiceNotificationController = serviceNotificationController;
    }
}
