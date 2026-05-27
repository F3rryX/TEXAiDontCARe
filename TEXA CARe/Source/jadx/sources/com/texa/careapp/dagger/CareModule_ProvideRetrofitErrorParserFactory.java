package com.texa.careapp.dagger;

import com.texa.careapp.utils.RetrofitErrorParser;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideRetrofitErrorParserFactory implements Factory<RetrofitErrorParser> {
    private final CareModule module;

    public CareModule_ProvideRetrofitErrorParserFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public RetrofitErrorParser get() {
        return provideRetrofitErrorParser(this.module);
    }

    public static CareModule_ProvideRetrofitErrorParserFactory create(CareModule careModule) {
        return new CareModule_ProvideRetrofitErrorParserFactory(careModule);
    }

    public static RetrofitErrorParser provideRetrofitErrorParser(CareModule careModule) {
        return (RetrofitErrorParser) Preconditions.checkNotNullFromProvides(careModule.provideRetrofitErrorParser());
    }
}
