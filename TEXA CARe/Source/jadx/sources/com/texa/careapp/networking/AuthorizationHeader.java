package com.texa.careapp.networking;

import com.texa.careapp.utils.authentication.AccessToken;

/* JADX INFO: loaded from: classes2.dex */
public class AuthorizationHeader {
    private final AccessToken mAccessToken;

    public AuthorizationHeader(AccessToken accessToken) {
        this.mAccessToken = accessToken;
    }

    public String get() {
        if (this.mAccessToken == null) {
            return null;
        }
        return this.mAccessToken.tokenType + " " + this.mAccessToken.accessToken;
    }
}
