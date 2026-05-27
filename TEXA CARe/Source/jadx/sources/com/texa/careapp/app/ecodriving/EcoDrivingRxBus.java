package com.texa.careapp.app.ecodriving;

import io.reactivex.Observable;
import io.reactivex.subjects.PublishSubject;

/* JADX INFO: loaded from: classes2.dex */
class EcoDrivingRxBus {
    private final PublishSubject<UpdateEcoDrivingDataEvent> ecoRxBus = PublishSubject.create();

    EcoDrivingRxBus() {
    }

    public void post(UpdateEcoDrivingDataEvent updateEcoDrivingDataEvent) {
        this.ecoRxBus.onNext(updateEcoDrivingDataEvent);
    }

    Observable<UpdateEcoDrivingDataEvent> getEcoBusObservable() {
        return this.ecoRxBus;
    }
}
