package com.texa.careapp.utils.authentication;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes2.dex */
public class AccountAuthenticatorService extends Service {
    private static AccountAuthenticator AUTHENTICATOR;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return getAuthenticator().getIBinder();
    }

    private AccountAuthenticator getAuthenticator() {
        if (AUTHENTICATOR == null) {
            AUTHENTICATOR = new AccountAuthenticator(this);
        }
        return AUTHENTICATOR;
    }
}
