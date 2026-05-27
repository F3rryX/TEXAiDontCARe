package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.model.DtcModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.ErrorsArchive;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DTCJob extends Worker {

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    VehicleDataManager mVehicleDataManager;

    public DTCJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask DTC", new Object[0]);
        for (VehicleModel vehicleModel : this.mVehicleDataManager.getAllVehicles()) {
            List<DtcModel> dtcs = vehicleModel.getDtcs();
            ErrorsArchive errorsArchive = new ErrorsArchive();
            errorsArchive.setVehicleId(vehicleModel.getUid());
            for (DtcModel dtcModel : dtcs) {
                if (isValid(dtcModel)) {
                    errorsArchive.addDtcModel(dtcModel);
                }
            }
            try {
                Timber.d("try to upload dtc: %s", errorsArchive);
                Timber.v("got response= %s", this.mTexaCareApiService.archiveErrorsBlocking(errorsArchive).execute().body());
            } catch (Exception e) {
                Timber.d(e, "dtc sync error", new Object[0]);
                return ListenableWorker.Result.retry();
            }
        }
        return ListenableWorker.Result.success();
    }

    private boolean isValid(DtcModel dtcModel) {
        if (dtcModel.getDtcECU() == null) {
            Timber.d("dtc ecu is null!", new Object[0]);
            return false;
        }
        if (dtcModel.getDtcId() != null) {
            return true;
        }
        Timber.d("dtc id is null!", new Object[0]);
        return false;
    }
}
