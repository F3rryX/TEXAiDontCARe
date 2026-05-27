package com.texa.careapp.utils.authentication;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.Constants;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ApiAuthenticatorUser implements Authenticator {
    private static final int MAX_AUTHENTICATION_RETRIES = 1;
    private static final String TAG = "ApiAuthenticatorUser";
    private final AccessTokenPersistenceManager mAccessTokenPersistenceManager;
    private final AccountManager mAccountManager;
    private final String mClientId;
    private final String mClientSecret;
    private final LocalBroadcastManager mLocalBroadcastManager;
    private final TexaCareAuthService mTexaCareAuthService;
    private final UserDataManager mUserDataManager;

    public ApiAuthenticatorUser(AccountManager accountManager, AccessTokenPersistenceManager accessTokenPersistenceManager, String str, String str2, TexaCareAuthService texaCareAuthService, UserDataManager userDataManager, LocalBroadcastManager localBroadcastManager) {
        this.mAccountManager = accountManager;
        this.mAccessTokenPersistenceManager = accessTokenPersistenceManager;
        this.mClientId = str;
        this.mClientSecret = str2;
        this.mTexaCareAuthService = texaCareAuthService;
        this.mUserDataManager = userDataManager;
        this.mLocalBroadcastManager = localBroadcastManager;
    }

    protected Account getAccount() {
        Account[] accountsByType = this.mAccountManager.getAccountsByType(Constants.ACCOUNT_TYPE);
        if (accountsByType.length == 0) {
            return null;
        }
        return accountsByType[0];
    }

    private static AccessToken refreshUserTokenSync(TexaCareAuthService texaCareAuthService, String str, String str2, String str3) throws IOException {
        return texaCareAuthService.refreshTokenSync("refresh_token", str, str2, str3).execute().body();
    }

    private Request updateUserToken(Response response, TexaCareAuthService texaCareAuthService, String str, String str2, String str3) throws IOException {
        String str4 = TAG;
        Log.d(str4, "try to refresh token");
        AccessToken accessTokenRefreshUserTokenSync = refreshUserTokenSync(texaCareAuthService, str, str2, str3);
        if (accessTokenRefreshUserTokenSync == null && Utils.isUserLogged(this.mAccountManager, this.mUserDataManager)) {
            Log.e(str4, "Could not retrieve new authentication token. Response is null!");
            this.mUserDataManager.setRefreshTokenExpired(true);
            return null;
        }
        Log.d(str4, "got new token: " + accessTokenRefreshUserTokenSync);
        this.mAccessTokenPersistenceManager.persist(accessTokenRefreshUserTokenSync);
        return buildRequestWithToken(response, accessTokenRefreshUserTokenSync);
    }

    private Request buildRequestWithToken(Response response, AccessToken accessToken) {
        return response.request().newBuilder().header("Authorization", accessToken.tokenType + " " + accessToken.accessToken).tag(Integer.valueOf(Integer.valueOf(getAuthenticationAttemptsCount(response)).intValue() + 1)).build();
    }

    private int getAuthenticationAttemptsCount(Response response) {
        if (response.request().tag() instanceof Integer) {
            return ((Integer) response.request().tag()).intValue();
        }
        return 0;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        if (getAuthenticationAttemptsCount(response) > 1) {
            Timber.w("Authentication has failed.", new Object[0]);
            return null;
        }
        if (getAccount() == null) {
            Timber.wtf("Could not authenticate. No CARe account found.", new Object[0]);
            return null;
        }
        return updateUserToken(response, this.mTexaCareAuthService, this.mClientId, this.mClientSecret, this.mAccessTokenPersistenceManager.getAccessToken().refreshToken);
    }
}
