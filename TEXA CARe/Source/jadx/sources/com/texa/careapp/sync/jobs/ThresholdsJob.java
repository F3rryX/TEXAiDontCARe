package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.ThresholdModelList;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ThresholdsJob extends Worker {

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    VehicleDataManager mVehicleDataManager;

    public ThresholdsJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask Thresholds", new Object[0]);
        List<VehicleModel> allVehicles = this.mVehicleDataManager.getAllVehicles();
        if (allVehicles != null && !allVehicles.isEmpty()) {
            for (VehicleModel vehicleModel : allVehicles) {
                ThresholdModelList unsyncedThresholds = vehicleModel.getUnsyncedThresholds();
                if (unsyncedThresholds.isEmpty()) {
                    try {
                        Timber.d("try to upload thresholds : %s", unsyncedThresholds);
                        Timber.v("got response= %s", this.mTexaCareApiService.putThresholdsBlocking(vehicleModel.getUid(), unsyncedThresholds).execute().body());
                        markAsSynced(unsyncedThresholds);
                        Timber.d("thresholds sync success", new Object[0]);
                    } catch (Exception e) {
                        Timber.w(e, "thresholds sync error", new Object[0]);
                        return ListenableWorker.Result.retry();
                    }
                } else {
                    return ListenableWorker.Result.success();
                }
            }
            return ListenableWorker.Result.success();
        }
        return ListenableWorker.Result.success();
    }

    private void markAsSynced(List<ThresholdModel> list) {
        Iterator<ThresholdModel> it = list.iterator();
        while (it.hasNext()) {
            try {
                it.next().markAsSynced();
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save threshold in database", new Object[0]);
            }
        }
    }
}
