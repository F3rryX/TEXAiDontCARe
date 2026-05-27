package com.texa.careapp.app.utils;

import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SosFirmwareWarningDialog_MembersInjector implements MembersInjector<SosFirmwareWarningDialog> {
    private final Provider<Communication> mCommunicationProvider;

    public SosFirmwareWarningDialog_MembersInjector(Provider<Communication> provider) {
        this.mCommunicationProvider = provider;
    }

    public static MembersInjector<SosFirmwareWarningDialog> create(Provider<Communication> provider) {
        return new SosFirmwareWarningDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SosFirmwareWarningDialog sosFirmwareWarningDialog) {
        injectMCommunication(sosFirmwareWarningDialog, this.mCommunicationProvider.get());
    }

    public static void injectMCommunication(SosFirmwareWarningDialog sosFirmwareWarningDialog, Communication communication) {
        sosFirmwareWarningDialog.mCommunication = communication;
    }
}
