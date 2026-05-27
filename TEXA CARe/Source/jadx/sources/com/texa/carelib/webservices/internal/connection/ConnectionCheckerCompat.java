package com.texa.carelib.webservices.internal.connection;

import android.content.Context;
import android.os.Build;
import java.beans.PropertyChangeListener;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionCheckerCompat implements ConnectionChecker {
    private final ConnectionChecker mConnectionChecker;

    public ConnectionCheckerCompat(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mConnectionChecker = new ConnectionCheckerN(context);
        } else {
            this.mConnectionChecker = new ConnectionCheckerLegacy(context);
        }
    }

    @Override // com.texa.carelib.core.ObservableObject
    public PropertyChangeListener addPropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        return this.mConnectionChecker.addPropertyChangeListener(propertyChangeListener);
    }

    @Override // com.texa.carelib.core.ObservableObject
    public PropertyChangeListener addPropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        return this.mConnectionChecker.addPropertyChangeListener(str, propertyChangeListener);
    }

    @Override // com.texa.carelib.core.ObservableObject
    public void removePropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.mConnectionChecker.removePropertyChangeListener(propertyChangeListener);
    }

    @Override // com.texa.carelib.core.ObservableObject
    public void removePropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        this.mConnectionChecker.removePropertyChangeListener(str, propertyChangeListener);
    }

    @Override // com.texa.carelib.webservices.internal.connection.ConnectionChecker
    public boolean isConnected() {
        return this.mConnectionChecker.isConnected();
    }
}
