package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.activeandroid.Cache;
import com.texa.careapp.CareApplication;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.networking.ParametersServerData;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ParameterJob extends Worker {

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    VehicleDataManager mVehicleDataManager;

    public ParameterJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask ParameterJob", new Object[0]);
        for (VehicleModel vehicleModel : this.mVehicleDataManager.getAllVehicles()) {
            List<VehicleParam> unsyncedParameters = vehicleModel.getUnsyncedParameters();
            ParametersServerData parametersServerData = new ParametersServerData();
            parametersServerData.setVehicleId(vehicleModel.getUid());
            parametersServerData.setOdometer(vehicleModel.getOdometer());
            parametersServerData.addParameters(unsyncedParameters);
            try {
                Timber.v("try to upload parameters: " + parametersServerData, new Object[0]);
                Timber.v("got response= " + this.mTexaCareApiService.postParametersBlocking(parametersServerData).execute().body(), new Object[0]);
                markAsSynchronized(unsyncedParameters);
            } catch (Exception e) {
                Timber.v("parameters sync error", e);
            }
        }
        return ListenableWorker.Result.success();
    }

    private void markAsSynchronized(List<VehicleParam> list) {
        for (VehicleParam vehicleParam : list) {
            try {
                Utils.safeModelSave(vehicleParam, Cache.getContext());
                vehicleParam.setSyncNeeded(false);
                Timber.v("Marked parameter as synced: %s", vehicleParam);
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not mark parameter as synchronized in database.", new Object[0]);
            }
        }
    }
}
