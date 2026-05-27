package com.texa.careapp.utils.authentication;

import android.util.Log;
import com.texa.careapp.networking.TexaCareAuthService;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ApiAuthenticatorClient implements Authenticator {
    private static final int MAX_AUTHENTICATION_RETRIES = 1;
    private static final String TAG = "ApiAuthenticatorClient";
    private final AccessTokenPersistenceManager mAccessTokenPersistenceManager;
    private final String mClientId;
    private final String mClientSecret;
    private final TexaCareAuthService mTexaCareAuthService;

    public ApiAuthenticatorClient(AccessTokenPersistenceManager accessTokenPersistenceManager, String str, String str2, TexaCareAuthService texaCareAuthService) {
        this.mClientId = str;
        this.mClientSecret = str2;
        this.mTexaCareAuthService = texaCareAuthService;
        this.mAccessTokenPersistenceManager = accessTokenPersistenceManager;
    }

    private int getAuthenticationAttemptsCount(Response response) {
        if (response.request().tag() instanceof Integer) {
            return ((Integer) response.request().tag()).intValue();
        }
        return 0;
    }

    private static AccessToken refreshClientTokenSync(TexaCareAuthService texaCareAuthService, String str, String str2) throws IOException {
        return texaCareAuthService.getClientTokenSync(TexaCareAuthService.GRANT_TYPE_CLIENT_CREDENTIALS, str, str2).execute().body();
    }

    private Request updateClientToken(Response response, TexaCareAuthService texaCareAuthService, String str, String str2) throws IOException {
        String str3 = TAG;
        Log.d(str3, "try to refresh token");
        AccessToken accessTokenRefreshClientTokenSync = refreshClientTokenSync(texaCareAuthService, str, str2);
        this.mAccessTokenPersistenceManager.persist(accessTokenRefreshClientTokenSync);
        if (accessTokenRefreshClientTokenSync == null) {
            return null;
        }
        Log.d(str3, "got new token: " + accessTokenRefreshClientTokenSync);
        return buildRequestWithToken(response, accessTokenRefreshClientTokenSync);
    }

    private Request buildRequestWithToken(Response response, AccessToken accessToken) {
        return response.request().newBuilder().header("Authorization", accessToken.tokenType + " " + accessToken.accessToken).tag(Integer.valueOf(Integer.valueOf(getAuthenticationAttemptsCount(response)).intValue() + 1)).build();
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        if (getAuthenticationAttemptsCount(response) > 1) {
            Timber.w("Authentication has failed.", new Object[0]);
            return null;
        }
        return updateClientToken(response, this.mTexaCareAuthService, this.mClientId, this.mClientSecret);
    }
}
