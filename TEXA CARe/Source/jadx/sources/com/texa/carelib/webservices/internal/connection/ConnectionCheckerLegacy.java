package com.texa.carelib.webservices.internal.connection;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.logging.CareLog;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
class ConnectionCheckerLegacy extends ObservableObjectBase implements ConnectionChecker {
    private static final String TAG = "ConnectionCheckerLegacy";
    private final BroadcastReceiver mConnectivityChangeBroadcastReceiver = new BroadcastReceiver() { // from class: com.texa.carelib.webservices.internal.connection.ConnectionCheckerLegacy.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                ConnectionCheckerLegacy connectionCheckerLegacy = ConnectionCheckerLegacy.this;
                connectionCheckerLegacy.setConnected(connectionCheckerLegacy.isConnected(connectionCheckerLegacy.mConnectivityManager));
            }
        }
    };
    private final ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private boolean mIsConnected;

    ConnectionCheckerLegacy(Context context) {
        this.mContext = context;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.mConnectivityManager = connectivityManager;
        registerConnectivityChangeReceiver(context);
        this.mIsConnected = isConnected(connectivityManager);
    }

    @Override // com.texa.carelib.webservices.internal.connection.ConnectionChecker
    public boolean isConnected() {
        return this.mIsConnected;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        unregisterConnectivityBroadcastReceiver(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isConnected(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            CareLog.wtf(TAG, "connectivityManager should not be null!!!", new Object[0]);
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private void registerConnectivityChangeReceiver(Context context) {
        context.registerReceiver(this.mConnectivityChangeBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    private void unregisterConnectivityBroadcastReceiver(Context context) {
        context.unregisterReceiver(this.mConnectivityChangeBroadcastReceiver);
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
