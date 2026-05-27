package com.texa.careapp.app.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.checks.Check;
import com.texa.careapp.checks.CheckGps;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.DeviceInfo;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.TimeUnit;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceNotificationController {
    private static final int NOTIFICATION_ID = 8;
    private static final long ONE_MINUTE = 60000;
    static final int SOUND_TYPE_CONFIGURED = 2;
    static final int SOUND_TYPE_DEFAULT = 0;
    static final int SOUND_TYPE_NONE = -1;
    static final int SOUND_TYPE_NOT_CONFIGURED = 1;
    private static final String TAG = "ServiceNotificationController";
    private Disposable mCareDisposable;
    private final ICareObserver mCareObserver;
    private final CommunicationObservable mCommunicationObservable;
    private final Uri mConnectedButNotConfiguredSoundUri;
    private final Uri mConnectedSoundUri;
    private ConnectionInfo mConnectionInfo;
    private final Context mContext;
    private final DongleDataManager mDongleDataManager;
    private Disposable mGPSDisposable;
    private final LoggerManager mLoggerManager;
    private final NotificationManager mNotificationManager;
    private final SharedPreferences mPrefs;
    private boolean shouldPlaySoundOnConnection = false;
    private final Uri mSoundUri = RingtoneManager.getDefaultUri(2);

    @Retention(RetentionPolicy.SOURCE)
    @interface SoundType {
    }

    public ServiceNotificationController(Context context, NotificationManager notificationManager, CommunicationObservable communicationObservable, ICareObserver iCareObserver, LoggerManager loggerManager, DongleDataManager dongleDataManager, SharedPreferences sharedPreferences) {
        this.mNotificationManager = notificationManager;
        this.mPrefs = sharedPreferences;
        this.mContext = context;
        this.mCommunicationObservable = communicationObservable;
        this.mCareObserver = iCareObserver;
        this.mLoggerManager = loggerManager;
        this.mDongleDataManager = dongleDataManager;
        this.mConnectedSoundUri = Uri.parse("android.resource://" + context.getPackageName() + "/" + R.raw.fasten_seat_belts);
        this.mConnectedButNotConfiguredSoundUri = Uri.parse("android.resource://" + context.getPackageName() + "/" + R.raw.beep4);
    }

    public void onCreate(Service service) {
        if (this.mPrefs.getBoolean(Constants.PREFS_KEY_NOTIFICATION, true)) {
            service.startForeground(8, getNotification(this.mContext.getString(R.string.initialising), -1, -2, false));
        }
        Utils.safeDispose(this.mCareDisposable);
        this.mCareDisposable = Observable.combineLatest(this.mCommunicationObservable.observeConnectionStatus().doOnError(new Consumer() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Error CommunicationObserver", new Object[0]);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m382xfef8153((CommunicationObservable.Status) obj);
            }
        }), this.mCareObserver.observeCareStatus().distinct(), new BiFunction() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(this.f$0.checkConnectionInfoForNotification((CommunicationObservable.Status) obj, (Integer) obj2));
            }
        }).doOnError(new Consumer() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m383x15f34cb2((Throwable) obj);
            }
        }).doOnError(new Consumer() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Error CareSubscription", new Object[0]);
            }
        }).subscribe();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-texa-careapp-app-service-ServiceNotificationController, reason: not valid java name */
    public /* synthetic */ void m382xfef8153(CommunicationObservable.Status status) throws Exception {
        if (CommunicationObservable.Status.CARE_NOT_CONNECTED == status) {
            onCareNotConnected();
            Utils.safeDispose(this.mGPSDisposable);
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-texa-careapp-app-service-ServiceNotificationController, reason: not valid java name */
    public /* synthetic */ void m383x15f34cb2(Throwable th) throws Exception {
        Timber.w(th, "mCareSubscription#onError:" + th.toString(), new Object[0]);
        onCareNotConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkConnectionInfoForNotification(CommunicationObservable.Status status, Integer num) {
        Timber.d("#checkConnectionInfoForNotification communication: %s Care: %s", status.toString(), num);
        if (CommunicationObservable.Status.CARE_CONNECTED == status) {
            onCareConnected(2);
        } else {
            onCareNotConnected();
            Utils.safeDispose(this.mGPSDisposable);
        }
        return true;
    }

    private void beepOptions(Integer num) {
        int iIntValue = num.intValue();
        if (iIntValue != 130 && iIntValue != 132 && iIntValue != 255) {
            switch (iIntValue) {
                case 4:
                    onCareConnected(2);
                    break;
            }
        }
        onCareConnected(1);
    }

    protected void onCareConnected(int i) {
        ConnectionInfo connectionInfo = new ConnectionInfo(this.mCommunicationObservable.getCurrentDeviceInfo());
        this.shouldPlaySoundOnConnection = shouldPlaySoundOnConnection(this.mConnectionInfo, connectionInfo);
        this.mConnectionInfo = connectionInfo;
        updateServiceNotification(this.mContext.getString(R.string.connected), i);
        checkGPSForNotification();
    }

    public void onDestroy(Service service) {
        Utils.safeDispose(this.mCareDisposable);
        Utils.safeDispose(this.mGPSDisposable);
        cancelServiceNotification();
        service.stopForeground(true);
    }

    private void checkGPSForNotification() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.e("checkGPSForNotification dongle == NULL", new Object[0]);
            return;
        }
        ServiceDataModel sOSService = dongleModel.getSOSService(ServiceDataModel.DongleServiceStatus.ACTIVE, Utils.today());
        if (sOSService != null && sOSService.isTermsAccepted()) {
            Timber.d("service is purchased and activated, don't show this notification", new Object[0]);
        } else {
            Utils.safeDispose(this.mGPSDisposable);
            this.mGPSDisposable = new CheckGps(this.mContext).check().delay(2L, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m380xc6d80cf3((Check.Result) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.service.ServiceNotificationController$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m381xccdbd852((Throwable) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$checkGPSForNotification$4$com-texa-careapp-app-service-ServiceNotificationController, reason: not valid java name */
    public /* synthetic */ void m380xc6d80cf3(Check.Result result) throws Exception {
        if (result != Check.Result.OK) {
            updateServiceNotification(12, this.mContext.getString(R.string.gps_texa_care_service_not_available), -1, true);
            this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_CONN, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.GET_GPS_DISABLED);
        } else {
            cancelServiceNotification(12);
        }
    }

    /* JADX INFO: renamed from: lambda$checkGPSForNotification$5$com-texa-careapp-app-service-ServiceNotificationController, reason: not valid java name */
    public /* synthetic */ void m381xccdbd852(Throwable th) throws Exception {
        Timber.w(th, "mGPSSubscription#onError", new Object[0]);
        cancelServiceNotification(12);
    }

    boolean shouldPlaySoundOnConnection(ConnectionInfo connectionInfo, ConnectionInfo connectionInfo2) {
        if (connectionInfo == null) {
            Timber.d("Last connection == null", new Object[0]);
            return shouldPlaySoundOnConnectionEnabledFromPrefs();
        }
        if (!connectionInfo2.hwId.equals(connectionInfo.hwId) && shouldPlaySoundOnConnectionEnabledFromPrefs()) {
            Timber.d("CARe device has changed", new Object[0]);
            return true;
        }
        boolean z = System.currentTimeMillis() - connectionInfo.disconnectionTimestamp > ONE_MINUTE;
        Timber.d(" elapsedTime value: %s", Boolean.valueOf(z));
        if (!z || !shouldPlaySoundOnConnectionEnabledFromPrefs()) {
            return false;
        }
        Timber.d("elapsedTime > one minute", new Object[0]);
        return true;
    }

    boolean shouldPlaySoundOnConnectionEnabledFromPrefs() {
        return this.mPrefs.getBoolean(Constants.PREFS_KEY_SOUND_ON_CONNETION, true);
    }

    private void onCareNotConnected() {
        if (this.mPrefs.getBoolean(Constants.PREFS_KEY_NOTIFICATION, true)) {
            updateServiceNotification(this.mContext.getString(R.string.not_connected), -1, -2);
        } else {
            cancelServiceNotification();
        }
        Timber.i("CARe not connected", new Object[0]);
    }

    private void cancelServiceNotification() {
        this.mNotificationManager.cancel(8);
        this.mNotificationManager.cancel(12);
        Timber.d("%s#cancelServiceNotification()", TAG);
    }

    private void cancelServiceNotification(int i) {
        this.mNotificationManager.cancel(i);
    }

    private void updateServiceNotification(String str, int i) {
        this.mNotificationManager.notify(8, getNotification(str, i, false));
    }

    private void updateServiceNotification(String str, int i, int i2) {
        this.mNotificationManager.notify(8, getNotification(str, i, i2, false));
    }

    private void updateServiceNotification(int i, String str, int i2, boolean z) {
        this.mNotificationManager.notify(i, getNotification(str, i2, z));
    }

    private Notification getNotification(String str, int i, boolean z) {
        return getNotification(str, i, 0, z);
    }

    private Notification getNotification(String str, int i, int i2, boolean z) {
        Intent intentBuildIntentForDashboardScreen = MainActivity.buildIntentForDashboardScreen(this.mContext);
        intentBuildIntentForDashboardScreen.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, true);
        NotificationCompat.Builder priority = new NotificationCompat.Builder(this.mContext, i2 == 0 ? Constants.NOTIFICATION_DEFAULT_PRIORITY : Constants.NOTIFICATION_MIN_PRIORITY).setContentTitle(this.mContext.getString(R.string.texa_care)).setSmallIcon(com.texa.careapp.R.drawable.ic_launcher_e).setWhen(System.currentTimeMillis()).setAutoCancel(z).setContentText(str).setStyle(new NotificationCompat.BigTextStyle().bigText(str)).setContentIntent(PendingIntent.getActivity(this.mContext, 1, intentBuildIntentForDashboardScreen, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).setOnlyAlertOnce(true).setPriority(i2);
        Timber.d("play:" + this.shouldPlaySoundOnConnection + " Sound:" + i + " priority:" + i2 + " autoCancel:" + z, new Object[0]);
        if (this.shouldPlaySoundOnConnection) {
            if (i == 0) {
                priority.setSound(this.mSoundUri);
            } else if (i == 1) {
                priority.setSound(this.mConnectedButNotConfiguredSoundUri);
            } else if (i == 2) {
                priority.setSound(this.mConnectedSoundUri);
            }
        }
        Notification notificationBuild = priority.build();
        if (!z) {
            notificationBuild.flags = 2;
        }
        return notificationBuild;
    }

    static class ConnectionInfo {
        long disconnectionTimestamp;
        String hwId;

        ConnectionInfo() {
        }

        ConnectionInfo(DeviceInfo deviceInfo) {
            this.disconnectionTimestamp = System.currentTimeMillis();
            if (deviceInfo != null) {
                this.hwId = deviceInfo.getName();
            } else {
                this.hwId = "";
            }
        }
    }
}
