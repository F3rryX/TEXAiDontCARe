package com.texa.careapp.app.ecodriving;

import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingScreen_MembersInjector implements MembersInjector<EcoDrivingScreen> {
    private final Provider<AvgCalculator> avgCalculatorProvider;
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;

    public EcoDrivingScreen_MembersInjector(Provider<EventBus> provider, Provider<AvgCalculator> provider2, Provider<DongleDataManager> provider3, Provider<ICareObserver> provider4) {
        this.mEventBusProvider = provider;
        this.avgCalculatorProvider = provider2;
        this.mDongleDataManagerProvider = provider3;
        this.careObserverProvider = provider4;
    }

    public static MembersInjector<EcoDrivingScreen> create(Provider<EventBus> provider, Provider<AvgCalculator> provider2, Provider<DongleDataManager> provider3, Provider<ICareObserver> provider4) {
        return new EcoDrivingScreen_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingScreen ecoDrivingScreen) {
        injectMEventBus(ecoDrivingScreen, this.mEventBusProvider.get());
        injectAvgCalculator(ecoDrivingScreen, this.avgCalculatorProvider.get());
        injectMDongleDataManager(ecoDrivingScreen, this.mDongleDataManagerProvider.get());
        injectCareObserver(ecoDrivingScreen, this.careObserverProvider.get());
    }

    public static void injectMEventBus(EcoDrivingScreen ecoDrivingScreen, EventBus eventBus) {
        ecoDrivingScreen.mEventBus = eventBus;
    }

    public static void injectAvgCalculator(EcoDrivingScreen ecoDrivingScreen, AvgCalculator avgCalculator) {
        ecoDrivingScreen.avgCalculator = avgCalculator;
    }

    public static void injectMDongleDataManager(EcoDrivingScreen ecoDrivingScreen, DongleDataManager dongleDataManager) {
        ecoDrivingScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectCareObserver(EcoDrivingScreen ecoDrivingScreen, ICareObserver iCareObserver) {
        ecoDrivingScreen.careObserver = iCareObserver;
    }
}
