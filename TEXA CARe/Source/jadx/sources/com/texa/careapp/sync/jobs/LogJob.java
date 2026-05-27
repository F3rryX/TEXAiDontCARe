package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.texa.careapp.CareApplication;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.Utils;
import java.io.IOException;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LogJob extends Worker {

    @Inject
    LoginHelperRx mLoginHelperRx;

    @Inject
    TexaCareServiceBus mTexaCareServiceBus;

    public LogJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.d("onRunTask LogJob", new Object[0]);
        if (this.mLoginHelperRx.isUserLogged()) {
            for (ServerLogModel serverLogModel : getLogNeedToSyncList()) {
                try {
                    Timber.d("Selected log: %s", serverLogModel.toString());
                    if (isPositiveResponse(serverLogModel)) {
                        Timber.d("log Synced: %s", serverLogModel.toString());
                        serverLogModel.setSyncNeeded(false);
                        Utils.safeModelSave(serverLogModel, getApplicationContext());
                    } else {
                        Timber.e("response returned false", new Object[0]);
                    }
                } catch (DatabaseIOException e) {
                    Timber.e(e, "Could not save log in database.", new Object[0]);
                    return ListenableWorker.Result.retry();
                } catch (Exception e2) {
                    Timber.e(e2, "caricamento dati Log fallito.", new Object[0]);
                    return ListenableWorker.Result.retry();
                }
            }
            deleteLogSynced();
            return ListenableWorker.Result.success();
        }
        return ListenableWorker.Result.failure();
    }

    protected boolean isPositiveResponse(ServerLogModel serverLogModel) throws IOException {
        int iCode = this.mTexaCareServiceBus.sendLog(serverLogModel).execute().code();
        Timber.d("Server error:%s", Integer.valueOf(iCode));
        return iCode >= 200 || iCode <= 299;
    }

    protected List<ServerLogModel> getLogNeedToSyncList() {
        return new Select().from(ServerLogModel.class).where("sync_needed=?", true).execute();
    }

    protected void deleteLogSynced() {
        Timber.d("delete log Synced", new Object[0]);
        new Delete().from(ServerLogModel.class).where("sync_needed=?", false).execute();
    }
}
