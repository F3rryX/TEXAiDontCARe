package com.texa.careapp.app.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.sos.SosPrerequisiteActivity;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.checks.Check;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SosPrerequisiteNotificationController {
    private static final int NOTIFICATION_ID = 11;
    private CareApplication mApplication;
    private Disposable mCheckDisposable;
    private Disposable mCommunicationDisposable;
    private CommunicationObservable mCommunicationObservable;
    private final Context mContext;
    private DongleDataManager mDongleDataManager;
    private final NotificationManager mNotificationManager;

    @Inject
    protected ServiceDataManager mServiceDataManager;
    private SosFeatureManager mSosFeatureManager;
    private boolean shouldNotify = true;

    public SosPrerequisiteNotificationController(CareApplication careApplication, NotificationManager notificationManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, SosFeatureManager sosFeatureManager) {
        this.mNotificationManager = notificationManager;
        this.mContext = careApplication.getApplicationContext();
        this.mCommunicationObservable = communicationObservable;
        this.mDongleDataManager = dongleDataManager;
        this.mSosFeatureManager = sosFeatureManager;
        this.mApplication = careApplication;
    }

    public void onCreate() {
        this.mApplication.component().inject(this);
        this.mCommunicationDisposable = this.mCommunicationObservable.observeConnectionStatus().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.SosPrerequisiteNotificationController$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m385x75c0872c((CommunicationObservable.Status) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.SosPrerequisiteNotificationController$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing communication status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-service-SosPrerequisiteNotificationController, reason: not valid java name */
    public /* synthetic */ void m385x75c0872c(CommunicationObservable.Status status) throws Exception {
        Timber.d("communicationObservable status=" + status, new Object[0]);
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            onCareConnected();
        } else {
            onCareNotConnected();
        }
    }

    public void onDestroy() {
        Utils.safeDispose(this.mCommunicationDisposable);
        Utils.safeDispose(this.mCheckDisposable);
    }

    private void onCareConnected() {
        Timber.i("SOS notification onCareConnected", new Object[0]);
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            return;
        }
        ServiceDataModel sOSService = dongleModel.getSOSService(ServiceDataModel.DongleServiceStatus.ACTIVE, Utils.today());
        Object[] objArr = new Object[1];
        objArr[0] = Boolean.valueOf(sOSService == null);
        Timber.i("SOS notification SERVICE EXP NULL? %s", objArr);
        ServiceDataModel sOSService2 = dongleModel.getSOSService(ServiceDataModel.DongleServiceStatus.ACTIVE);
        Object[] objArr2 = new Object[1];
        objArr2[0] = Boolean.valueOf(sOSService2 == null);
        Timber.i("SOS notification SERVICE NULL? %s", objArr2);
        if (sOSService == null && sOSService2 == null) {
            return;
        }
        Utils.safeDispose(this.mCheckDisposable);
        this.mCheckDisposable = this.mSosFeatureManager.observeChecksForNotification().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.SosPrerequisiteNotificationController$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m384xc872e9e6((Check.Result) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.SosPrerequisiteNotificationController$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing checks for notifications", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCareConnected$2$com-texa-careapp-app-service-SosPrerequisiteNotificationController, reason: not valid java name */
    public /* synthetic */ void m384xc872e9e6(Check.Result result) throws Exception {
        if (result == Check.Result.OK) {
            cancelNotification();
            this.shouldNotify = true;
        } else if (this.shouldNotify) {
            displayNotification();
            this.shouldNotify = false;
        }
    }

    private void onCareNotConnected() {
        Timber.i("SOS notification onCareNotConnected", new Object[0]);
        Utils.safeDispose(this.mCheckDisposable);
        cancelNotification();
        this.shouldNotify = true;
    }

    private void cancelNotification() {
        this.mNotificationManager.cancel(11);
    }

    private void displayNotification() {
        this.mNotificationManager.notify(11, getNotification());
    }

    private Notification getNotification() {
        Timber.i("SOS notification getNotification", new Object[0]);
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        ServiceDataManager serviceDataManager = this.mServiceDataManager;
        Intent intentBuildIntent = SosPrerequisiteActivity.buildIntent(this.mContext, serviceDataManager.getServicePriority(serviceDataManager.filterActiveSosServicesForHwId(dongleModel.getHwid(), this.mServiceDataManager.getSosServices())));
        intentBuildIntent.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, true);
        return new NotificationCompat.Builder(this.mContext, Constants.NOTIFICATION_DEFAULT_PRIORITY).setContentTitle(this.mContext.getString(R.string.texa_care)).setWhen(System.currentTimeMillis()).setSmallIcon(com.texa.careapp.R.drawable.ic_launcher_e).setAutoCancel(true).setContentText(this.mContext.getString(R.string.sos_prerequisite_notification)).setContentIntent(PendingIntent.getActivity(this.mContext, 1, intentBuildIntent, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).build();
    }
}
