package com.texa.careapp.dagger;

import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.securepreferences.SecurePreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTexaProfileDelegateFactory implements Factory<TexaProfileDelegate> {
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<FlavorDelegator> flavorDelegatorProvider;
    private final Provider<ArmadilloSharedPreferences> mArmadilloSharedPreferencesProvider;
    private final CareModule module;
    private final Provider<SecurePreferences> securePreferencesProvider;

    public CareModule_ProvideTexaProfileDelegateFactory(CareModule careModule, Provider<FlavorDelegator> provider, Provider<DongleDataManager> provider2, Provider<SecurePreferences> provider3, Provider<ArmadilloSharedPreferences> provider4) {
        this.module = careModule;
        this.flavorDelegatorProvider = provider;
        this.dongleDataManagerProvider = provider2;
        this.securePreferencesProvider = provider3;
        this.mArmadilloSharedPreferencesProvider = provider4;
    }

    @Override // javax.inject.Provider
    public TexaProfileDelegate get() {
        return provideTexaProfileDelegate(this.module, this.flavorDelegatorProvider.get(), this.dongleDataManagerProvider.get(), this.securePreferencesProvider.get(), this.mArmadilloSharedPreferencesProvider.get());
    }

    public static CareModule_ProvideTexaProfileDelegateFactory create(CareModule careModule, Provider<FlavorDelegator> provider, Provider<DongleDataManager> provider2, Provider<SecurePreferences> provider3, Provider<ArmadilloSharedPreferences> provider4) {
        return new CareModule_ProvideTexaProfileDelegateFactory(careModule, provider, provider2, provider3, provider4);
    }

    public static TexaProfileDelegate provideTexaProfileDelegate(CareModule careModule, FlavorDelegator flavorDelegator, DongleDataManager dongleDataManager, SecurePreferences securePreferences, ArmadilloSharedPreferences armadilloSharedPreferences) {
        return (TexaProfileDelegate) Preconditions.checkNotNullFromProvides(careModule.provideTexaProfileDelegate(flavorDelegator, dongleDataManager, securePreferences, armadilloSharedPreferences));
    }
}
