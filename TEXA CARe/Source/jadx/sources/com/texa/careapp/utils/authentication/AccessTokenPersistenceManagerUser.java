package com.texa.careapp.utils.authentication;

import android.accounts.Account;
import android.accounts.AccountManager;
import com.google.gson.Gson;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class AccessTokenPersistenceManagerUser implements AccessTokenPersistenceManager {
    public static final String EXTRA_USER_TOKEN = "USER_TOKEN";
    private final AccountManager mAccountManager;
    private final Gson mGson = new Gson();

    public AccessTokenPersistenceManagerUser(AccountManager accountManager) {
        this.mAccountManager = accountManager;
    }

    @Override // com.texa.careapp.utils.authentication.AccessTokenPersistenceManager
    public void persist(AccessToken accessToken) {
        Account firstAccount = getFirstAccount();
        if (firstAccount == null) {
            return;
        }
        persist(firstAccount, accessToken);
    }

    @Override // com.texa.careapp.utils.authentication.AccessTokenPersistenceManager
    public AccessToken getAccessToken() {
        Account firstAccount = getFirstAccount();
        if (firstAccount == null) {
            return null;
        }
        return getAccessToken(firstAccount);
    }

    protected void persist(Account account, AccessToken accessToken) {
        if (accessToken != null) {
            this.mAccountManager.setAuthToken(account, Constants.AUTH_TOKEN_TYPE, accessToken.accessToken);
            this.mAccountManager.setUserData(account, EXTRA_USER_TOKEN, this.mGson.toJson(accessToken));
        } else {
            this.mAccountManager.setUserData(account, EXTRA_USER_TOKEN, null);
        }
    }

    protected AccessToken getAccessToken(Account account) {
        String userData = this.mAccountManager.getUserData(account, EXTRA_USER_TOKEN);
        if (userData == null) {
            return null;
        }
        return (AccessToken) this.mGson.fromJson(userData, AccessToken.class);
    }

    protected Account getAccountByName(AccountManager accountManager, String str) {
        for (Account account : this.mAccountManager.getAccountsByType(Constants.ACCOUNT_TYPE)) {
            if (str.equals(account.name)) {
                return account;
            }
        }
        return null;
    }

    protected Account getFirstAccount() {
        Account[] accountsByType = this.mAccountManager.getAccountsByType(Constants.ACCOUNT_TYPE);
        if (accountsByType.length == 0) {
            return null;
        }
        return accountsByType[0];
    }
}
