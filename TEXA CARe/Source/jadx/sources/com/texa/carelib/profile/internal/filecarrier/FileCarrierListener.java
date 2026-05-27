package com.texa.carelib.profile.internal.filecarrier;

import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface FileCarrierListener {
    void onFileReceived(FileReceivedEvent fileReceivedEvent);

    void onFileReceivedProgressChanged(FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent);

    void onFileSent(FileSentEvent fileSentEvent);

    void onFileSentProgressChanged(FileSentProgressChangedEvent fileSentProgressChangedEvent);
}
