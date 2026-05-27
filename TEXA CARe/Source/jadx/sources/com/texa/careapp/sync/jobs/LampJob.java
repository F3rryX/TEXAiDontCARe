package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.LampsServerData;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LampJob extends Worker {

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    VehicleDataManager mVehicleDataManager;

    public LampJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask LampJob", new Object[0]);
        for (VehicleModel vehicleModel : this.mVehicleDataManager.getAllVehicles()) {
            if (vehicleModel == null) {
                Timber.v("vehicle is null!", new Object[0]);
            }
            LampsServerData lampsServerData = new LampsServerData();
            lampsServerData.setVehicleId(vehicleModel.getUid());
            lampsServerData.setActiveLamps(vehicleModel.getActiveLamps());
            try {
                Timber.v("try to upload lamps status: " + lampsServerData, new Object[0]);
                Timber.v("lamps status got response= " + this.mTexaCareApiService.postLampsBlocking(lampsServerData).execute().body(), new Object[0]);
            } catch (Exception e) {
                Timber.v(e, "lamp status sync error", new Object[0]);
                return ListenableWorker.Result.retry();
            }
        }
        Timber.v("lamp status sync success", new Object[0]);
        return ListenableWorker.Result.success();
    }
}
