package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleAlarmsJob extends Worker {

    @Inject
    VehicleDataManager mVehicleDataManager;

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public VehicleAlarmsJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.d("onRunTask VehicleAlarm", new Object[0]);
        List<VehicleModel> allVehicles = this.mVehicleDataManager.getAllVehicles();
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        for (VehicleModel vehicleModel : allVehicles) {
            List<VehicleResponse.VehicleAlarmResponse> vehicleAlarmFromServer = getVehicleAlarmFromServer(vehicleModel);
            HashSet<VehicleAlarm> alarms = vehicleModel.getAlarms();
            for (AlarmType alarmType : AlarmType.values()) {
                VehicleAlarm localData = getLocalData(alarms, alarmType);
                VehicleResponse.VehicleAlarmResponse remoteData = getRemoteData(vehicleAlarmFromServer, alarmType);
                if (shouldPullRemoteData(localData, remoteData)) {
                    VehicleAlarm vehicleAlarm = getVehicleAlarm(vehicleModel, alarmType, remoteData);
                    alarms.remove(vehicleAlarm);
                    alarms.add(vehicleAlarm);
                } else if (shouldPushLocalData(localData, remoteData)) {
                    push(localData);
                }
            }
            vehicleModel.setAlarms(alarms);
            try {
                Utils.safeModelSave(vehicleModel, getApplicationContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save vehicle model to database.", new Object[0]);
                resultSuccess = ListenableWorker.Result.retry();
            }
        }
        return resultSuccess;
    }

    protected List<VehicleResponse.VehicleAlarmResponse> getVehicleAlarmFromServer(VehicleModel vehicleModel) {
        try {
            VehicleResponse vehicleResponseBody = this.texaCareApiServiceUser.getVehicleDetailsBlocking(vehicleModel.getUid()).execute().body();
            if (vehicleResponseBody != null && vehicleResponseBody.vehicle.vehicleAlarmCollectionResponse != null && vehicleResponseBody.vehicle.vehicleAlarmCollectionResponse.vehicleAlarmResponses != null) {
                return vehicleResponseBody.vehicle.vehicleAlarmCollectionResponse.vehicleAlarmResponses;
            }
            return Collections.emptyList();
        } catch (Exception e) {
            Timber.d(e, "Ignored exception ", new Object[0]);
            return Collections.emptyList();
        }
    }

    private VehicleAlarm getLocalData(HashSet<VehicleAlarm> hashSet, AlarmType alarmType) {
        for (VehicleAlarm vehicleAlarm : hashSet) {
            if (vehicleAlarm.getAlarmType() == alarmType) {
                return vehicleAlarm;
            }
        }
        return null;
    }

    private VehicleResponse.VehicleAlarmResponse getRemoteData(List<VehicleResponse.VehicleAlarmResponse> list, AlarmType alarmType) {
        for (VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse : list) {
            if (vehicleAlarmResponse.alarmType == alarmType) {
                return vehicleAlarmResponse;
            }
        }
        return null;
    }

    private boolean shouldPushLocalData(VehicleAlarm vehicleAlarm, VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse) {
        return vehicleAlarm != null && (vehicleAlarmResponse == null || vehicleAlarm.getTimestamp().compareTo(vehicleAlarmResponse.timestamp) > 0);
    }

    private boolean shouldPullRemoteData(VehicleAlarm vehicleAlarm, VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse) {
        return vehicleAlarmResponse != null && (vehicleAlarm == null || vehicleAlarm.getTimestamp().compareTo(vehicleAlarmResponse.timestamp) < 0);
    }

    private VehicleAlarm getVehicleAlarm(VehicleModel vehicleModel, AlarmType alarmType, VehicleResponse.VehicleAlarmResponse vehicleAlarmResponse) {
        VehicleAlarm vehicleAlarm = new VehicleAlarm();
        vehicleAlarm.setAlarmType(alarmType);
        vehicleAlarm.setMeasureUnit(Constants.ALARM_TYPE_MEASURE_UNIT_MAP.get(alarmType));
        vehicleAlarm.setVehicleId(vehicleModel.getUid());
        vehicleAlarm.setAlarmStatus(vehicleAlarmResponse.alarmStatus);
        vehicleAlarm.setTimestamp(vehicleAlarmResponse.timestamp);
        return vehicleAlarm;
    }

    private void push(VehicleAlarm vehicleAlarm) {
        try {
            Timber.d("try to upload alarms: %s", vehicleAlarm);
            Timber.d("got response= %s", this.texaCareApiServiceUser.postVehicleAlarms(vehicleAlarm).execute().body());
        } catch (Exception e) {
            Timber.w(e, "alarm sync exception", new Object[0]);
        }
    }
}
