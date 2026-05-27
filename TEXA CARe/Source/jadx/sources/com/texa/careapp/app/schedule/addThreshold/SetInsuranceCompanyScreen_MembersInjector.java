package com.texa.careapp.app.schedule.addThreshold;

import com.texa.careapp.networking.TexaCareApiServiceClient;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SetInsuranceCompanyScreen_MembersInjector implements MembersInjector<SetInsuranceCompanyScreen> {
    private final Provider<TexaCareApiServiceClient> mTexaCareApiServiceProvider;

    public SetInsuranceCompanyScreen_MembersInjector(Provider<TexaCareApiServiceClient> provider) {
        this.mTexaCareApiServiceProvider = provider;
    }

    public static MembersInjector<SetInsuranceCompanyScreen> create(Provider<TexaCareApiServiceClient> provider) {
        return new SetInsuranceCompanyScreen_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SetInsuranceCompanyScreen setInsuranceCompanyScreen) {
        injectMTexaCareApiService(setInsuranceCompanyScreen, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMTexaCareApiService(SetInsuranceCompanyScreen setInsuranceCompanyScreen, TexaCareApiServiceClient texaCareApiServiceClient) {
        setInsuranceCompanyScreen.mTexaCareApiService = texaCareApiServiceClient;
    }
}
