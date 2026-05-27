package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.CareError;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpAPIRequestListener {
    void onCompleted(String str);

    void onError(CareError careError);
}
