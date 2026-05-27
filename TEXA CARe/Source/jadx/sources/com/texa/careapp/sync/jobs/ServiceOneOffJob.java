package com.texa.careapp.sync.jobs;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceOneOffJob extends Worker {
    public static final String EXTRA_NOTIFICATION_ID = "extra-notification-id";
    public static final String EXTRA_NOTIFICATION_MESSAGE = "msg";
    private final Context context;

    @Inject
    DongleDataManager mDongleDataManager;

    @Inject
    LoginHelperRx mLoginHelperRx;

    @Inject
    NotificationManager mNotificationManager;

    @Inject
    ServiceDataManager mServiceDataManager;

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    VehicleDataManager mVehicleDataManager;

    public ServiceOneOffJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
        this.context = context;
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        if (this.mLoginHelperRx.isUserLogged()) {
            try {
                List<String> uUIDsActiveGenericSosServices = this.mServiceDataManager.getUUIDsActiveGenericSosServices();
                this.mServiceDataManager.saveServiceData(this.mTexaCareApiService.dongleServicesBlocking().execute().body());
                List<String> uUIDsActiveGenericSosServices2 = this.mServiceDataManager.getUUIDsActiveGenericSosServices();
                int i = getInputData().getInt(EXTRA_NOTIFICATION_ID, -1);
                String string = getInputData().getString("msg");
                if (i != -1 && string != null) {
                    forwardNotification(i, string);
                } else if (!Utils.isEmpty(uUIDsActiveGenericSosServices2) && !Utils.isEmpty(uUIDsActiveGenericSosServices)) {
                    Timber.d("checkForNewItems(preList, postList)", new Object[0]);
                    checkForNewItems(uUIDsActiveGenericSosServices, uUIDsActiveGenericSosServices2);
                }
            } catch (Exception e) {
                Timber.w(e, "service data sync error", new Object[0]);
                return ListenableWorker.Result.retry();
            }
        }
        Timber.d("service data sync success", new Object[0]);
        return ListenableWorker.Result.success();
    }

    private void forwardNotification(int i, String str) {
        if (i == -1 || str == null) {
            return;
        }
        PendingIntent activity = PendingIntent.getActivity(this.context, 0, MainActivity.buildIntentForDashboardScreen(getApplicationContext()), Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        NotificationCompat.Builder contentText = Utils.getDefaultNotificationBuilder(getApplicationContext()).setStyle(new NotificationCompat.BigTextStyle().bigText(str)).setContentText(str);
        contentText.setContentIntent(activity);
        this.mNotificationManager.notify(i, contentText.build());
    }

    protected void checkForNewItems(List<String> list, List<String> list2) {
        for (String str : list2) {
            if (!list.contains(str) && this.mDongleDataManager.getDongleModel() != null && this.mVehicleDataManager.getSelectedVehicle() != null) {
                notifyNewSosService(str);
            }
        }
    }

    private void notifyNewSosService(String str) {
        String string;
        NotificationManager notificationManager = (NotificationManager) this.context.getSystemService("notification");
        PendingIntent activity = PendingIntent.getActivity(this.context, 0, MainActivity.buildIntentForDashboardScreen(this.context), Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        ServiceDataModel serviceDataModel = (ServiceDataModel) new Select().from(ServiceDataModel.class).where("uid = ?", str).executeSingle();
        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            VehicleModel vehicleByHwId = this.mVehicleDataManager.getVehicleByHwId(serviceDataModel.getHwid());
            if (vehicleByHwId == null) {
                Timber.w(" Vehicle is NULL !!", new Object[0]);
                return;
            }
            string = this.context.getString(R.string.sos_notification_description_301_302, Utils.formatVehicleModel(vehicleByHwId), new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault()).format(serviceDataModel.getLastExpirationDate()));
        } else {
            string = this.context.getString(R.string.service_sos_light_notification_message);
        }
        NotificationCompat.Builder contentText = Utils.getDefaultNotificationBuilder(getApplicationContext()).setStyle(new NotificationCompat.BigTextStyle().bigText(string)).setContentText(string);
        contentText.setContentIntent(activity);
        notificationManager.notify(FcmConstants.ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION, contentText.build());
    }
}
