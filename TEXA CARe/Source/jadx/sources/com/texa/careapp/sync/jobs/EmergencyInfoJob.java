package com.texa.careapp.sync.jobs;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.gson.Gson;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.model.EmergencyInfo;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyInfoJob extends Worker {
    private static Gson sGson = Utils.buildGsonInstance();

    @Inject
    SharedPreferences mPreferences;

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public EmergencyInfoJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected EmergencyInfo getEmergencyInfo() {
        return (EmergencyInfo) sGson.fromJson(this.mPreferences.getString(Constants.CACHED_EMERGENCY_INFO_KEY, ""), EmergencyInfo.class);
    }

    protected void deleteCachedEmergencyInfo() {
        this.mPreferences.edit().remove(Constants.CACHED_EMERGENCY_INFO_KEY).apply();
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask EmergencyInfoJob", new Object[0]);
        EmergencyInfo emergencyInfo = getEmergencyInfo();
        if (emergencyInfo == null) {
            Timber.d("emergencyInfo is null", new Object[0]);
        }
        try {
            Timber.d("addEmergencyBlocking response: %s", this.texaCareApiServiceUser.addEmergencyBlocking(emergencyInfo).execute().body());
            deleteCachedEmergencyInfo();
            return ListenableWorker.Result.success();
        } catch (Exception e) {
            Timber.w(e, "addEmergencyBlocking exception", new Object[0]);
            return ListenableWorker.Result.retry();
        }
    }
}
