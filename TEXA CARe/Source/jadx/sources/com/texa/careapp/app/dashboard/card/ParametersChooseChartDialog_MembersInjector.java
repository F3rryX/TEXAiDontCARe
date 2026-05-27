package com.texa.careapp.app.dashboard.card;

import android.content.SharedPreferences;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ParametersChooseChartDialog_MembersInjector implements MembersInjector<ParametersChooseChartDialog> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;

    public ParametersChooseChartDialog_MembersInjector(Provider<SharedPreferences> provider, Provider<EventBus> provider2) {
        this.mPreferencesProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<ParametersChooseChartDialog> create(Provider<SharedPreferences> provider, Provider<EventBus> provider2) {
        return new ParametersChooseChartDialog_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ParametersChooseChartDialog parametersChooseChartDialog) {
        injectMPreferences(parametersChooseChartDialog, this.mPreferencesProvider.get());
        injectMEventBus(parametersChooseChartDialog, this.mEventBusProvider.get());
    }

    public static void injectMPreferences(ParametersChooseChartDialog parametersChooseChartDialog, SharedPreferences sharedPreferences) {
        parametersChooseChartDialog.mPreferences = sharedPreferences;
    }

    public static void injectMEventBus(ParametersChooseChartDialog parametersChooseChartDialog, EventBus eventBus) {
        parametersChooseChartDialog.mEventBus = eventBus;
    }
}
