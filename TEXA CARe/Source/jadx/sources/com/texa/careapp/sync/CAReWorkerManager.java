package com.texa.careapp.sync;

import android.content.Context;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.sync.jobs.BatteryAnalyzerJob;
import com.texa.careapp.sync.jobs.ChangeLockStatusJob;
import com.texa.careapp.sync.jobs.CrashLogJob;
import com.texa.careapp.sync.jobs.DTCJob;
import com.texa.careapp.sync.jobs.EmergencyInfoJob;
import com.texa.careapp.sync.jobs.EmergencyInfoMessageJob;
import com.texa.careapp.sync.jobs.LampJob;
import com.texa.careapp.sync.jobs.LogJob;
import com.texa.careapp.sync.jobs.ParameterJob;
import com.texa.careapp.sync.jobs.PeriodicTaskJob;
import com.texa.careapp.sync.jobs.PurchaseDataJob;
import com.texa.careapp.sync.jobs.ServiceOneOffJob;
import com.texa.careapp.sync.jobs.ThresholdsJob;
import com.texa.careapp.sync.jobs.TripJob;
import com.texa.careapp.sync.jobs.UserTaskJob;
import com.texa.careapp.sync.jobs.VehicleAlarmsJob;
import com.texa.careapp.sync.jobs.VehicleJob;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class CAReWorkerManager {
    private final Constraints baseConstraints;
    private final Context context;

    public CAReWorkerManager(Context context, CareApplication careApplication) {
        careApplication.component().inject(this);
        this.context = context;
        this.baseConstraints = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
    }

    public void cancelAllWork() {
        WorkManager.getInstance(this.context).cancelAllWork();
    }

    public void scheduleBatteryAnalyzerJob() {
        WorkManager.getInstance(this.context).enqueueUniquePeriodicWork(Constants.SYNC_DISPATCHER_TAG_BATTERY_ANALYZE, ExistingPeriodicWorkPolicy.REPLACE, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) BatteryAnalyzerJob.class, 600L, TimeUnit.SECONDS).addTag(Constants.SYNC_DISPATCHER_TAG_BATTERY_ANALYZE).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).setConstraints(this.baseConstraints).build());
    }

    public void cancelBatteryAnalyzerJob() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_BATTERY_ANALYZE);
    }

    public void scheduleEmergencyInfoJob() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(EmergencyInfoJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_EMERGENCY_INFO).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelEmergencyInfoJob() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_EMERGENCY_INFO);
    }

    public void scheduleEmergencyMessageJob() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(EmergencyInfoMessageJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_EMERGENCY_MESSAGE_INFO).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelEmergencyMessageJob() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_EMERGENCY_MESSAGE_INFO);
    }

    public void scheduleChangeLockStatus(String str) throws Throwable {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(ChangeLockStatusJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_CHANGE_LOCK_STATUS).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).setInputData(new Data.Builder().putString(Constants.EXTRA_TICKET_ID, str).build()).build());
    }

    public void cancelChangeLockStatus() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_CHANGE_LOCK_STATUS);
    }

    public void scheduleCrashLog() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(CrashLogJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_CRASH_LOG).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelCrashLog() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_CRASH_LOG);
    }

    public void scheduleDTCJob() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(DTCJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_DTC).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelDTCJob() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_DTC);
    }

    public void scheduleLampManager() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(LampJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_LAMPS).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelLampManager() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_LAMPS);
    }

    public void scheduleLogSend() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(LogJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_LOG).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelLogSend() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_LOG);
    }

    public void scheduleParameterSend() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(ParameterJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_PARAMETERS).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelParameterSend() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_PARAMETERS);
    }

    public void schedulePurchaseDataSync() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(PurchaseDataJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_PURCHASE_DATA).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelPurchaseDataSync() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_PURCHASE_DATA);
    }

    public void scheduleThreshold() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(ThresholdsJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_THRESHOLDS).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelThreshold() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_THRESHOLDS);
    }

    public void scheduleTripSync() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(TripJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_TRIP).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelTripSync() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_TRIP);
    }

    public void scheduleUserTask() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(UserTaskJob.class).addTag("user").setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelUserTask() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag("user");
    }

    public void scheduleVehicleAlarm() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(VehicleAlarmsJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_VEHICLE_ALARMS).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelVehicleAlarm() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_VEHICLE_ALARMS);
    }

    public void scheduleVehicleSync() {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(VehicleJob.class).addTag("vehicle").setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).build());
    }

    public void cancelVehicleSync() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag("vehicle");
    }

    public void schedulePeriodicTask() {
        WorkManager.getInstance(this.context).enqueueUniquePeriodicWork(Constants.SYNC_DISPATCHER_TAG_SERVICE_DATA_PERIODIC, ExistingPeriodicWorkPolicy.REPLACE, new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) PeriodicTaskJob.class, 4L, TimeUnit.HOURS).addTag(Constants.SYNC_DISPATCHER_TAG_SERVICE_DATA_PERIODIC).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).setConstraints(this.baseConstraints).build());
    }

    public void cancelPeriodicTask() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_SERVICE_DATA_PERIODIC);
    }

    public void scheduleOneOffJob(int i, String str) {
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(ServiceOneOffJob.class).addTag(Constants.SYNC_DISPATCHER_TAG_SERVICE_DATA_ONE_OFF).setConstraints(this.baseConstraints).setInitialDelay(5L, TimeUnit.SECONDS).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 60L, TimeUnit.SECONDS).setInputData(new Data.Builder().putInt(ServiceOneOffJob.EXTRA_NOTIFICATION_ID, i).putString("msg", str).build()).build());
    }

    public void cancelOneOffJob() {
        WorkManager.getInstance(this.context).cancelAllWorkByTag(Constants.SYNC_DISPATCHER_TAG_SERVICE_DATA_ONE_OFF);
    }
}
