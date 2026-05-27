package com.texa.careapp.app.diagnosis.tab.errorDTC;

import android.content.Context;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ErrorDTCViewPresenter_MembersInjector implements MembersInjector<ErrorDTCViewPresenter> {
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LampsManager> mLampsManagerProvider;

    public ErrorDTCViewPresenter_MembersInjector(Provider<Context> provider, Provider<LampsManager> provider2, Provider<DongleDataManager> provider3) {
        this.mContextProvider = provider;
        this.mLampsManagerProvider = provider2;
        this.mDongleDataManagerProvider = provider3;
    }

    public static MembersInjector<ErrorDTCViewPresenter> create(Provider<Context> provider, Provider<LampsManager> provider2, Provider<DongleDataManager> provider3) {
        return new ErrorDTCViewPresenter_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ErrorDTCViewPresenter errorDTCViewPresenter) {
        injectMContext(errorDTCViewPresenter, this.mContextProvider.get());
        injectMLampsManager(errorDTCViewPresenter, this.mLampsManagerProvider.get());
        injectMDongleDataManager(errorDTCViewPresenter, this.mDongleDataManagerProvider.get());
    }

    public static void injectMContext(ErrorDTCViewPresenter errorDTCViewPresenter, Context context) {
        errorDTCViewPresenter.mContext = context;
    }

    public static void injectMLampsManager(ErrorDTCViewPresenter errorDTCViewPresenter, LampsManager lampsManager) {
        errorDTCViewPresenter.mLampsManager = lampsManager;
    }

    public static void injectMDongleDataManager(ErrorDTCViewPresenter errorDTCViewPresenter, DongleDataManager dongleDataManager) {
        errorDTCViewPresenter.mDongleDataManager = dongleDataManager;
    }
}
