package com.texa.careapp.app.ecodriving.pager;

import java.util.Observable;

/* JADX INFO: loaded from: classes2.dex */
public class WeekDayObserver extends Observable {
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
