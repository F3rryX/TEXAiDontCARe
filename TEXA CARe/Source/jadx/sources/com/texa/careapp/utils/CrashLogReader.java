package com.texa.careapp.utils;

import android.util.Log;
import com.activeandroid.Cache;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.CrashLogModel;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.care.impacts.ImpactDataDownloadListener;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadCompletedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadProgressChangedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataErasedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import java.util.Iterator;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CrashLogReader {
    private static final String TAG = "CrashLogReader";
    private CAReWorkerManager mCaReWorkerManager;
    public CompleteAllOperation mCompleteAllOperation;
    private DongleModel mDongleModel;
    private ImpactDetection mImpactDetection;
    private ImpactDataDownloadListener mSavedImpactsLoadedEventCallback = new ImpactDataDownloadListener() { // from class: com.texa.careapp.utils.CrashLogReader.1
        @Override // com.texa.carelib.care.impacts.ImpactDataDownloadListener
        public void onImpactDataDownloadProgressChanged(ImpactDataDownloadProgressChangedEvent impactDataDownloadProgressChangedEvent) {
        }

        @Override // com.texa.carelib.care.impacts.ImpactDataDownloadListener
        public void onImpactDataDownloadCompleted(ImpactDataDownloadCompletedEvent impactDataDownloadCompletedEvent) {
            CrashLogReader.this.saveCrashLog(impactDataDownloadCompletedEvent);
        }
    };

    public interface CompleteAllOperation {
        void onCompletedAllOperations();
    }

    public CrashLogReader(DongleModel dongleModel, CAReWorkerManager cAReWorkerManager) {
        this.mDongleModel = dongleModel;
        this.mCaReWorkerManager = cAReWorkerManager;
    }

    public void read(ImpactDetection impactDetection) {
        Timber.d("Crash log book read invoked", new Object[0]);
        this.mImpactDetection = impactDetection;
        if (impactDetection.isReadingImpactData()) {
            Log.w(TAG, "Already reading crash log.");
            return;
        }
        try {
            impactDetection.loadImpacts(this.mSavedImpactsLoadedEventCallback);
            Timber.i("Finish reading", new Object[0]);
        } catch (CareLibException unused) {
            Log.w(TAG, "crash log false");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCrashLog(ImpactDataDownloadCompletedEvent impactDataDownloadCompletedEvent) {
        if (this.mDongleModel == null) {
            Timber.d("Can not download crash log because dongle is null", new Object[0]);
            return;
        }
        Timber.d("impacts.size()=%s", Integer.valueOf(impactDataDownloadCompletedEvent.getImpacts().size()));
        Timber.d("events.size()=%s", Integer.valueOf(impactDataDownloadCompletedEvent.getAccelerationEvents().size()));
        Iterator<CrashReport> it = impactDataDownloadCompletedEvent.getAccelerationEvents().iterator();
        while (it.hasNext()) {
            try {
                CrashLogModel crashLogModelFrom = CrashLogModel.from(it.next(), this.mDongleModel, false);
                Utils.safeModelSave(crashLogModelFrom, Cache.getContext());
                Timber.d("CrashLog saved: %s", crashLogModelFrom);
            } catch (DatabaseIOException e) {
                e.printStackTrace();
                return;
            }
        }
        for (Impact impact : impactDataDownloadCompletedEvent.getImpacts()) {
            if (impact.getVerboseCrashReport() != null) {
                try {
                    CrashLogModel crashLogModelFrom2 = CrashLogModel.from(impact.getVerboseCrashReport(), this.mDongleModel);
                    Utils.safeModelSave(crashLogModelFrom2, Cache.getContext());
                    Timber.d("CrashLogVerbose saved: %s", crashLogModelFrom2);
                } catch (DatabaseIOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            if (impact.getCrashReport() != null) {
                try {
                    CrashLogModel crashLogModelFrom3 = CrashLogModel.from(impact.getCrashReport(), this.mDongleModel, true);
                    Utils.safeModelSave(crashLogModelFrom3, Cache.getContext());
                    Timber.d("CrashLog saved: %s", crashLogModelFrom3);
                } catch (DatabaseIOException e3) {
                    e3.printStackTrace();
                    return;
                }
            }
        }
        try {
            this.mImpactDetection.eraseImpacts(new Callback() { // from class: com.texa.careapp.utils.CrashLogReader$$ExternalSyntheticLambda0
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m637lambda$saveCrashLog$0$comtexacareapputilsCrashLogReader((ImpactDataErasedEvent) obj);
                }
            });
        } catch (CareLibException e4) {
            e4.printStackTrace();
        }
        scheduleCrashSyncTaskOneShot();
    }

    /* JADX INFO: renamed from: lambda$saveCrashLog$0$com-texa-careapp-utils-CrashLogReader, reason: not valid java name */
    public /* synthetic */ void m637lambda$saveCrashLog$0$comtexacareapputilsCrashLogReader(ImpactDataErasedEvent impactDataErasedEvent) {
        Timber.i("CRASH ERASED", new Object[0]);
        this.mCompleteAllOperation.onCompletedAllOperations();
    }

    private void scheduleCrashSyncTaskOneShot() {
        this.mCaReWorkerManager.scheduleCrashLog();
    }
}
