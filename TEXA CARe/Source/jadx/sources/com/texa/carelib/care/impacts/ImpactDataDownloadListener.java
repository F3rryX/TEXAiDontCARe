package com.texa.carelib.care.impacts;

import com.texa.carelib.care.impacts.events.ImpactDataDownloadCompletedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ImpactDataDownloadListener {
    void onImpactDataDownloadCompleted(ImpactDataDownloadCompletedEvent impactDataDownloadCompletedEvent);

    void onImpactDataDownloadProgressChanged(ImpactDataDownloadProgressChangedEvent impactDataDownloadProgressChangedEvent);
}
