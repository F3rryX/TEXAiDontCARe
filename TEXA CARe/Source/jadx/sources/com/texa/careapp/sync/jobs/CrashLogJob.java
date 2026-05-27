package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.model.CrashLogModel;
import com.texa.careapp.model.CrashLogModelEntity;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CrashLogJob extends Worker {

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    public CrashLogJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("SyncCrashLogTask onRunTask", new Object[0]);
        List<CrashLogModel> notSyncedData = CrashLogModel.getNotSyncedData();
        if (notSyncedData.size() > 0) {
            try {
                for (CrashLogModel crashLogModel : notSyncedData) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(crashLogModel);
                    this.mTexaCareApiService.sendRawCrashLog(new CrashLogModelEntity(arrayList)).execute();
                    crashLogModel.delete();
                }
                return ListenableWorker.Result.success();
            } catch (Exception e) {
                Timber.w(e, "CrashLog sync error", new Object[0]);
                return ListenableWorker.Result.retry();
            }
        }
        return ListenableWorker.Result.success();
    }
}
