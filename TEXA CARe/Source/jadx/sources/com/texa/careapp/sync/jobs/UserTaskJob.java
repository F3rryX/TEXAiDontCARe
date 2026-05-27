package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.activeandroid.Cache;
import com.texa.careapp.CareApplication;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class UserTaskJob extends Worker {

    @Inject
    UserDataManager mUserDataManager;

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public UserTaskJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask UserTask", new Object[0]);
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached == null) {
            Timber.w("user is null!", new Object[0]);
        }
        try {
            Timber.v("try to upload user data: " + userCached, new Object[0]);
            Timber.v("got response = " + this.texaCareApiServiceUser.updateUserData(userCached).execute().body(), new Object[0]);
            markAsSynchronized(userCached);
            return ListenableWorker.Result.success();
        } catch (Exception e) {
            Timber.v("user data sync error", e);
            return ListenableWorker.Result.retry();
        }
    }

    private static void markAsSynchronized(UserModel userModel) {
        try {
            userModel.setSyncNeeded(false);
            Utils.safeModelSave(userModel, Cache.getContext());
            Timber.v("marked parameter as synced: " + userModel, new Object[0]);
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not mark user as synchronized in database.", new Object[0]);
        }
    }
}
