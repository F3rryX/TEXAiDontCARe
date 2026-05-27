package com.texa.carelib.core;

import java.beans.PropertyChangeListener;

/* JADX INFO: loaded from: classes2.dex */
public interface ObservableObject {
    PropertyChangeListener addPropertyChangeListener(PropertyChangeListener propertyChangeListener);

    PropertyChangeListener addPropertyChangeListener(String str, PropertyChangeListener propertyChangeListener);

    void removePropertyChangeListener(PropertyChangeListener propertyChangeListener);

    void removePropertyChangeListener(String str, PropertyChangeListener propertyChangeListener);
}
