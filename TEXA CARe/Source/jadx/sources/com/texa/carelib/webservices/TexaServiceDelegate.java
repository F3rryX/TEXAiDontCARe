package com.texa.carelib.webservices;

import android.content.Context;
import java.net.Proxy;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TexaServiceDelegate {
    public abstract Context getApplicationContext();

    public abstract HostInfo getAuthenticationHost();

    public abstract String getClientID();

    public abstract String getClientSecret();

    public Proxy getProxy() {
        return null;
    }

    public abstract HostInfo getServiceHost();

    public boolean useDirectAuthentication() {
        return true;
    }
}
