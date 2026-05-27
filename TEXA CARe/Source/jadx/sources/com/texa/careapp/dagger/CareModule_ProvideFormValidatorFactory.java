package com.texa.careapp.dagger;

import com.texa.careapp.utils.FormValidator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFormValidatorFactory implements Factory<FormValidator> {
    private final CareModule module;

    public CareModule_ProvideFormValidatorFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public FormValidator get() {
        return provideFormValidator(this.module);
    }

    public static CareModule_ProvideFormValidatorFactory create(CareModule careModule) {
        return new CareModule_ProvideFormValidatorFactory(careModule);
    }

    public static FormValidator provideFormValidator(CareModule careModule) {
        return (FormValidator) Preconditions.checkNotNullFromProvides(careModule.provideFormValidator());
    }
}
