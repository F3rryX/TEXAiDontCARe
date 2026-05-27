package com.texa.careapp.app.dashboard.card;

import java.util.Observable;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardCardObserver extends Observable {
    @Override // java.util.Observable
    public void notifyObservers() {
        setChanged();
        super.notifyObservers();
    }

    @Override // java.util.Observable
    public void notifyObservers(Object obj) {
        setChanged();
        super.notifyObservers(obj);
    }
}
