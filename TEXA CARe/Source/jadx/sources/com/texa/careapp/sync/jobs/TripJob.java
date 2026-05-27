package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.model.TripModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.TripDataManager;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class TripJob extends Worker {

    @Inject
    LoginHelperRx mLoginHelperRx;

    @Inject
    RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    TripDataManager mTripDataManager;

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public TripJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask TRIP", new Object[0]);
        if (!this.mLoginHelperRx.isUserLogged()) {
            Timber.w("user is null!", new Object[0]);
        }
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        List<TripModel> all = this.mTripDataManager.getAll();
        Timber.v("create TripList, size -> %s", Integer.valueOf(all.size()));
        for (TripModel tripModel : all) {
            try {
                Timber.d("carico sul server il viaggio: %s", tripModel.toString());
                Timber.d("risposta dal server: %s", this.texaCareApiServiceUser.updateTripDataBlocking(tripModel).execute().body());
                Timber.d("cancello viaggio: %s", tripModel.toString());
                tripModel.delete();
            } catch (Exception e) {
                Timber.w(e, "Cannot upload trip data: %s", tripModel.toString());
                if (this.mRetrofitErrorParser.isRawDataInvalid(e)) {
                    Timber.d("deleting record with invalid raw data: %s", tripModel);
                    Timber.d("cancello viaggio: %s", tripModel.toString());
                    tripModel.delete();
                }
                resultSuccess = ListenableWorker.Result.retry();
            }
        }
        if (resultSuccess == ListenableWorker.Result.success()) {
            Timber.d("viaggi caricati con successo", new Object[0]);
        } else {
            Timber.d("si sono verificati degli errori nel caricamento dei viaggi", new Object[0]);
        }
        return resultSuccess;
    }
}
