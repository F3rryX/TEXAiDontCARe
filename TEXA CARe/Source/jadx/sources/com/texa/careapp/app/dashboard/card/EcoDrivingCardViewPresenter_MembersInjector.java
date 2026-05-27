package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingCardViewPresenter_MembersInjector implements MembersInjector<EcoDrivingCardViewPresenter> {
    private final Provider<AvgCalculator> avgCalculatorProvider;
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;

    public EcoDrivingCardViewPresenter_MembersInjector(Provider<Context> provider, Provider<SharedPreferences> provider2, Provider<DongleDataManager> provider3, Provider<ICareObserver> provider4, Provider<AvgCalculator> provider5) {
        this.mContextProvider = provider;
        this.mSharedPreferencesProvider = provider2;
        this.mDongleDataManagerProvider = provider3;
        this.careObserverProvider = provider4;
        this.avgCalculatorProvider = provider5;
    }

    public static MembersInjector<EcoDrivingCardViewPresenter> create(Provider<Context> provider, Provider<SharedPreferences> provider2, Provider<DongleDataManager> provider3, Provider<ICareObserver> provider4, Provider<AvgCalculator> provider5) {
        return new EcoDrivingCardViewPresenter_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter) {
        injectMContext(ecoDrivingCardViewPresenter, this.mContextProvider.get());
        injectMSharedPreferences(ecoDrivingCardViewPresenter, this.mSharedPreferencesProvider.get());
        injectMDongleDataManager(ecoDrivingCardViewPresenter, this.mDongleDataManagerProvider.get());
        injectCareObserver(ecoDrivingCardViewPresenter, this.careObserverProvider.get());
        injectAvgCalculator(ecoDrivingCardViewPresenter, this.avgCalculatorProvider.get());
    }

    public static void injectMContext(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter, Context context) {
        ecoDrivingCardViewPresenter.mContext = context;
    }

    public static void injectMSharedPreferences(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter, SharedPreferences sharedPreferences) {
        ecoDrivingCardViewPresenter.mSharedPreferences = sharedPreferences;
    }

    public static void injectMDongleDataManager(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter, DongleDataManager dongleDataManager) {
        ecoDrivingCardViewPresenter.mDongleDataManager = dongleDataManager;
    }

    public static void injectCareObserver(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter, ICareObserver iCareObserver) {
        ecoDrivingCardViewPresenter.careObserver = iCareObserver;
    }

    public static void injectAvgCalculator(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter, AvgCalculator avgCalculator) {
        ecoDrivingCardViewPresenter.avgCalculator = avgCalculator;
    }
}
