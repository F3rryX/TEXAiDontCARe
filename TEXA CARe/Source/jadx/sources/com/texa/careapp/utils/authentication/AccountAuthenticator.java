package com.texa.careapp.utils.authentication;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.auth.LoginActivity;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.networking.TexaCareAuthService;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class AccountAuthenticator extends AbstractAccountAuthenticator {
    private static final String KEY_BOOLEAN_RESULT = "auth-boolean-result";
    private static final String TAG = "AccountAuthenticator";

    @Inject
    @ClientId
    String clientId;

    @Inject
    @ClientSecret
    String clientSecret;
    private final Context mContext;

    @Inject
    TexaCareAuthService mTexaCareService;

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) throws NetworkErrorException {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        return null;
    }

    AccountAuthenticator(Context context) {
        super(context);
        this.mContext = context;
        ((CareApplication) context.getApplicationContext()).component().inject(this);
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) throws NetworkErrorException {
        Intent intent = new Intent(this.mContext, (Class<?>) LoginActivity.class);
        intent.putExtra("accountType", str);
        intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("intent", intent);
        return bundle2;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) throws NetworkErrorException {
        Bundle bundle2 = new Bundle();
        if (!str.equals(Constants.AUTH_TOKEN_TYPE)) {
            Log.d(TAG, "invalid authTokenType" + str);
            bundle2.putString("errorMessage", "invalid authTokenType");
            return bundle2;
        }
        AccountManager accountManager = AccountManager.get(this.mContext);
        String password = accountManager.getPassword(account);
        if (password != null) {
            Log.d(TAG, "Trying to refresh access token");
            try {
                AccessToken accessTokenBody = this.mTexaCareService.getAccessTokenSync("password", this.clientId, this.clientSecret, account.name, password).execute().body();
                if (accessTokenBody != null && !TextUtils.isEmpty(accessTokenBody.accessToken)) {
                    bundle2.putString("authAccount", account.name);
                    bundle2.putString("accountType", Constants.ACCOUNT_TYPE);
                    bundle2.putString("authtoken", accessTokenBody.accessToken);
                    accountManager.setPassword(account, accessTokenBody.refreshToken);
                    return bundle2;
                }
            } catch (Exception e) {
                Log.d(TAG, "Failed refreshing token", e);
            }
        }
        Log.d(TAG, "Starting login activity");
        Intent intent = new Intent(this.mContext, (Class<?>) LoginActivity.class);
        intent.putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
        bundle2.putParcelable("intent", intent);
        return bundle2;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public String getAuthTokenLabel(String str) {
        if (str.equals(Constants.AUTH_TOKEN_TYPE)) {
            return str;
        }
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) throws NetworkErrorException {
        Bundle bundle = new Bundle();
        bundle.putBoolean(KEY_BOOLEAN_RESULT, false);
        return bundle;
    }
}
