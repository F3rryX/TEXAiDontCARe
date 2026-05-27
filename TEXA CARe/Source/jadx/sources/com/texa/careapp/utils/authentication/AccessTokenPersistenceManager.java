package com.texa.careapp.utils.authentication;

/* JADX INFO: loaded from: classes2.dex */
public interface AccessTokenPersistenceManager {
    AccessToken getAccessToken();

    void persist(AccessToken accessToken);
}
