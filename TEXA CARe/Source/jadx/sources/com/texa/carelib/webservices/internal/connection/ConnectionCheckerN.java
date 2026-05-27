package com.texa.carelib.webservices.internal.connection;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.logging.CareLog;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
class ConnectionCheckerN extends ObservableObjectBase implements ConnectionChecker {
    private static final String TAG = "ConnectionCheckerN";
    private final ConnectivityManager mConnectivityManager;
    private boolean mIsConnected;
    private ConnectivityManager.NetworkCallback mNetworkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.texa.carelib.webservices.internal.connection.ConnectionCheckerN.1
        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            CareLog.i(ConnectionCheckerN.TAG, "Internet connection: available", new Object[0]);
            ConnectionCheckerN.this.setConnected(true);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            super.onUnavailable();
            CareLog.w(ConnectionCheckerN.TAG, "Internet connection: not available.", new Object[0]);
            ConnectionCheckerN.this.setConnected(false);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            CareLog.w(ConnectionCheckerN.TAG, "Internet connection: lost.", new Object[0]);
            ConnectionCheckerN.this.setConnected(false);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLosing(Network network, int i) {
            super.onLosing(network, i);
            CareLog.w(ConnectionCheckerN.TAG, "Internet connection: losing in %1$dms", Integer.valueOf(i));
        }
    };

    ConnectionCheckerN(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.mConnectivityManager = connectivityManager;
        if (connectivityManager != null) {
            connectivityManager.registerDefaultNetworkCallback(this.mNetworkCallback);
            this.mIsConnected = connectivityManager.isDefaultNetworkActive();
        }
    }

    @Override // com.texa.carelib.webservices.internal.connection.ConnectionChecker
    public boolean isConnected() {
        return this.mIsConnected;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        if (connectivityManager != null) {
            connectivityManager.unregisterNetworkCallback(this.mNetworkCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConnected(boolean z) {
        boolean z2 = this.mIsConnected;
        if (z2 != z) {
            this.mIsConnected = z;
            firePropertyChange(new PropertyChangeEvent(this, ConnectionChecker.PROPERTY_CONNECTED, Boolean.valueOf(z2), Boolean.valueOf(this.mIsConnected)));
        }
    }
}
