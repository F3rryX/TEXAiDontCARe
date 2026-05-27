package com.texa.careapp.app.ecodriving;

import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingTripDetailScreen_MembersInjector implements MembersInjector<EcoDrivingTripDetailScreen> {
    private final Provider<AvgCalculator> avgCalculatorProvider;

    public EcoDrivingTripDetailScreen_MembersInjector(Provider<AvgCalculator> provider) {
        this.avgCalculatorProvider = provider;
    }

    public static MembersInjector<EcoDrivingTripDetailScreen> create(Provider<AvgCalculator> provider) {
        return new EcoDrivingTripDetailScreen_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen) {
        injectAvgCalculator(ecoDrivingTripDetailScreen, this.avgCalculatorProvider.get());
    }

    public static void injectAvgCalculator(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen, AvgCalculator avgCalculator) {
        ecoDrivingTripDetailScreen.avgCalculator = avgCalculator;
    }
}
