package com.texa.carelib.webservices.internal.connection;

import com.texa.carelib.core.ObservableObject;

/* JADX INFO: loaded from: classes2.dex */
public interface ConnectionChecker extends ObservableObject {
    public static final String PROPERTY_CONNECTED = "com.texa.carelib.webservices.internal.connection.ConnectionChecker#PROPERTY_CONNECTED";

    boolean isConnected();
}
