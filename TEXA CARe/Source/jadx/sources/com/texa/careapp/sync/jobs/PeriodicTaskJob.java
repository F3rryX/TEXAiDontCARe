package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ServiceDataManager;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class PeriodicTaskJob extends Worker {

    @Inject
    LoginHelperRx mLoginHelperRx;

    @Inject
    ServiceDataManager mServiceDataManager;

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    public PeriodicTaskJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.d(" onRunTask PeriodicTaskJob", new Object[0]);
        if (this.mLoginHelperRx.isUserLogged()) {
            try {
                this.mServiceDataManager.saveServiceData(this.mTexaCareApiService.dongleServicesBlocking().execute().body());
            } catch (Exception e) {
                Timber.e(e, " service data sync error ", new Object[0]);
                return ListenableWorker.Result.failure();
            }
        }
        Timber.d(" service data sync success ", new Object[0]);
        return ListenableWorker.Result.success();
    }
}
