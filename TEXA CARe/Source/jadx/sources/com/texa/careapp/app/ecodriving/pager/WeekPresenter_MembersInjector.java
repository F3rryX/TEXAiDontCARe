package com.texa.careapp.app.ecodriving.pager;

import android.content.Context;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class WeekPresenter_MembersInjector implements MembersInjector<WeekPresenter> {
    private final Provider<AvgCalculator> avgCalculatorProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<EventBus> mEventBusProvider;

    public WeekPresenter_MembersInjector(Provider<Context> provider, Provider<EventBus> provider2, Provider<AvgCalculator> provider3) {
        this.mContextProvider = provider;
        this.mEventBusProvider = provider2;
        this.avgCalculatorProvider = provider3;
    }

    public static MembersInjector<WeekPresenter> create(Provider<Context> provider, Provider<EventBus> provider2, Provider<AvgCalculator> provider3) {
        return new WeekPresenter_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WeekPresenter weekPresenter) {
        injectMContext(weekPresenter, this.mContextProvider.get());
        injectMEventBus(weekPresenter, this.mEventBusProvider.get());
        injectAvgCalculator(weekPresenter, this.avgCalculatorProvider.get());
    }

    public static void injectMContext(WeekPresenter weekPresenter, Context context) {
        weekPresenter.mContext = context;
    }

    public static void injectMEventBus(WeekPresenter weekPresenter, EventBus eventBus) {
        weekPresenter.mEventBus = eventBus;
    }

    public static void injectAvgCalculator(WeekPresenter weekPresenter, AvgCalculator avgCalculator) {
        weekPresenter.avgCalculator = avgCalculator;
    }
}
