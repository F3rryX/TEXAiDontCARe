package com.texa.careapp.app.ecodriving;

/* JADX INFO: loaded from: classes2.dex */
public class MainEcoDrivingBus extends EcoDrivingRxBus {
    private static MainEcoDrivingBus instance = new MainEcoDrivingBus();

    @Override // com.texa.careapp.app.ecodriving.EcoDrivingRxBus
    public /* bridge */ /* synthetic */ void post(UpdateEcoDrivingDataEvent updateEcoDrivingDataEvent) {
        super.post(updateEcoDrivingDataEvent);
    }

    public static MainEcoDrivingBus getInstance() {
        if (instance == null) {
            instance = new MainEcoDrivingBus();
        }
        return instance;
    }

    private MainEcoDrivingBus() {
    }
}
