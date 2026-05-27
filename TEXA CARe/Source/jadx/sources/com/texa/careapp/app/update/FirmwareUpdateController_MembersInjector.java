package com.texa.careapp.app.update;

import android.content.SharedPreferences;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class FirmwareUpdateController_MembersInjector implements MembersInjector<FirmwareUpdateController> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FirmwareUpgradeProcedure> mFirmwareUpgradeProcedureProvider;
    private final Provider<SharedPreferences> mPrefsProvider;
    private final Provider<Profile> profileProvider;

    public FirmwareUpdateController_MembersInjector(Provider<EventBus> provider, Provider<FirmwareUpgradeProcedure> provider2, Provider<Profile> provider3, Provider<Accessory> provider4, Provider<SharedPreferences> provider5) {
        this.mEventBusProvider = provider;
        this.mFirmwareUpgradeProcedureProvider = provider2;
        this.profileProvider = provider3;
        this.accessoryProvider = provider4;
        this.mPrefsProvider = provider5;
    }

    public static MembersInjector<FirmwareUpdateController> create(Provider<EventBus> provider, Provider<FirmwareUpgradeProcedure> provider2, Provider<Profile> provider3, Provider<Accessory> provider4, Provider<SharedPreferences> provider5) {
        return new FirmwareUpdateController_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FirmwareUpdateController firmwareUpdateController) {
        injectMEventBus(firmwareUpdateController, this.mEventBusProvider.get());
        injectMFirmwareUpgradeProcedure(firmwareUpdateController, this.mFirmwareUpgradeProcedureProvider.get());
        injectProfile(firmwareUpdateController, this.profileProvider.get());
        injectAccessory(firmwareUpdateController, this.accessoryProvider.get());
        injectMPrefs(firmwareUpdateController, this.mPrefsProvider.get());
    }

    public static void injectMEventBus(FirmwareUpdateController firmwareUpdateController, EventBus eventBus) {
        firmwareUpdateController.mEventBus = eventBus;
    }

    public static void injectMFirmwareUpgradeProcedure(FirmwareUpdateController firmwareUpdateController, FirmwareUpgradeProcedure firmwareUpgradeProcedure) {
        firmwareUpdateController.mFirmwareUpgradeProcedure = firmwareUpgradeProcedure;
    }

    public static void injectProfile(FirmwareUpdateController firmwareUpdateController, Profile profile) {
        firmwareUpdateController.profile = profile;
    }

    public static void injectAccessory(FirmwareUpdateController firmwareUpdateController, Accessory accessory) {
        firmwareUpdateController.accessory = accessory;
    }

    public static void injectMPrefs(FirmwareUpdateController firmwareUpdateController, SharedPreferences sharedPreferences) {
        firmwareUpdateController.mPrefs = sharedPreferences;
    }
}
