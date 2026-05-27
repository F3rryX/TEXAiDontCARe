package com.texa.carelib.profile.internal.filecarrier;

import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SimpleFileCarrierListener implements FileCarrierListener {
    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
    public void onFileReceived(FileReceivedEvent fileReceivedEvent) {
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
    public void onFileReceivedProgressChanged(FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent) {
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
    public void onFileSent(FileSentEvent fileSentEvent) {
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
    public void onFileSentProgressChanged(FileSentProgressChangedEvent fileSentProgressChangedEvent) {
    }
}
