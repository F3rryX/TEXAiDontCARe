package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class HttpAPIRequest {
    private final Map<String, Object> mFields;
    private final String mHttpMethod;
    private final boolean mIsSessionProtected;
    private final HttpAPIRequestListener mListener;
    private final String mPath;
    private final String mID = String.valueOf(UUID.randomUUID());
    private int mLastHttpResponseStatus = 0;

    public HttpAPIRequest(String str, String str2, Map<String, Object> map, boolean z, HttpAPIRequestListener httpAPIRequestListener) {
        this.mHttpMethod = str;
        this.mPath = str2;
        this.mFields = map;
        this.mIsSessionProtected = z;
        this.mListener = httpAPIRequestListener;
    }

    public String getHttpMethod() {
        return this.mHttpMethod;
    }

    public String getPath() {
        return this.mPath;
    }

    public boolean isSessionProtected() {
        return this.mIsSessionProtected;
    }

    public Map<String, Object> getFields() {
        return this.mFields;
    }

    public int getLastHttpResponseStatus() {
        return this.mLastHttpResponseStatus;
    }

    public HttpAPIRequest setLastHttpResponseStatus(int i) {
        this.mLastHttpResponseStatus = i;
        return this;
    }

    public String getID() {
        return this.mID;
    }

    public HttpAPIRequestListener getListener() {
        return this.mListener;
    }

    public boolean equals(Object obj) {
        if (obj instanceof HttpAPIRequest) {
            return StringUtils.equals(this.mID, ((HttpAPIRequest) obj).mID);
        }
        return false;
    }

    public void fireCompleted(String str) {
        getListener().onCompleted(str);
    }

    public void fireError(CareError careError) {
        getListener().onError(careError);
    }
}
