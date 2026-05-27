package com.texa.careapp.alarms;

import android.util.Log;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.utils.BatteryLevel;
import com.texa.careapp.utils.CareCache;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.core.CareLibException;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.ArrayList;
import java.util.EnumSet;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class BatteryChargeObserver {
    private static final String TAG = "BatteryChargeObserver";
    public static final float VOLTAGE_TH1 = 12.2f;
    public static final float VOLTAGE_TH2 = 12.9f;
    public static final float VOLTAGE_TH3 = 14.7f;
    public static final float VOLTAGE_TH4 = 16.5f;
    private AlarmStatus mAlarmStatus;
    private AlarmType mAlarmType;
    private CareCache mCareCache;
    private CurrentTrip mCurrentTrip;
    private Float mCurrentVoltage;
    private double mMaxVoltage;
    private double mMinVoltage;
    private VehicleAlarmNotifier mNotifier;
    private ArrayList<VehicleAlarm.AlarmData> mDataHistory = new ArrayList<>();
    private final Observable<Float> mVoltageObservable = createBatteryObservable().doOnNext(new Consumer() { // from class: com.texa.careapp.alarms.BatteryChargeObserver$$ExternalSyntheticLambda0
        @Override // io.reactivex.functions.Consumer
        public final void accept(Object obj) throws Exception {
            this.f$0.m94lambda$new$0$comtexacareappalarmsBatteryChargeObserver((Float) obj);
        }
    }).doOnNext(new Consumer() { // from class: com.texa.careapp.alarms.BatteryChargeObserver$$ExternalSyntheticLambda1
        @Override // io.reactivex.functions.Consumer
        public final void accept(Object obj) {
            this.f$0.parseNewVoltageValue((Float) obj);
        }
    });

    public BatteryChargeObserver(CurrentTrip currentTrip, CareCache careCache, VehicleAlarmNotifier vehicleAlarmNotifier) {
        this.mCurrentTrip = currentTrip;
        this.mCareCache = careCache;
        this.mNotifier = vehicleAlarmNotifier;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-alarms-BatteryChargeObserver, reason: not valid java name */
    public /* synthetic */ void m94lambda$new$0$comtexacareappalarmsBatteryChargeObserver(Float f) throws Exception {
        this.mDataHistory.add(new VehicleAlarm.AlarmData(f.floatValue()));
    }

    @Deprecated
    public Observable<BatteryLevel> observeBatteryLevel() {
        return this.mVoltageObservable.flatMap(new Function() { // from class: com.texa.careapp.alarms.BatteryChargeObserver$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m95x17ceb8ef((Float) obj);
            }
        }).startWith(this.mCareCache.getBatteryLevel());
    }

    /* JADX INFO: renamed from: com.texa.careapp.alarms.BatteryChargeObserver$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$AlarmStatus;

        static {
            int[] iArr = new int[AlarmStatus.values().length];
            $SwitchMap$com$texa$careapp$model$AlarmStatus = iArr;
            try {
                iArr[AlarmStatus.RED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$AlarmStatus[AlarmStatus.YELLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$AlarmStatus[AlarmStatus.GREEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: lambda$observeBatteryLevel$1$com-texa-careapp-alarms-BatteryChargeObserver, reason: not valid java name */
    public /* synthetic */ ObservableSource m95x17ceb8ef(Float f) throws Exception {
        BatteryLevel batteryLevel;
        int i = AnonymousClass2.$SwitchMap$com$texa$careapp$model$AlarmStatus[this.mAlarmStatus.ordinal()];
        if (i == 1) {
            batteryLevel = BatteryLevel.RED;
        } else if (i == 2) {
            batteryLevel = BatteryLevel.YELLOW;
        } else {
            batteryLevel = i != 3 ? null : BatteryLevel.GREEN;
        }
        this.mCareCache.putBatteryLevel(batteryLevel);
        return Observable.just(batteryLevel);
    }

    public void start() {
        this.mVoltageObservable.subscribe();
    }

    protected void parseNewVoltageValue(Float f) {
        this.mCurrentVoltage = f;
        updateMinVoltage();
        updateMaxVoltage();
        if (f.floatValue() < 12.2f) {
            this.mAlarmStatus = AlarmStatus.RED;
            this.mAlarmType = AlarmType.ALTERNATOR_LOW;
        } else if (f.floatValue() < 12.9f) {
            this.mAlarmStatus = AlarmStatus.YELLOW;
            this.mAlarmType = AlarmType.ALTERNATOR_LOW;
        } else if (f.floatValue() < 14.7f) {
            this.mAlarmStatus = AlarmStatus.GREEN;
        } else if (f.floatValue() < 16.5f) {
            this.mAlarmStatus = AlarmStatus.YELLOW;
            this.mAlarmType = AlarmType.ALTERNATOR_HIGH;
        } else {
            this.mAlarmStatus = AlarmStatus.RED;
            this.mAlarmType = AlarmType.ALTERNATOR_HIGH;
        }
        AlarmType alarmType = this.mAlarmType;
        if (alarmType != null) {
            this.mNotifier.notifyAlternatorAlarm(alarmType, this.mAlarmStatus, this.mDataHistory);
        }
    }

    private void updateMinVoltage() {
        this.mMinVoltage = Math.min(this.mMinVoltage, this.mCurrentVoltage.floatValue());
    }

    private void updateMaxVoltage() {
        this.mMaxVoltage = Math.min(this.mMaxVoltage, this.mCurrentVoltage.floatValue());
    }

    private void loadTripInfo() {
        Log.d(TAG, "loading trip stop infos");
        try {
            this.mCurrentTrip.loadTripInfo(EnumSet.of(CurrentTrip.TripInfoType.End));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    private Observable<Float> createBatteryObservable() {
        return Observable.create(new ObservableOnSubscribe<Float>() { // from class: com.texa.careapp.alarms.BatteryChargeObserver.1
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<Float> observableEmitter) throws Exception {
                BatteryChargeObserver.this.mCurrentTrip.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.alarms.BatteryChargeObserver.1.1
                    @Override // java.beans.PropertyChangeListener
                    public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                        if (observableEmitter.isDisposed()) {
                            BatteryChargeObserver.this.mCurrentTrip.removePropertyChangeListener(this);
                            return;
                        }
                        if (CurrentTrip.PROPERTY_TRIP_END_INFO.equals(propertyChangeEvent.getPropertyName())) {
                            CurrentTrip currentTrip = (CurrentTrip) propertyChangeEvent.getSource();
                            if (currentTrip.getTripEndInfo() != null) {
                                Float maxVoltageEngineOn = currentTrip.getTripEndInfo().getMaxVoltageEngineOn();
                                if (maxVoltageEngineOn != null) {
                                    Log.d(BatteryChargeObserver.TAG, "propertyChange, voltage=" + maxVoltageEngineOn);
                                    if (maxVoltageEngineOn.floatValue() > 0.0f) {
                                        observableEmitter.onNext(maxVoltageEngineOn);
                                        return;
                                    }
                                    return;
                                }
                                NullPointerException nullPointerException = new NullPointerException("Average voltage is null!");
                                Timber.w(nullPointerException, "got exception", new Object[0]);
                                observableEmitter.onError(nullPointerException);
                            }
                        }
                    }
                });
            }
        });
    }
}
