package com.texa.careapp.fcm;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.R;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.events.BatteryChargeEvent;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleAdditionalDataModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import java.util.Map;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FcmMessagingService extends FirebaseMessagingService {
    public static final String TAG = "FcmMessagingService";
    private static final boolean isNotificationAutoCancel = true;
    protected NotificationCompat.Builder mBuilder;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected NotificationManager mNotificationManager;

    @Inject
    protected ServiceDataManager mServiceDataManager;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        Timber.d("refreshed token: %s", str);
        SharedPreferences.Editor editorEdit = getSharedPreferences(Constants.FCM_REGISTRATION_TOKEN, 0).edit();
        editorEdit.putString(Constants.FCM_CURRENT_TOKEN, str);
        editorEdit.apply();
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        super.onMessageReceived(remoteMessage);
        ((CareApplication) getApplication()).component().inject(this);
        Timber.d(TAG, "From: %s", remoteMessage.getFrom());
        Map<String, String> data = remoteMessage.getData();
        String str = remoteMessage.getData().get(FcmConstants.NOTIFICATION_TYPE);
        if (str == null) {
            Timber.w(" NOTIFICATION_TYPE == null", new Object[0]);
            return;
        }
        int i = -1;
        try {
            i = Integer.parseInt(str);
        } catch (Exception e) {
            Timber.e(e, " parseTypeFcmError", new Object[0]);
        }
        manageNotification(data, i);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onSendError(String str, Exception exc) {
        super.onSendError(str, exc);
        Timber.w("FirebaseCloudMessaging.MESSAGE_TYPE_SEND_ERROR %s", str);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onDeletedMessages() {
        super.onDeletedMessages();
        Timber.w("FirebaseCloudMessaging.MESSAGE_TYPE_DELETED", new Object[0]);
    }

    private void manageNotification(Map<String, String> map, int i) {
        Timber.d(" notificationType: %s", Integer.valueOf(i));
        Context applicationContext = getApplicationContext();
        if (i == 0) {
            Intent intentBuildIntentForTexaCarePageOnGooglePlay = MainActivity.buildIntentForTexaCarePageOnGooglePlay();
            intentBuildIntentForTexaCarePageOnGooglePlay.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE, true);
            sendNotification(map.get(FcmConstants.NOTIFICATION_MESSAGE), i, intentBuildIntentForTexaCarePageOnGooglePlay, true);
        }
        if (i == 103) {
            Intent intentBuildIntentForDashboardScreen = MainActivity.buildIntentForDashboardScreen(applicationContext);
            intentBuildIntentForDashboardScreen.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE, true);
            notificationBattery(new FcmAlarmNotification(map), map.get(FcmConstants.NOTIFICATION_MESSAGE), i, intentBuildIntentForDashboardScreen);
            return;
        }
        switch (i) {
            case FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE /* 300 */:
                scheduleSyncServiceDataTask(FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE, map.get(FcmConstants.NOTIFICATION_MESSAGE));
                break;
            case FcmConstants.ID_SERVICE_RENEW /* 301 */:
                scheduleSyncServiceDataTask(FcmConstants.ID_SERVICE_RENEW, map.get(FcmConstants.NOTIFICATION_MESSAGE));
                break;
            case FcmConstants.ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION /* 302 */:
                break;
            case FcmConstants.ID_SERVICE_SOS_PURCHASED_BY_CUSTOMER /* 303 */:
                scheduleSyncServiceDataTask(FcmConstants.ID_SERVICE_SOS_PURCHASED_BY_CUSTOMER, map.get(FcmConstants.NOTIFICATION_MESSAGE));
                break;
            default:
                Intent intentBuildIntentForDashboardScreen2 = MainActivity.buildIntentForDashboardScreen(applicationContext);
                intentBuildIntentForDashboardScreen2.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE, true);
                sendNotification(map.get(FcmConstants.NOTIFICATION_MESSAGE), i, intentBuildIntentForDashboardScreen2, true);
                break;
        }
    }

    protected boolean notificationBattery(FcmAlarmNotification fcmAlarmNotification, String str, int i, Intent intent) {
        String json = Utils.buildGsonInstance().toJson(fcmAlarmNotification);
        if (json != null) {
            Timber.d("notificationBattery: %s", json);
        }
        VehicleModel vehicle = getVehicle(fcmAlarmNotification);
        if (vehicle != null) {
            VehicleAdditionalDataModel additionalDataByType = vehicle.getAdditionalDataByType(VehicleAdditionalDataModel.BATTERY_STATE_TYPE);
            additionalDataByType.setValue(json);
            try {
                Utils.safeModelSave(additionalDataByType, getApplicationContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save notification additional data in database.", new Object[0]);
            }
            this.mCAReWorkerManager.scheduleVehicleAlarm();
        } else {
            Timber.w("notificationBattery vehicle not present in DB", new Object[0]);
        }
        if (FcmAlarmNotification.ALARM_STATE_ACTIVE.equals(fcmAlarmNotification.getAlarm_state()) || FcmAlarmNotification.ALARM_STATE_WARNING.equals(fcmAlarmNotification.getAlarm_state())) {
            sendNotification(str, i, intent, true);
        }
        this.mEventBus.post(new BatteryChargeEvent());
        Timber.d("notificationBattery consumed", new Object[0]);
        return false;
    }

    private void sendNotification(String str, int i, Intent intent, boolean z) {
        if (intent == null) {
            Timber.w(" Intent to launch on click NULL", new Object[0]);
            return;
        }
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        Resources resources = getResources();
        String murmurhash3x8632toHexString = "";
        NotificationCompat.Builder contentText = new NotificationCompat.Builder(this, Constants.NOTIFICATION_DEFAULT_PRIORITY).setSmallIcon(R.drawable.ic_launcher_e).setContentTitle(resources != null ? resources.getString(com.texa.care.R.string.texa_care) : "").setAutoCancel(z).setStyle(new NotificationCompat.BigTextStyle().bigText(str)).setContentText(str);
        this.mBuilder = contentText;
        contentText.setContentIntent(activity);
        try {
            murmurhash3x8632toHexString = Utils.getMurmurhash3x8632toHexString(str);
        } catch (Exception e) {
            Timber.e(e, "getMurmurhash3x8632toHexString error", new Object[0]);
        }
        this.mNotificationManager.notify(murmurhash3x8632toHexString, i, this.mBuilder.build());
    }

    protected void scheduleSyncServiceDataTask(int i, String str) {
        this.mCAReWorkerManager.scheduleOneOffJob(i, str);
    }

    private VehicleModel getVehicle(FcmAlarmNotification fcmAlarmNotification) {
        String vehicle_id;
        if (fcmAlarmNotification == null || (vehicle_id = fcmAlarmNotification.getVehicle_id()) == null) {
            return null;
        }
        return this.mVehicleDataManager.getVehicleById(vehicle_id);
    }
}
