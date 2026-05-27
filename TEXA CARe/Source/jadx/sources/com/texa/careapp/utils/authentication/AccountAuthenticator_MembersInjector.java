package com.texa.careapp.utils.authentication;

import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.networking.TexaCareAuthService;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class AccountAuthenticator_MembersInjector implements MembersInjector<AccountAuthenticator> {
    private final Provider<String> clientIdProvider;
    private final Provider<String> clientSecretProvider;
    private final Provider<TexaCareAuthService> mTexaCareServiceProvider;

    public AccountAuthenticator_MembersInjector(Provider<TexaCareAuthService> provider, Provider<String> provider2, Provider<String> provider3) {
        this.mTexaCareServiceProvider = provider;
        this.clientIdProvider = provider2;
        this.clientSecretProvider = provider3;
    }

    public static MembersInjector<AccountAuthenticator> create(Provider<TexaCareAuthService> provider, Provider<String> provider2, Provider<String> provider3) {
        return new AccountAuthenticator_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AccountAuthenticator accountAuthenticator) {
        injectMTexaCareService(accountAuthenticator, this.mTexaCareServiceProvider.get());
        injectClientId(accountAuthenticator, this.clientIdProvider.get());
        injectClientSecret(accountAuthenticator, this.clientSecretProvider.get());
    }

    public static void injectMTexaCareService(AccountAuthenticator accountAuthenticator, TexaCareAuthService texaCareAuthService) {
        accountAuthenticator.mTexaCareService = texaCareAuthService;
    }

    @ClientId
    public static void injectClientId(AccountAuthenticator accountAuthenticator, String str) {
        accountAuthenticator.clientId = str;
    }

    @ClientSecret
    public static void injectClientSecret(AccountAuthenticator accountAuthenticator, String str) {
        accountAuthenticator.clientSecret = str;
    }
}
