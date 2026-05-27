package com.texa.careapp.configuration;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.webservices.TexaService;
import com.texa.carelib.webservices.VehicleConfigurationInfoLoadedEvent;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function4;
import io.reactivex.functions.Predicate;
import java.math.BigInteger;
import java.util.concurrent.Callable;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateConfigurationHelper {
    private static final String TAG = "UpdateConfigurationHelper";
    private ICareObserver mCareObserver;
    private Context mContext;
    private DongleDataManager mDongleDataManager;
    private NotificationManager mNotificationManager;
    private TexaService mTexaService;
    private VehicleObserver mVehicleObserver;

    public UpdateConfigurationHelper(Context context, ICareObserver iCareObserver, TexaService texaService, NotificationManager notificationManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, VehicleObserver vehicleObserver) {
        this.mContext = context;
        this.mCareObserver = iCareObserver;
        this.mTexaService = texaService;
        this.mNotificationManager = notificationManager;
        this.mDongleDataManager = dongleDataManager;
        this.mVehicleObserver = vehicleObserver;
        communicationObservable.observeConnectionStatus().compose(CommunicationObservable.filterStatus(CommunicationObservable.Status.CARE_NOT_CONNECTED)).subscribe(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m608xa85f6935((CommunicationObservable.Status) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda14
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing connection status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-configuration-UpdateConfigurationHelper, reason: not valid java name */
    public /* synthetic */ void m608xa85f6935(CommunicationObservable.Status status) throws Exception {
        dismissAllNotifications();
    }

    private void dismissAllNotifications() {
        this.mNotificationManager.cancel(9);
        this.mNotificationManager.cancel(3);
    }

    public void checkCareNotConfigured() {
        this.mCareObserver.observeCareStatus().filter(new Predicate() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return UpdateConfigurationHelper.lambda$checkCareNotConfigured$2((Integer) obj);
            }
        }).distinct().subscribe(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m605xb051eb60((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing care status", new Object[0]);
            }
        });
    }

    static /* synthetic */ boolean lambda$checkCareNotConfigured$2(Integer num) throws Exception {
        return num.intValue() == 4 || num.intValue() == 3 || num.intValue() == 132;
    }

    /* JADX INFO: renamed from: lambda$checkCareNotConfigured$3$com-texa-careapp-configuration-UpdateConfigurationHelper, reason: not valid java name */
    public /* synthetic */ void m605xb051eb60(Integer num) throws Exception {
        if (num.intValue() == 3 || num.intValue() == 132) {
            if (!UpdateConfigurationIntentService.isRunning(this.mContext)) {
                displayCareNotConfiguredNotification();
                return;
            } else {
                hideNeedsConfigurationNotification();
                return;
            }
        }
        hideNeedsConfigurationNotification();
    }

    protected Notification buildCareNotConfiguredNotification(DongleDataManager dongleDataManager, VehicleObserver vehicleObserver) {
        PendingIntent activity;
        DongleModel dongleModel = dongleDataManager.getDongleModel();
        VehicleModel currentVehicle = vehicleObserver.getCurrentVehicle();
        if (dongleModel == null || currentVehicle == null) {
            activity = null;
        } else {
            activity = PendingIntent.getActivity(this.mContext, Constants.PENDING_INTENT_REQUEST_CODE_CONFIGURATION_UPGRADE, MainActivity.buildIntentForDashboardScreen(this.mContext), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        }
        return buildCareNotConfiguredNotification(Utils.getDefaultNotificationBuilder(this.mContext), true, activity);
    }

    protected Notification buildCareNotConfiguredNotification(NotificationCompat.Builder builder, boolean z, PendingIntent pendingIntent) {
        builder.setContentText(this.mContext.getString(R.string.care_not_configured_notification_title)).setAutoCancel(true);
        if (pendingIntent != null) {
            builder.setContentIntent(pendingIntent);
        }
        Notification notificationBuild = builder.build();
        notificationBuild.flags = 32;
        return notificationBuild;
    }

    private Notification buildConfigurationNeedsUpdateNotification() {
        Intent intentBuildDefaultIntent = UpdateConfigurationActivity.buildDefaultIntent(this.mContext);
        intentBuildDefaultIntent.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE, true);
        Notification notificationBuild = Utils.getDefaultNotificationBuilder(this.mContext).setContentText(this.mContext.getResources().getString(R.string.configuration_needs_update_notification_content)).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(this.mContext, Constants.PENDING_INTENT_REQUEST_CODE_CONFIGURATION_UPGRADE, intentBuildDefaultIntent, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).build();
        notificationBuild.flags = 48;
        return notificationBuild;
    }

    public void displayCareNotConfiguredNotification() {
        this.mNotificationManager.notify(9, buildCareNotConfiguredNotification(this.mDongleDataManager, this.mVehicleObserver));
    }

    public void displayNeedsUpdateNotification() {
        this.mNotificationManager.notify(3, buildConfigurationNeedsUpdateNotification());
    }

    private void hideNeedsConfigurationNotification() {
        this.mNotificationManager.cancel(9);
    }

    public Observable<CareConfigurationInfos> observeConfigurationInfosLocal() {
        return observeCareInfos().take(1L).flatMap(new Function() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Observable.just((UpdateConfigurationHelper.CareConfigurationInfos) obj);
            }
        });
    }

    public Observable<CareConfigurationInfos> observeConfigurationInfos() {
        return observeCareInfos().take(1L).flatMap(new Function() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m609x8c3beb65((UpdateConfigurationHelper.CareConfigurationInfos) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeConfigurationInfos$5$com-texa-careapp-configuration-UpdateConfigurationHelper, reason: not valid java name */
    public /* synthetic */ ObservableSource m609x8c3beb65(CareConfigurationInfos careConfigurationInfos) throws Exception {
        if (4 == careConfigurationInfos.status) {
            return checkConfigurationStatusOnServer(careConfigurationInfos);
        }
        return Observable.just(careConfigurationInfos);
    }

    private Observable<CareConfigurationInfos> observeCareInfos() {
        return Observable.zip(this.mCareObserver.observeAccessorySerialNumber().doOnNext(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.v("serialNumberObservable=" + ((String) obj), new Object[0]);
            }
        }), this.mCareObserver.observeVinCode().doOnNext(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.v("vinObservable=" + ((String) obj), new Object[0]);
            }
        }), this.mCareObserver.observeAccessoryInterpreterVersion().doOnNext(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.v("interpreterVersionObservable=" + ((BigInteger) obj), new Object[0]);
            }
        }), this.mCareObserver.observeCareStatus().doOnNext(new Consumer() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.v("careStatusObservable=" + ((Integer) obj), new Object[0]);
            }
        }).filter(new Predicate() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return UpdateConfigurationHelper.lambda$observeCareInfos$10((Integer) obj);
            }
        }), new Function4() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function4
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return UpdateConfigurationHelper.lambda$observeCareInfos$11((String) obj, (String) obj2, (BigInteger) obj3, (Integer) obj4);
            }
        });
    }

    static /* synthetic */ boolean lambda$observeCareInfos$10(Integer num) throws Exception {
        return num.intValue() != 255;
    }

    static /* synthetic */ CareConfigurationInfos lambda$observeCareInfos$11(String str, String str2, BigInteger bigInteger, Integer num) throws Exception {
        return new CareConfigurationInfos(num.intValue(), str2, str, bigInteger);
    }

    private Observable<CareConfigurationInfos> checkConfigurationStatusOnServer(final CareConfigurationInfos careConfigurationInfos) {
        return Observable.defer(new Callable() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m607xed4adb3c(careConfigurationInfos);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkConfigurationStatusOnServer$14$com-texa-careapp-configuration-UpdateConfigurationHelper, reason: not valid java name */
    public /* synthetic */ ObservableSource m607xed4adb3c(final CareConfigurationInfos careConfigurationInfos) throws Exception {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda7
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m606x605dc41d(careConfigurationInfos, observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkConfigurationStatusOnServer$13$com-texa-careapp-configuration-UpdateConfigurationHelper, reason: not valid java name */
    public /* synthetic */ void m606x605dc41d(final CareConfigurationInfos careConfigurationInfos, final ObservableEmitter observableEmitter) throws Exception {
        if (careConfigurationInfos.vin == null) {
            Timber.w("vinCode could not be null!", new Object[0]);
        }
        this.mTexaService.getVehicleConfigurationInfo().loadVehicleConfigurationInfo(careConfigurationInfos.serialNumber, careConfigurationInfos.vin, careConfigurationInfos.interpreterVersion, new Callback() { // from class: com.texa.careapp.configuration.UpdateConfigurationHelper$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                UpdateConfigurationHelper.lambda$checkConfigurationStatusOnServer$12(careConfigurationInfos, observableEmitter, (VehicleConfigurationInfoLoadedEvent) obj);
            }
        });
    }

    static /* synthetic */ void lambda$checkConfigurationStatusOnServer$12(CareConfigurationInfos careConfigurationInfos, ObservableEmitter observableEmitter, VehicleConfigurationInfoLoadedEvent vehicleConfigurationInfoLoadedEvent) {
        CareError error = vehicleConfigurationInfoLoadedEvent.getError();
        if (error == null) {
            VehicleConfigurationStatus vehicleConfigurationStatus = vehicleConfigurationInfoLoadedEvent.getVehicleConfigurationStatus();
            Log.d(TAG, "VehicleConfigurationStatus=" + vehicleConfigurationStatus);
            careConfigurationInfos.vehicleConfigurationStatus = vehicleConfigurationStatus;
            observableEmitter.onNext(careConfigurationInfos);
        } else {
            Throwable exception = error.getException();
            if (exception != null) {
                observableEmitter.onError(exception);
            } else {
                observableEmitter.onError(new Exception(error.getMessage()));
            }
        }
        observableEmitter.onComplete();
    }

    public static class CareConfigurationInfos {
        public BigInteger interpreterVersion;
        public String serialNumber;
        public int status;
        public VehicleConfigurationStatus vehicleConfigurationStatus;
        public String vin;

        CareConfigurationInfos(int i, String str, String str2, BigInteger bigInteger) {
            this.status = i;
            this.vin = str;
            this.serialNumber = str2;
            this.interpreterVersion = bigInteger;
        }

        public String toString() {
            return "CareConfigurationInfos{status=" + this.status + ", vin='" + this.vin + "', serialNumber='" + this.serialNumber + "', interpreterVersion=" + this.interpreterVersion + ", vehicleConfigurationStatus=" + this.vehicleConfigurationStatus + '}';
        }

        public boolean isValid() {
            return (this.serialNumber == null || this.vin == null || this.interpreterVersion == null || this.status != 4) ? false : true;
        }
    }
}
