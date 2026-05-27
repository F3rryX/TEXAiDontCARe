package com.texa.careapp.dagger;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideAccessoryFactory implements Factory<Accessory> {
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideAccessoryFactory(CareModule careModule, Provider<Profile> provider) {
        this.module = careModule;
        this.profileProvider = provider;
    }

    @Override // javax.inject.Provider
    public Accessory get() {
        return provideAccessory(this.module, this.profileProvider.get());
    }

    public static CareModule_ProvideAccessoryFactory create(CareModule careModule, Provider<Profile> provider) {
        return new CareModule_ProvideAccessoryFactory(careModule, provider);
    }

    public static Accessory provideAccessory(CareModule careModule, Profile profile) {
        return (Accessory) Preconditions.checkNotNullFromProvides(careModule.provideAccessory(profile));
    }
}
