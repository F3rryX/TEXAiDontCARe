package com.texa.carelib.core;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ObservableObjectBase implements ObservableObject {
    private final PropertyChangeSupport mPropertyChangeSupport = new PropertyChangeSupport(this);

    @Override // com.texa.carelib.core.ObservableObject
    public PropertyChangeListener addPropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.mPropertyChangeSupport.addPropertyChangeListener(propertyChangeListener);
        return propertyChangeListener;
    }

    @Override // com.texa.carelib.core.ObservableObject
    public PropertyChangeListener addPropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        this.mPropertyChangeSupport.addPropertyChangeListener(str, propertyChangeListener);
        return propertyChangeListener;
    }

    @Override // com.texa.carelib.core.ObservableObject
    public void removePropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        this.mPropertyChangeSupport.removePropertyChangeListener(propertyChangeListener);
    }

    @Override // com.texa.carelib.core.ObservableObject
    public void removePropertyChangeListener(String str, PropertyChangeListener propertyChangeListener) {
        this.mPropertyChangeSupport.removePropertyChangeListener(str, propertyChangeListener);
    }

    PropertyChangeListener[] getPropertyChangeListeners() {
        return this.mPropertyChangeSupport.getPropertyChangeListeners();
    }

    PropertyChangeListener[] getPropertyChangeListeners(String str) {
        return this.mPropertyChangeSupport.getPropertyChangeListeners(str);
    }

    public void firePropertyChange(final PropertyChangeEvent propertyChangeEvent) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.core.ObservableObjectBase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m736x25047561(propertyChangeEvent);
            }
        }, 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$firePropertyChange$0$com-texa-carelib-core-ObservableObjectBase, reason: not valid java name */
    public /* synthetic */ void m736x25047561(PropertyChangeEvent propertyChangeEvent) {
        this.mPropertyChangeSupport.firePropertyChange(propertyChangeEvent);
    }
}
