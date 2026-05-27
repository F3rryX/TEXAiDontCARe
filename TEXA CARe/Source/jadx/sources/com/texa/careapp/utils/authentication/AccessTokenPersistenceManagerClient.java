package com.texa.careapp.utils.authentication;

import android.content.SharedPreferences;
import com.google.gson.Gson;

/* JADX INFO: loaded from: classes2.dex */
public class AccessTokenPersistenceManagerClient implements AccessTokenPersistenceManager {
    private static final String EXTRA_CLIENT_TOKEN = "EXTRA_CLIENT_TOKEN";
    private final Gson mGson = new Gson();
    private final SharedPreferences mPreferences;

    public AccessTokenPersistenceManagerClient(SharedPreferences sharedPreferences) {
        this.mPreferences = sharedPreferences;
    }

    @Override // com.texa.careapp.utils.authentication.AccessTokenPersistenceManager
    public void persist(AccessToken accessToken) {
        this.mPreferences.edit().putString(EXTRA_CLIENT_TOKEN, this.mGson.toJson(accessToken)).apply();
    }

    @Override // com.texa.careapp.utils.authentication.AccessTokenPersistenceManager
    public AccessToken getAccessToken() {
        String string = this.mPreferences.getString(EXTRA_CLIENT_TOKEN, null);
        if (string == null) {
            return null;
        }
        return (AccessToken) this.mGson.fromJson(string, AccessToken.class);
    }
}
