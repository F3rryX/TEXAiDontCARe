package com.texa.carelib.webservices.internal;

import android.content.Context;
import com.texa.carelib.care.profile.CareProxy;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.AccessToken;
import com.texa.carelib.webservices.HostInfo;
import com.texa.carelib.webservices.TexaService;
import com.texa.carelib.webservices.TexaServiceDelegate;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TexaServiceBase implements TexaService {
    public static final String TAG = "TexaServiceBase";
    private AccessToken mAccessToken;
    private CareProxy mCareProxy;
    private TexaServiceDelegate mServiceDelegate;
    private String mSessionID = null;

    @Override // com.texa.carelib.webservices.TexaService
    public TexaServiceDelegate getServiceDelegate() {
        return this.mServiceDelegate;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public void setServiceDelegate(TexaServiceDelegate texaServiceDelegate) {
        this.mServiceDelegate = texaServiceDelegate;
    }

    @Override // com.texa.carelib.webservices.ServiceProxy
    public String getSessionID() {
        return this.mSessionID;
    }

    @Override // com.texa.carelib.webservices.ServiceProxy
    public void setSessionID(String str) {
        this.mSessionID = str;
        CareLog.i(TAG, "Service: New SessionID: %s", str);
    }

    public Context getContext() {
        TexaServiceDelegate texaServiceDelegate = this.mServiceDelegate;
        if (texaServiceDelegate == null) {
            throw new IllegalStateException("Service delegate not set");
        }
        return texaServiceDelegate.getApplicationContext();
    }

    @Override // com.texa.carelib.webservices.TexaService
    public CareProxy getCareProxy() {
        return this.mCareProxy;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public void setCareProxy(CareProxy careProxy) {
        this.mCareProxy = careProxy;
    }

    public boolean isSessionOpened() {
        return !StringUtils.isNullOrEmpty(this.mSessionID);
    }

    public void resetSession() {
        setSessionID(null);
    }

    public static HostInfo getAuthenticationHost(TexaServiceDelegate texaServiceDelegate) {
        if (texaServiceDelegate == null) {
            return null;
        }
        if (texaServiceDelegate.getAuthenticationHost() == null) {
            return texaServiceDelegate.getServiceHost();
        }
        if (HostInfo.isValid(texaServiceDelegate.getAuthenticationHost())) {
            return texaServiceDelegate.getAuthenticationHost();
        }
        return texaServiceDelegate.getServiceHost();
    }

    public static HostInfo getServiceHost(TexaServiceDelegate texaServiceDelegate) {
        if (texaServiceDelegate == null) {
            return null;
        }
        return texaServiceDelegate.getServiceHost();
    }

    public void setAccessToken(AccessToken accessToken) {
        this.mAccessToken = accessToken;
    }

    @Override // com.texa.carelib.webservices.TexaService
    public AccessToken getAccessToken() {
        return this.mAccessToken;
    }

    public boolean isAuthenticated() {
        AccessToken accessToken = this.mAccessToken;
        return (accessToken == null || isAccessTokenExpired(accessToken, Calendar.getInstance().getTime())) ? false : true;
    }

    protected static boolean isAccessTokenExpired(AccessToken accessToken, Date date) {
        return accessToken.getGenerationTime().getTime() + (accessToken.getDuration() * 1000) < date.getTime();
    }
}
