package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DiagnosisCardViewPresenter_MembersInjector implements MembersInjector<DiagnosisCardViewPresenter> {
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LampsManager> mLampsManagerProvider;

    public DiagnosisCardViewPresenter_MembersInjector(Provider<Context> provider, Provider<DongleDataManager> provider2, Provider<LampsManager> provider3, Provider<Communication> provider4) {
        this.mContextProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mLampsManagerProvider = provider3;
        this.mCommunicationProvider = provider4;
    }

    public static MembersInjector<DiagnosisCardViewPresenter> create(Provider<Context> provider, Provider<DongleDataManager> provider2, Provider<LampsManager> provider3, Provider<Communication> provider4) {
        return new DiagnosisCardViewPresenter_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DiagnosisCardViewPresenter diagnosisCardViewPresenter) {
        injectMContext(diagnosisCardViewPresenter, this.mContextProvider.get());
        injectMDongleDataManager(diagnosisCardViewPresenter, this.mDongleDataManagerProvider.get());
        injectMLampsManager(diagnosisCardViewPresenter, this.mLampsManagerProvider.get());
        injectMCommunication(diagnosisCardViewPresenter, this.mCommunicationProvider.get());
    }

    public static void injectMContext(DiagnosisCardViewPresenter diagnosisCardViewPresenter, Context context) {
        diagnosisCardViewPresenter.mContext = context;
    }

    public static void injectMDongleDataManager(DiagnosisCardViewPresenter diagnosisCardViewPresenter, DongleDataManager dongleDataManager) {
        diagnosisCardViewPresenter.mDongleDataManager = dongleDataManager;
    }

    public static void injectMLampsManager(DiagnosisCardViewPresenter diagnosisCardViewPresenter, LampsManager lampsManager) {
        diagnosisCardViewPresenter.mLampsManager = lampsManager;
    }

    public static void injectMCommunication(DiagnosisCardViewPresenter diagnosisCardViewPresenter, Communication communication) {
        diagnosisCardViewPresenter.mCommunication = communication;
    }
}
