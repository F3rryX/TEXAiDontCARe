package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.networking.ServiceLockStatus;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import io.reactivex.schedulers.Schedulers;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ChangeLockStatusJob extends Worker {

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public ChangeLockStatusJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask ChangeLockStatusJob", new Object[0]);
        String string = getInputData().getString(Constants.EXTRA_TICKET_ID);
        if (string != null) {
            try {
                this.texaCareApiServiceUser.changeLockStatus(string, ServiceLockStatus.TEMPORARY).subscribeOn(Schedulers.io()).subscribe();
                return ListenableWorker.Result.success();
            } catch (Exception e) {
                Timber.w(e, "sendChangeLockStatusBlocking exception", new Object[0]);
                return ListenableWorker.Result.retry();
            }
        }
        return ListenableWorker.Result.success();
    }
}
