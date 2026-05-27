package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleJob extends Worker {

    @Inject
    VehicleDataManager mVehicleDataManager;

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public VehicleJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask", new Object[0]);
        List<VehicleModel> allVehicles = this.mVehicleDataManager.getAllVehicles();
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        for (VehicleModel vehicleModel : allVehicles) {
            if (vehicleModel.isSyncNeeded()) {
                try {
                    Timber.d("caricamento su server delle moficihe al veicolo con id: %s", vehicleModel.getUid());
                    this.texaCareApiServiceUser.putVehicleBlocking(vehicleModel.getUid(), vehicleModel).execute().body();
                    vehicleModel.setSyncNeeded(false);
                    Utils.safeModelSave(vehicleModel, getApplicationContext());
                } catch (Exception e) {
                    Timber.d(e, "Caricamento dati veicolo fallito.", new Object[0]);
                    resultSuccess = ListenableWorker.Result.retry();
                }
            }
            try {
                VehicleResponse vehicleResponseBody = this.texaCareApiServiceUser.getVehicleDetailsBlocking(vehicleModel.getUid()).execute().body();
                vehicleModel.setHaveAdvancedDiagnosis(vehicleResponseBody.vehicle.haveAdvancedDiagnosis);
                vehicleModel.setCustomerAvailability(vehicleResponseBody.vehicle.customerAvailability);
                List<VehicleResponse.Deadline> list = vehicleResponseBody.vehicle.deadlines;
                vehicleModel.deleteSchedules();
                if (!Utils.isEmpty(list)) {
                    Iterator<VehicleResponse.Deadline> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            vehicleModel.updateSchedule(it.next());
                        } catch (DatabaseIOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                Utils.safeModelSave(vehicleModel, getApplicationContext());
            } catch (Exception e3) {
                Timber.d(e3, "aggiornamento tipo configurazione fallito", new Object[0]);
                resultSuccess = ListenableWorker.Result.retry();
            }
        }
        if (ListenableWorker.Result.success() == resultSuccess) {
            Timber.d("caricamento dati veicolo completato con successo.", new Object[0]);
        } else {
            Timber.e("caricamento dati veicolo non riuscito.", new Object[0]);
        }
        return resultSuccess;
    }
}
