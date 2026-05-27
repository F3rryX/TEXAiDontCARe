package com.texa.careapp.lamps;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.activeandroid.Cache;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.Timestamped;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.care.vehicle.ValueInfo;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.VehicleListener;
import com.texa.carelib.care.vehicle.events.ParametersUpdatedEvent;
import com.texa.carelib.care.vehicle.events.SubscriptionStateChangedEvent;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LampsManager {
    public static final String BEGIN_UPDATE_DISPOSABLE_KEY = "BEGIN_UPDATE_DISPOSABLE_KEY";
    static final long DELAY_LAMPS_SUBSCRIPTION = 5;
    static Long[] ENABLED_LAMPS_LIST = {Long.valueOf(DataID.Enum.LOW_FUEL_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.HEADLAMP_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.BRAKE_PAD_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.MIL_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.BRAKEFLUID_LOW_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.WARN_ENGINE_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.STEERING_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.ALTERNATOR_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.ABS_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.AIRBAG_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.ESP_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.IMMO_ERR_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.PREHEAT_ERR_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.COOLANT_LOW_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.WARN_TEMP_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.OIL_LPRESS_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.TIRE_PRESS_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.WASHFLUID_LAMP_STATUS.getId()), Long.valueOf(DataID.Enum.WATER_IN_FUEL_STATUS.getId()), Long.valueOf(DataID.Enum.SERVICE_LAMP_STATUS.getId())};
    static List<Long> FILTER_WHITE_LIST = Collections.singletonList(Long.valueOf(DataID.Enum.MIL_LAMP_STATUS.getId()));
    private static final boolean LAMP_FILTER_ENABLED = true;
    private static final long LAMP_SUBSCRIPTION_INTERVAL = 15000;
    static final short RPM_THRESHOLD = 500;
    static final short SPEED_THRESHOLD = 3;
    private List<LampStatus> lampListBeforeUpdate;
    private Disposable lampsCheckDisposable;

    @Inject
    protected CAReWorkerManager mCareWorkerManager;
    private Context mContext;
    private DtcManager mDtcManager;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private LampsVehicleListener mVehicleListener;
    private VehicleParametersManagerV2 mVehicleParametersManager;
    private Double rpm;
    private Double speed;
    private PublishSubject<List<LampStatus>> mLampListSubject = PublishSubject.create();
    private PublishSubject<Integer> mLampListSizeSubject = PublishSubject.create();
    private HashMap<String, Disposable> mDisposableHashMap = new HashMap<>();
    private List<Timestamped<Long>> lampsQueue = new ArrayList();

    static /* synthetic */ void lambda$beginUpdateValuesDelayed$3(Long l) throws Exception {
    }

    @Inject
    public LampsManager(Context context, DtcManager dtcManager, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        this.mContext = context;
        this.mDtcManager = dtcManager;
        this.mVehicleParametersManager = vehicleParametersManagerV2;
        ((CareApplication) context.getApplicationContext()).component().inject(this);
    }

    void handleLampsUpdate(boolean z, Timestamped<Long> timestamped, VehicleModel vehicleModel, Vehicle vehicle) {
        if (z) {
            filterLampUpdate(FILTER_WHITE_LIST, timestamped, vehicleModel, vehicle);
        } else {
            onLampsUpdated(false, timestamped, vehicleModel, vehicle);
        }
    }

    void filterLampUpdate(List<Long> list, Timestamped<Long> timestamped, final VehicleModel vehicleModel, final Vehicle vehicle) {
        final long jLongValue = timestamped.getValue().longValue();
        if (list.contains(Long.valueOf(jLongValue))) {
            Timber.v("Flag %d: flag is white listed. No filter is needed.", Long.valueOf(jLongValue));
            onLampsUpdated(true, timestamped, vehicleModel, vehicle);
            return;
        }
        Timber.d("Flag %d: BEGIN FILTER", Long.valueOf(jLongValue));
        if (this.lampsCheckDisposable == null) {
            this.lampsQueue.add(timestamped);
            Timber.v("Flag %d: Waiting for engine RPM and vehicle speed values...", Long.valueOf(jLongValue));
            this.lampsCheckDisposable = Observable.zip(this.mVehicleParametersManager.observeEngineRpm(), this.mVehicleParametersManager.observeVehicleSpeed(), new BiFunction() { // from class: com.texa.careapp.lamps.LampsManager$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return this.f$0.m615lambda$filterLampUpdate$0$comtexacareapplampsLampsManager(jLongValue, vehicleModel, vehicle, (VehicleParam) obj, (VehicleParam) obj2);
                }
            }).doOnError(new Consumer() { // from class: com.texa.careapp.lamps.LampsManager$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "lampsCheckSubscription error", new Object[0]);
                }
            }).subscribe();
            return;
        }
        this.lampsQueue.add(timestamped);
    }

    /* JADX INFO: renamed from: lambda$filterLampUpdate$0$com-texa-careapp-lamps-LampsManager, reason: not valid java name */
    public /* synthetic */ Observable m615lambda$filterLampUpdate$0$comtexacareapplampsLampsManager(long j, VehicleModel vehicleModel, Vehicle vehicle, VehicleParam vehicleParam, VehicleParam vehicleParam2) throws Exception {
        this.rpm = vehicleParam.getValueNumeric();
        this.speed = vehicleParam2.getValueNumeric();
        Timber.v("Flag %1$d: [rpm=%2$s,speed=%3$s]", Long.valueOf(j), this.rpm, this.speed);
        if (this.rpm.doubleValue() > 500.0d && this.speed.doubleValue() > 3.0d) {
            Timber.d("Flag: FILTER RESULT -> STATUS ACTIVE", new Object[0]);
            Iterator<Timestamped<Long>> it = this.lampsQueue.iterator();
            while (it.hasNext()) {
                onLampsUpdated(false, it.next(), vehicleModel, vehicle);
            }
            this.lampsQueue.clear();
        } else {
            Timber.v("Flag: At least one value is under threshold. Reading again the flag status.", new Object[0]);
            vehicle.loadValues(Long.valueOf(j));
        }
        return Observable.empty();
    }

    void onLampsUpdated(boolean z, final Timestamped<Long> timestamped, final VehicleModel vehicleModel, final Vehicle vehicle) {
        Timber.d("onActiveLampDetected: %s", timestamped.toString());
        if (vehicleModel == null) {
            Timber.w("vehicleModel is null!!", new Object[0]);
            return;
        }
        if (!this.mSharedPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.VIN_MISMATCH_ENVIRONMENT)) {
            vehicleModel.updateLamp(z, timestamped, vehicle);
        }
        LampStatus lampById = vehicleModel.getLampById(timestamped.getValue());
        if (lampById != null && lampById.isActive() && !z) {
            new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.lamps.LampsManager$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m616lambda$onLampsUpdated$2$comtexacareapplampsLampsManager(vehicleModel, timestamped, vehicle);
                }
            }, 20000L);
        } else {
            notifyLamps(timestamped, vehicleModel, vehicle);
        }
    }

    /* JADX INFO: renamed from: lambda$onLampsUpdated$2$com-texa-careapp-lamps-LampsManager, reason: not valid java name */
    public /* synthetic */ void m616lambda$onLampsUpdated$2$comtexacareapplampsLampsManager(VehicleModel vehicleModel, Timestamped timestamped, Vehicle vehicle) {
        LampStatus lampById = vehicleModel.getLampById((Long) timestamped.getValue());
        if (lampById == null || !lampById.isActive() || lampById.isFiltered()) {
            return;
        }
        notifyLamps(timestamped, vehicleModel, vehicle);
    }

    private void notifyLamps(Timestamped<Long> timestamped, VehicleModel vehicleModel, Vehicle vehicle) {
        List<LampStatus> activeLamps = vehicleModel.getActiveLamps();
        if (activeLamps.size() > this.lampListBeforeUpdate.size()) {
            this.mLoggerManager.log(ServerLogModel.LogEvent.LAMPS_ON_DETECTED, ServerLogModel.ResultForLog.SUCCESSFULL, "lampType:" + timestamped.getValue() + " rpm:" + this.rpm + " speed:" + this.speed);
        }
        this.lampListBeforeUpdate = activeLamps;
        try {
            LampStatus lampById = vehicleModel.getLampById(timestamped.getValue());
            if (lampById != null) {
                lampById.setFiltered(true);
                Utils.safeModelSave(lampById, Cache.getContext());
            }
        } catch (DatabaseIOException e) {
            Timber.e(e, "Error updating lamp", new Object[0]);
        }
        this.mLampListSubject.onNext(activeLamps);
        this.mLampListSizeSubject.onNext(Integer.valueOf(activeLamps.size()));
        if (Utils.isActive(vehicle, timestamped.getValue().longValue())) {
            this.mLoggerManager.log(ServerLogModel.LogEvent.DTCS_DETECTED, ServerLogModel.ResultForLog.SUCCESSFULL, "Lamp on, waiting for DTCs");
            this.mDtcManager.onActiveLampDetected();
        }
    }

    public Observable<List<LampStatus>> observeActiveLamps() {
        return this.mLampListSubject.hide();
    }

    public Observable<Integer> observeActiveLampsSize() {
        return this.mLampListSizeSubject;
    }

    public void updateActiveLampNotification(NotificationManager notificationManager, List<LampStatus> list) {
        if (Utils.isEmpty(list)) {
            notificationManager.cancel(1);
        } else {
            notificationManager.notify(1, getNotification(list));
        }
    }

    protected Notification getNotification(List<LampStatus> list) {
        return Utils.buildLampsNotification(this.mContext, list);
    }

    public void start(VehicleModel vehicleModel, Vehicle vehicle) {
        if (vehicleModel == null) {
            Timber.w("vehicleModel is null!", new Object[0]);
            return;
        }
        this.lampListBeforeUpdate = vehicleModel.getActiveLamps();
        registerVehicleListener(vehicleModel, vehicle);
        beginUpdateValuesDelayed(vehicle, DELAY_LAMPS_SUBSCRIPTION, TimeUnit.SECONDS);
    }

    void beginUpdateValuesDelayed(final Vehicle vehicle, final long j, final TimeUnit timeUnit) {
        Utils.safeDispose(this.mDisposableHashMap, BEGIN_UPDATE_DISPOSABLE_KEY);
        this.mDisposableHashMap.put(BEGIN_UPDATE_DISPOSABLE_KEY, Observable.timer(DELAY_LAMPS_SUBSCRIPTION, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.lamps.LampsManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                LampsManager.lambda$beginUpdateValuesDelayed$3((Long) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.lamps.LampsManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m613xa4d0ec7f(vehicle, j, timeUnit, (Throwable) obj);
            }
        }, new Action() { // from class: com.texa.careapp.lamps.LampsManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m614xb878c000(vehicle, j, timeUnit);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$beginUpdateValuesDelayed$4$com-texa-careapp-lamps-LampsManager, reason: not valid java name */
    public /* synthetic */ void m613xa4d0ec7f(Vehicle vehicle, long j, TimeUnit timeUnit, Throwable th) throws Exception {
        Timber.e(th, "Error beginUpdateValuesDelayed", new Object[0]);
        th.printStackTrace();
        beginUpdateValuesDelayed(vehicle, j, timeUnit);
    }

    /* JADX INFO: renamed from: lambda$beginUpdateValuesDelayed$5$com-texa-careapp-lamps-LampsManager, reason: not valid java name */
    public /* synthetic */ void m614xb878c000(Vehicle vehicle, long j, TimeUnit timeUnit) throws Exception {
        Set<Long> supportedDataIDs = vehicle.getSupportedDataIDs();
        ArrayList arrayList = new ArrayList();
        for (Long l : ENABLED_LAMPS_LIST) {
            if (supportedDataIDs.contains(l)) {
                arrayList.add(l);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        try {
            vehicle.beginUpdateValues(LAMP_SUBSCRIPTION_INTERVAL, (Long[]) arrayList.toArray(new Long[arrayList.size()]));
        } catch (CareLibException e) {
            Timber.e(e, "Error Subscribing lamps", new Object[0]);
            e.printStackTrace();
            beginUpdateValuesDelayed(vehicle, j, timeUnit);
        }
    }

    public void stop(Vehicle vehicle) {
        unregisterVehicleListener(vehicle);
        Timber.d("observeLamps unsubscribe", new Object[0]);
        Utils.safeDispose(this.lampsCheckDisposable);
        this.lampsCheckDisposable = null;
    }

    void registerVehicleListener(VehicleModel vehicleModel, Vehicle vehicle) {
        LampsVehicleListener lampsVehicleListener = this.mVehicleListener;
        if (lampsVehicleListener == null) {
            LampsVehicleListener lampsVehicleListener2 = new LampsVehicleListener(vehicle, vehicleModel);
            this.mVehicleListener = lampsVehicleListener2;
            vehicle.addVehicleListener(lampsVehicleListener2);
        } else {
            if (Utils.equals(lampsVehicleListener.getVehicleModel().getUid(), vehicleModel.getUid())) {
                return;
            }
            vehicle.removeVehicleListener(this.mVehicleListener);
            LampsVehicleListener lampsVehicleListener3 = new LampsVehicleListener(vehicle, vehicleModel);
            this.mVehicleListener = lampsVehicleListener3;
            vehicle.addVehicleListener(lampsVehicleListener3);
        }
    }

    void unregisterVehicleListener(Vehicle vehicle) {
        LampsVehicleListener lampsVehicleListener = this.mVehicleListener;
        if (lampsVehicleListener != null) {
            vehicle.removeVehicleListener(lampsVehicleListener);
            this.mVehicleListener = null;
        }
    }

    LampsVehicleListener getVehicleListener() {
        return this.mVehicleListener;
    }

    public void scheduleLampSyncTask() {
        this.mCareWorkerManager.scheduleLampManager();
    }

    public final class LampsVehicleListener extends VehicleListener {
        private Handler handler = new Handler(Looper.getMainLooper());
        private Vehicle mVehicle;
        private VehicleModel mVehicleModel;

        LampsVehicleListener(Vehicle vehicle, VehicleModel vehicleModel) {
            this.mVehicle = vehicle;
            this.mVehicleModel = vehicleModel;
        }

        @Override // com.texa.carelib.care.vehicle.VehicleListener
        public void onSubscriptionStateChanged(SubscriptionStateChangedEvent subscriptionStateChangedEvent) {
            super.onSubscriptionStateChanged(subscriptionStateChangedEvent);
            if (subscriptionStateChangedEvent.getError() != null) {
                Iterator<Long> it = this.mVehicle.getSupportedDataIDs().iterator();
                String strConcat = " Supported Parameters = [";
                while (it.hasNext()) {
                    strConcat = strConcat.concat(" " + it.next() + " ");
                }
                FirebaseCrashlytics.getInstance().recordException(new Exception(String.format("Subscription status: %1$s for parameter: %2$s with error: %3$s   ----  %4$s", subscriptionStatusString(subscriptionStateChangedEvent.getSubscriptionStates()[0]), subscriptionStateChangedEvent.getUpdatedParametersIDs()[0], subscriptionStateChangedEvent.getError().getMessage(), strConcat.concat("]"))));
            }
        }

        private String subscriptionStatusString(SubscriptionState subscriptionState) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState[subscriptionState.ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : "SubscribePending" : "UnsubscribePending" : "NotSubscribed" : "Subscribed";
        }

        public VehicleModel getVehicleModel() {
            return this.mVehicleModel;
        }

        @Override // com.texa.carelib.care.vehicle.VehicleListener
        public void onParametersUpdated(ParametersUpdatedEvent parametersUpdatedEvent) {
            for (Long l : parametersUpdatedEvent.getUpdatedParametersIDs()) {
                try {
                    ValueInfo valueInfo = this.mVehicle.getValueInfo(l);
                    if (valueInfo != null && ValueDataType.ENUM == valueInfo.getType() && Utils.isLampStatus(l)) {
                        final Timestamped<Long> timestamped = new Timestamped<>(System.currentTimeMillis(), l);
                        if (Looper.myLooper() != Looper.getMainLooper()) {
                            this.handler.post(new Runnable() { // from class: com.texa.careapp.lamps.LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.m617x2dcadcc4(timestamped);
                                }
                            });
                        } else {
                            LampsManager.this.handleLampsUpdate(true, timestamped, this.mVehicleModel, this.mVehicle);
                        }
                    }
                } catch (InvalidVehicleValueException e) {
                    e.printStackTrace();
                }
            }
        }

        /* JADX INFO: renamed from: lambda$onParametersUpdated$0$com-texa-careapp-lamps-LampsManager$LampsVehicleListener, reason: not valid java name */
        public /* synthetic */ void m617x2dcadcc4(Timestamped timestamped) {
            LampsManager.this.handleLampsUpdate(true, timestamped, this.mVehicleModel, this.mVehicle);
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.lamps.LampsManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState;

        static {
            int[] iArr = new int[SubscriptionState.values().length];
            $SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState = iArr;
            try {
                iArr[SubscriptionState.Subscribed.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState[SubscriptionState.NotSubscribed.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState[SubscriptionState.UnsubscribePending.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState[SubscriptionState.SubscribePending.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }
}
