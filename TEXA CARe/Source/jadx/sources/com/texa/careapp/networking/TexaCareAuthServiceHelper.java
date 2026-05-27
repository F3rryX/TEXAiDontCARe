package com.texa.careapp.networking;

import com.texa.careapp.utils.authentication.AccessToken;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class TexaCareAuthServiceHelper {
    protected final AccessTokenPersistenceManager mAccessTokenPersistenceManagerClient;
    protected final String mClientId;
    protected final String mClientSecret;
    protected final TexaCareAuthService mTexaCareAuthService;

    public TexaCareAuthServiceHelper(TexaCareAuthService texaCareAuthService, String str, String str2, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        this.mTexaCareAuthService = texaCareAuthService;
        this.mClientId = str;
        this.mClientSecret = str2;
        this.mAccessTokenPersistenceManagerClient = accessTokenPersistenceManager;
    }

    public Observable<AccessToken> getAndPersistClientTokenObservable() {
        Observable<AccessToken> clientToken = this.mTexaCareAuthService.getClientToken(TexaCareAuthService.GRANT_TYPE_CLIENT_CREDENTIALS, this.mClientId, this.mClientSecret);
        final AccessTokenPersistenceManager accessTokenPersistenceManager = this.mAccessTokenPersistenceManagerClient;
        Objects.requireNonNull(accessTokenPersistenceManager);
        return clientToken.doOnNext(new Consumer() { // from class: com.texa.careapp.networking.TexaCareAuthServiceHelper$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                accessTokenPersistenceManager.persist((AccessToken) obj);
            }
        });
    }
}
