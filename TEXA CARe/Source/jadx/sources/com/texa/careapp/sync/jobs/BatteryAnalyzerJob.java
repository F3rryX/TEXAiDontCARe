package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.model.BatteryAnalyzeModel;
import com.texa.careapp.model.BatteryModelEntity;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryAnalyzerJob extends Worker {

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    public BatteryAnalyzerJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask BatteryAnalyzerJob", new Object[0]);
        List<BatteryAnalyzeModel> notSyncedData = BatteryAnalyzeModel.getNotSyncedData();
        if (notSyncedData.size() > 0) {
            try {
                for (BatteryAnalyzeModel batteryAnalyzeModel : notSyncedData) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(batteryAnalyzeModel);
                    this.mTexaCareApiService.sendBatteryRaw(new BatteryModelEntity(arrayList)).execute();
                    batteryAnalyzeModel.delete();
                }
                return ListenableWorker.Result.success();
            } catch (Exception e) {
                Timber.w(e, "BatteryAnalyze sync error", new Object[0]);
                return ListenableWorker.Result.failure();
            }
        }
        return ListenableWorker.Result.success();
    }
}
