package com.texa.care.eco_driving;

import android.content.Context;
import android.util.Base64;
import com.google.gson.annotations.Expose;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.drivingevents.DrivingStartEvent;
import com.texa.care.eco_driving.events.drivingevents.DrivingStopEvent;
import com.texa.care.eco_driving.events.drivingevents.DrivingStopTempEvent;
import com.texa.care.eco_driving.score.AccelerationsScore;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.care.eco_driving.score.BrakesScore;
import com.texa.care.eco_driving.score.HighRpmEngineColdScore;
import com.texa.care.eco_driving.score.HighSpeedScore;
import com.texa.care.eco_driving.score.OverallScore;
import com.texa.care.eco_driving.score.ParkedEngineOnColdScore;
import com.texa.care.eco_driving.score.ParkedEngineOnScore;
import com.texa.care.eco_driving.score.ScoreConfigurationProvider;
import com.texa.care.eco_driving.utils.jsonSerializer.ExcludedFromEventHub;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.diagresources.DataID;
import com.texa.carelib.profile.Profile;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class DrivingStyleManager implements ScoreContextProvider, ScoreConfigurationProvider {
    private static final int INTERVAL_TRIP_INFO_UPDATE = 10;
    private static final int INTERVAL_VALUES_UPDATE_HIGH_FREQ = 1;
    private static final int INTERVAL_VALUES_UPDATE_LOW_FREQ = 10;
    private static final int RPM_THRESHOLD_FOR_PARKING = 200;
    private static final int SPEED_THRESHOLD_FOR_PARKING = 2;

    @Expose
    private final AccelerationsScore accelerationsScore;
    private Accessory accessory;
    private TripEndInfo beginInfo;

    @Expose
    private final BrakesScore brakesScore;
    private Communication communication;
    private Disposable communicationDisposable;
    private CurrentTrip currentTrip;
    private DataManagerConfiguration dataManagerConfiguration;
    private CompositeDisposable dataManagerConfigurationDisposables;
    private final DataManagerConfigSync dataManagerSync;

    @Expose
    private BaseScore.DrivingProfile drivingProfile;

    @ExcludedFromEventHub
    @Expose
    public List<DrivingEvent> events;
    private FeatureVerifier featureVerifier;
    private Flags flags;
    private Disposable highFrequencyDisposable;

    @Expose
    private final HighRpmEngineColdScore highRpmEngColdScore;

    @Expose
    private final HighSpeedScore highSpeedScore;
    private Disposable lowFrequencyDisposable;
    private ReactiveLocationProvider mLocationProvider;
    private RxCommunication mRxCommunication;
    private RxCurrentTrip mRxCurrentTrip;
    private RxDataManagerConfiguration mRxDataManagerConfiguration;
    private RxVehicle mRxVehicle;
    private TripPersistentStorage mTripPersistentStorage;

    @Expose
    private final OverallScore overallScore;
    private VehicleParkedCheck parkedCheck;

    @Expose
    private final ParkedEngineOnColdScore parkedEngOnColdScore;

    @Expose
    private final ParkedEngineOnScore parkedEngOnScore;
    private Profile profile;
    private double scoreUpdateRate;
    private TripStatisticsInfo statisticsZero;
    private CompositeDisposable tripDisposables;
    private TripID tripID;
    private Long tripNumber;
    private Disposable tripUpdateDisposable;
    private Vehicle vehicle;
    private Disposable vehicleDisposable;

    double getAccThr() {
        return 0.3d;
    }

    double getBrakeThr() {
        return 0.25d;
    }

    public DrivingStyleManager(Context context, Profile profile, DataManagerConfiguration dataManagerConfiguration, CurrentTrip currentTrip, Vehicle vehicle, Accessory accessory, FeatureVerifier featureVerifier, Communication communication, RxVehicle rxVehicle) {
        this();
        setCommunication(communication);
        this.profile = profile;
        this.dataManagerConfiguration = dataManagerConfiguration;
        this.currentTrip = currentTrip;
        this.vehicle = vehicle;
        this.accessory = accessory;
        this.featureVerifier = featureVerifier;
        this.mRxVehicle = rxVehicle;
        this.mLocationProvider = new ReactiveLocationProvider(context);
        this.mTripPersistentStorage = new TripPersistentStorage(context);
        Iterator<BaseScore> it = getAllScores().iterator();
        while (it.hasNext()) {
            it.next().setLocationProvider(this.mLocationProvider);
        }
    }

    private DrivingStyleManager() {
        this.events = new ArrayList();
        this.scoreUpdateRate = 0.05d;
        this.tripDisposables = new CompositeDisposable();
        this.dataManagerConfigurationDisposables = new CompositeDisposable();
        this.drivingProfile = BaseScore.DrivingProfile.UNDEFINED;
        this.scoreUpdateRate = 0.05d;
        this.parkedCheck = new VehicleParkedCheck();
        this.flags = new Flags();
        ParkedEngineOnScore parkedEngineOnScore = new ParkedEngineOnScore();
        this.parkedEngOnScore = parkedEngineOnScore;
        ParkedEngineOnColdScore parkedEngineOnColdScore = new ParkedEngineOnColdScore();
        this.parkedEngOnColdScore = parkedEngineOnColdScore;
        HighRpmEngineColdScore highRpmEngineColdScore = new HighRpmEngineColdScore();
        this.highRpmEngColdScore = highRpmEngineColdScore;
        AccelerationsScore accelerationsScore = new AccelerationsScore();
        this.accelerationsScore = accelerationsScore;
        BrakesScore brakesScore = new BrakesScore();
        this.brakesScore = brakesScore;
        HighSpeedScore highSpeedScore = new HighSpeedScore();
        this.highSpeedScore = highSpeedScore;
        OverallScore overallScore = new OverallScore();
        this.overallScore = overallScore;
        overallScore.addComponent(parkedEngineOnScore, 9).addComponent(parkedEngineOnColdScore, 12).addComponent(highRpmEngineColdScore, 19).addComponent(highSpeedScore, 20).addComponent(brakesScore, 20).addComponent(accelerationsScore, 20);
        DataManagerConfigSync dataManagerConfigSync = new DataManagerConfigSync();
        this.dataManagerSync = dataManagerConfigSync;
        dataManagerConfigSync.dataProvider = this;
        for (BaseScore baseScore : getAllScores()) {
            baseScore.setScoreContextProvider(this);
            baseScore.setScoreConfigurationProvider(this);
        }
        registerForEarlyNotifications();
    }

    public void setCommunication(Communication communication) {
        this.communication = communication;
        if (communication != null) {
            this.mRxCommunication = new RxCommunication(communication);
            registerForCommunicationNotification();
        } else {
            safeDispose(this.communicationDisposable);
        }
    }

    public String getJson() {
        return Utils.buildGSONInstance().toJson(this);
    }

    public String getJsonForEventHub() {
        return Utils.buildGSONInstanceForEventHub().toJson(this);
    }

    private List<BaseScore> getAllScores() {
        return new ArrayList(Arrays.asList(this.parkedEngOnScore, this.parkedEngOnColdScore, this.highRpmEngColdScore, this.accelerationsScore, this.brakesScore, this.highSpeedScore, this.overallScore));
    }

    protected void finalize() throws Throwable {
        super.finalize();
        unregisterForNotifications();
    }

    double getTempThr() {
        return HighRpmEngineColdScore.TEMP_THRESHOLD_DEG_C;
    }

    private void unregisterForNotifications() {
        this.tripDisposables.clear();
        this.dataManagerConfigurationDisposables.clear();
        safeDispose(this.vehicleDisposable);
    }

    private void registerForEarlyNotifications() {
        if (this.communication != null) {
            this.mRxCommunication = new RxCommunication(this.communication);
            registerForCommunicationNotification();
        }
    }

    private void registerForCommunicationNotification() {
        this.communicationDisposable = this.mRxCommunication.observeCommunicationStatus().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m78x17a7981a((CommunicationStatus) obj);
            }
        }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "ON ERROR registerForCommunicationNotification", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$registerForCommunicationNotification$0$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m78x17a7981a(CommunicationStatus communicationStatus) throws Exception {
        this.parkedCheck.dongleConnected = Boolean.valueOf(communicationStatus == CommunicationStatus.CONNECTED);
        onVehicleParked(this.parkedCheck);
    }

    private void registerForNotifications() {
        this.tripDisposables.add(this.mRxCurrentTrip.observeTripStatus().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.observeTripStatus((TripStatus) obj);
            }
        }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Error onTripStatus", new Object[0]);
            }
        }));
        this.tripDisposables.add(this.mRxCurrentTrip.observeTripStatisticsInfo().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.observeTripStatisticsInfo((TripStatisticsInfo) obj);
            }
        }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Error onTripStatisticsInfo", new Object[0]);
            }
        }));
        this.tripDisposables.add(this.mRxCurrentTrip.observeTripStopInfo().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m81xf29bbaa5((TripEndInfo) obj);
            }
        }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Error onTripStopInfo", new Object[0]);
            }
        }));
        if (this.dataManagerSync != null) {
            this.dataManagerConfigurationDisposables.add(this.mRxDataManagerConfiguration.observeAccelerationThreshold().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda12
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m82xdd900727((Float) obj);
                }
            }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "Error onAccelerationThreshold", new Object[0]);
                }
            }));
            this.dataManagerConfigurationDisposables.add(this.mRxDataManagerConfiguration.observeBrakeThreshold().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda13
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m83xc88453a9((Float) obj);
                }
            }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda8
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "Error onBrakeThreshold", new Object[0]);
                }
            }));
            this.dataManagerConfigurationDisposables.add(this.mRxDataManagerConfiguration.observeTemperatureThreshold().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda14
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m79x39d406ba((Integer) obj);
                }
            }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "Error onTemperatureThreshold", new Object[0]);
                }
            }));
        }
        this.vehicleDisposable = this.mRxVehicle.observeParameterUpdates().subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m80x24c8533c((List) obj);
            }
        }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Error onParametersUpdates", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$registerForNotifications$4$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m81xf29bbaa5(TripEndInfo tripEndInfo) throws Exception {
        observeTripStopInfo(this.mRxCurrentTrip.getCurrentTrip(), tripEndInfo);
    }

    /* JADX INFO: renamed from: lambda$registerForNotifications$6$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m82xdd900727(Float f) throws Exception {
        this.dataManagerSync.syncAccThr();
    }

    /* JADX INFO: renamed from: lambda$registerForNotifications$8$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m83xc88453a9(Float f) throws Exception {
        this.dataManagerSync.syncBrakeThr();
    }

    /* JADX INFO: renamed from: lambda$registerForNotifications$10$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m79x39d406ba(Integer num) throws Exception {
        this.dataManagerSync.syncTempThr();
    }

    /* JADX INFO: renamed from: lambda$registerForNotifications$12$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m80x24c8533c(List list) throws Exception {
        if (!this.flags.shouldProcessValueUpdates || getTripID() == null || this.flags.shouldWaitForTripIDUpdate) {
            return;
        }
        if (list.contains(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()))) {
            setVehicleSpeed();
        }
        if (list.contains(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()))) {
            setEngineSpeed();
        }
        if (list.contains(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()))) {
            setEngineTemp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void observeTripStatus(TripStatus tripStatus) {
        Timber.d("ECO-DRIVING-LIB -> observeTripStatus %d, %s", this.currentTrip.getTripID(), tripStatus);
        if (tripStatus == TripStatus.InProgress) {
            this.flags.shouldProcessTripInfo = true;
            this.flags.shouldProcessValueUpdates = true;
            this.flags.tripInProgress = true;
            this.flags.shouldWaitForTripIDUpdate = true;
            if (this.flags.shouldPollTripData) {
                beginTripPolling();
            }
            if (this.flags.shouldPollValues) {
                beginValuesPolling();
                return;
            }
            return;
        }
        if (this.flags.tripInProgress) {
            if (this.flags.shouldNotifyStop) {
                sendEndTripEvent(this.overallScore, false);
                this.flags.shouldNotifyStop = false;
                setTripID(null);
            }
            this.parkedCheck.shouldNotifyTempStop = false;
        }
        this.flags.shouldProcessValueUpdates = false;
        this.flags.shouldProcessTripInfo = false;
        this.flags.tripInProgress = false;
        endTripPolling();
        endValuesPolling();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void observeTripStatisticsInfo(TripStatisticsInfo tripStatisticsInfo) {
        Timber.d("ECO-DRIVING-LIB -> observeTripStatisticsInfo#tripNumber %d %d ----> %s", this.currentTrip.getTripID(), tripStatisticsInfo.getTripNumber(), Base64.encodeToString(tripStatisticsInfo.getRawData(), 2));
        if (!this.flags.shouldProcessTripInfo || this.flags.shouldWaitForTripIDUpdate) {
            return;
        }
        TripStatisticsInfo tripStatisticsInfo2 = this.statisticsZero;
        if (tripStatisticsInfo == null || tripStatisticsInfo2 == null) {
            return;
        }
        List<CounterInfo> listCountersByRemoving = Utils.countersByRemoving(tripStatisticsInfo2.getAccelerationCounters(), tripStatisticsInfo.getAccelerationCounters());
        List<CounterInfo> listUnmodifiableList = listCountersByRemoving != null ? Collections.unmodifiableList(listCountersByRemoving) : null;
        if (listUnmodifiableList != null) {
            this.brakesScore.update(listUnmodifiableList);
            this.accelerationsScore.update(listUnmodifiableList);
        }
        List<CounterInfo> listCountersByRemoving2 = Utils.countersByRemoving(tripStatisticsInfo2.getRPMUnderTempThresholdCounters(), tripStatisticsInfo.getRPMUnderTempThresholdCounters());
        List<CounterInfo> listUnmodifiableList2 = listCountersByRemoving2 != null ? Collections.unmodifiableList(listCountersByRemoving2) : null;
        if (listUnmodifiableList2 != null) {
            this.highRpmEngColdScore.update(listUnmodifiableList2);
            this.parkedEngOnColdScore.update(listUnmodifiableList2);
        }
        List<CounterInfo> listCountersByRemoving3 = Utils.countersByRemoving(tripStatisticsInfo2.getRPMOverTempThresholdCounters(), tripStatisticsInfo.getRPMOverTempThresholdCounters());
        List<CounterInfo> listUnmodifiableList3 = listCountersByRemoving3 != null ? Collections.unmodifiableList(listCountersByRemoving3) : null;
        if (listUnmodifiableList3 != null) {
            this.parkedEngOnScore.update(listUnmodifiableList3);
        }
        List<CounterInfo> listCountersByRemoving4 = Utils.countersByRemoving(tripStatisticsInfo2.getSpeedCounters(), tripStatisticsInfo.getSpeedCounters());
        List<CounterInfo> listUnmodifiableList4 = listCountersByRemoving4 != null ? Collections.unmodifiableList(listCountersByRemoving4) : null;
        if (listUnmodifiableList4 != null) {
            this.highSpeedScore.update(listUnmodifiableList4);
        }
    }

    private void observeTripStopInfo(CurrentTrip currentTrip, TripEndInfo tripEndInfo) {
        Timber.d("ECO-DRIVING-LIB -> observeTripStopInfo#tripNumber %d %d  ----> %s", currentTrip.getTripID(), tripEndInfo.getTripNumber(), Base64.encodeToString(tripEndInfo.getRawData(), 2));
        if (this.flags.shouldProcessTripInfo && tripEndInfo != null) {
            if (this.flags.shouldAcquireZero) {
                if (this.beginInfo == null) {
                    this.beginInfo = tripEndInfo;
                }
                if (this.statisticsZero == null) {
                    this.statisticsZero = currentTrip.getTripStatisticsInfo();
                }
                if (this.beginInfo != null && this.statisticsZero != null) {
                    this.flags.shouldAcquireZero = false;
                }
            }
            TripEndInfo tripEndInfo2 = this.beginInfo;
            Accessory accessory = this.accessory;
            if (accessory == null || tripEndInfo2 == null || currentTrip.getTripID().equals(BigInteger.ZERO)) {
                return;
            }
            Timber.d("ECO-DRIVING-LIB -> careLib#tripId %s", currentTrip.getTripID());
            update(accessory, Utils.asString(currentTrip.getTripID()), tripEndInfo.getTripNumber());
            if (this.flags.shouldWaitForTripIDUpdate) {
                setupStartValues();
                this.flags.shouldWaitForTripIDUpdate = false;
            }
            Float odometer = tripEndInfo2.getOdometer();
            Float odometer2 = tripEndInfo.getOdometer();
            if (odometer != null && odometer2 != null) {
                this.overallScore.setDistance(Utils.odoDifference(odometer, odometer2));
            }
            Date timeStamp = tripEndInfo2.getTimeStamp();
            Date timeStamp2 = tripEndInfo.getTimeStamp();
            if (timeStamp2 == null || timeStamp == null) {
                return;
            }
            this.overallScore.setInterval(Utils.dateDifference(timeStamp, timeStamp2));
        }
    }

    private void update(Accessory accessory, String str, Long l) {
        TripID tripID = new TripID(accessory.getSerialNumber(), str);
        TripID tripID2 = getTripID();
        Object[] objArr = new Object[2];
        objArr[0] = tripID2 != null ? tripID2.toString() : "null";
        objArr[1] = tripID;
        Timber.d("ECO-DRIVING-LIB update TripID --> old %s / new %s", objArr);
        if (!tripID.isValid() || tripID.equals(tripID2)) {
            return;
        }
        setTripID(tripID);
        this.tripNumber = l;
        reset();
        this.overallScore.reset();
        sendStartTripEvent(this.overallScore);
    }

    private void reset() {
        this.flags.reset();
        this.parkedCheck.reset();
        this.beginInfo = null;
        this.statisticsZero = null;
        this.events.clear();
    }

    private void sendStartTripEvent(OverallScore overallScore) {
        if (getTripID() == null || !getTripID().isValid()) {
            return;
        }
        DrivingStartEvent drivingStartEvent = new DrivingStartEvent(overallScore);
        TripPersistentStorage tripPersistentStorage = this.mTripPersistentStorage;
        if (tripPersistentStorage != null) {
            tripPersistentStorage.setTripStartDate(drivingStartEvent.getTime());
        }
        addEvent(drivingStartEvent);
        drivingStartEvent.acquiredPosition(overallScore.getLocationProvider());
    }

    private DrivingEvent addEvent(DrivingEvent drivingEvent) {
        this.events.add(drivingEvent);
        notifyEvent(drivingEvent);
        return drivingEvent;
    }

    private void notifyEvent(DrivingEvent drivingEvent) {
        try {
            for (EcoDrivingCallback ecoDrivingCallback : BaseScore.getCallbacks().keySet()) {
                if (ecoDrivingCallback != null) {
                    ecoDrivingCallback.drivingEventCall(drivingEvent, false);
                }
            }
        } catch (ConcurrentModificationException unused) {
        }
    }

    private void sendEndTripEvent(OverallScore overallScore, boolean z) {
        DrivingEvent drivingStopEvent;
        float odometer = getOdometer();
        Date date = getDate();
        if (z) {
            TripPersistentStorage tripPersistentStorage = this.mTripPersistentStorage;
            if (tripPersistentStorage != null) {
                tripPersistentStorage.setTempStopDate(date);
                this.mTripPersistentStorage.setTempStopOdo(odometer);
            }
            drivingStopEvent = new DrivingStopTempEvent(overallScore);
        } else {
            TripPersistentStorage tripPersistentStorage2 = this.mTripPersistentStorage;
            if (tripPersistentStorage2 != null) {
                float tempStopOdo = tripPersistentStorage2.getTempStopOdo();
                Date tempStopDate = this.mTripPersistentStorage.getTempStopDate();
                Date tripStartDate = this.mTripPersistentStorage.getTripStartDate();
                if (tempStopOdo != -1.0f && tempStopOdo == odometer && tempStopDate.after(tripStartDate)) {
                    date = tempStopDate;
                }
            }
            drivingStopEvent = new DrivingStopEvent(date, overallScore);
        }
        this.mTripPersistentStorage.setLastTripID(getTripID() != null ? getTripID().toString() : null);
        addEvent(drivingStopEvent);
        drivingStopEvent.acquiredPosition(overallScore.getLocationProvider());
    }

    public void stop() {
        if (this.flags.hasStarted) {
            this.flags.hasStarted = false;
            unregisterForNotifications();
            this.flags.shouldProcessValueUpdates = false;
            this.flags.shouldProcessTripInfo = false;
            endTripPolling();
            endValuesPolling();
        }
    }

    private void endValuesPolling() {
        this.flags.shouldProcessValueUpdates = false;
        safeDispose(this.highFrequencyDisposable);
        safeDispose(this.lowFrequencyDisposable);
    }

    private void endTripPolling() {
        this.flags.shouldProcessTripInfo = false;
        safeDispose(this.tripUpdateDisposable);
    }

    public void start(boolean z, boolean z2) {
        if (this.flags.hasStarted) {
            return;
        }
        this.flags.hasStarted = true;
        this.flags.shouldPollTripData = z;
        this.flags.shouldPollValues = z2;
        setupStartValues();
        if (this.currentTrip == null || this.dataManagerConfiguration == null || this.vehicle == null) {
            return;
        }
        this.mRxCurrentTrip = new RxCurrentTrip(this.currentTrip);
        this.mRxDataManagerConfiguration = new RxDataManagerConfiguration(this.dataManagerConfiguration);
        registerForNotifications();
        if (this.currentTrip.getTripStatus() == TripStatus.InProgress) {
            this.flags.shouldProcessValueUpdates = true;
            this.flags.shouldProcessTripInfo = true;
            this.flags.shouldWaitForTripIDUpdate = true;
            this.flags.tripInProgress = true;
            if (this.flags.shouldPollTripData) {
                beginTripPolling();
            }
            if (this.flags.shouldPollValues) {
                beginValuesPolling();
            }
        }
    }

    public void start() {
        start(true, true);
    }

    private void beginValuesPolling() {
        this.flags.shouldProcessValueUpdates = true;
    }

    private void highFreqValuesUpdate() {
        Vehicle vehicle;
        FeatureVerifier featureVerifier = this.featureVerifier;
        if (featureVerifier == null || !featureVerifier.isParametersAvailable() || (vehicle = this.vehicle) == null) {
            return;
        }
        try {
            vehicle.loadValues(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()), Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    private void lowFreqValueUpdate() {
        Vehicle vehicle;
        FeatureVerifier featureVerifier = this.featureVerifier;
        if (featureVerifier == null || !featureVerifier.isParametersAvailable() || (vehicle = this.vehicle) == null) {
            return;
        }
        try {
            vehicle.loadValues(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    private void beginTripPolling() {
        this.flags.shouldProcessTripInfo = true;
        Utils.safeDispose(this.tripUpdateDisposable);
        this.tripUpdateDisposable = Observable.interval(10L, TimeUnit.SECONDS).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m77xabae6b0b((Long) obj);
            }
        }, new Consumer() { // from class: com.texa.care.eco_driving.DrivingStyleManager$$ExternalSyntheticLambda17
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error beginning trip polling", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$beginTripPolling$14$com-texa-care-eco_driving-DrivingStyleManager, reason: not valid java name */
    public /* synthetic */ void m77xabae6b0b(Long l) throws Exception {
        tripInfoUpdate();
    }

    private void tripInfoUpdate() {
        CurrentTrip currentTrip;
        FeatureVerifier featureVerifier = this.featureVerifier;
        if (featureVerifier == null || !featureVerifier.isCurrentTripAvailable() || (currentTrip = this.currentTrip) == null) {
            return;
        }
        try {
            currentTrip.loadTripInfo();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    private void setupStartValues() {
        setVehicleSpeed();
        setEngineSpeed();
        setEngineTemp();
    }

    private void setEngineTemp() {
        Vehicle vehicle = this.vehicle;
        if (vehicle == null) {
            return;
        }
        try {
            double numericValue = vehicle.getNumericValue(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()));
            this.parkedEngOnScore.updateEngineTemp(numericValue);
            this.parkedEngOnColdScore.updateEngineTemp(numericValue);
        } catch (InvalidVehicleValueException e) {
            e.printStackTrace();
        }
    }

    private void setEngineSpeed() {
        Vehicle vehicle = this.vehicle;
        if (vehicle == null) {
            return;
        }
        try {
            double numericValue = vehicle.getNumericValue(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()));
            this.parkedCheck.engineSpeed = numericValue;
            onVehicleParked(this.parkedCheck);
            this.parkedEngOnScore.updateRpm(numericValue);
            this.parkedEngOnColdScore.updateRpm(numericValue);
        } catch (InvalidVehicleValueException e) {
            e.printStackTrace();
        }
    }

    private void setVehicleSpeed() {
        Vehicle vehicle = this.vehicle;
        if (vehicle == null) {
            return;
        }
        try {
            double numericValue = vehicle.getNumericValue(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()));
            this.parkedCheck.vehicleSpeed = numericValue;
            onVehicleParked(this.parkedCheck);
            this.parkedEngOnScore.updateSpeed(numericValue);
            this.parkedEngOnColdScore.updateSpeed(numericValue);
            this.accelerationsScore.updateSpeed(numericValue);
            this.brakesScore.updateSpeed(numericValue);
        } catch (InvalidVehicleValueException e) {
            e.printStackTrace();
        }
    }

    @Override // com.texa.care.eco_driving.ScoreContextProvider
    public TripID getTripID() {
        String tripID;
        if (this.mTripPersistentStorage == null) {
            return null;
        }
        Accessory accessory = this.accessory;
        if ((accessory != null && accessory.getSerialNumber() == null) || (tripID = this.mTripPersistentStorage.getTripID()) == null) {
            return null;
        }
        TripID tripID2 = new TripID(this.accessory.getSerialNumber(), tripID);
        this.mTripPersistentStorage.setTripID(tripID2.getTripNumber());
        return tripID2;
    }

    private void setTripID(TripID tripID) {
        TripPersistentStorage tripPersistentStorage = this.mTripPersistentStorage;
        if (tripPersistentStorage != null) {
            if (tripID == null) {
                tripPersistentStorage.setTripID(null);
            } else {
                tripPersistentStorage.setTripID(tripID.getTripNumber());
            }
        }
        this.tripID = tripID;
    }

    @Override // com.texa.care.eco_driving.ScoreContextProvider
    public Date getDate() {
        Profile profile = this.profile;
        return (profile == null || profile.getProfileDelegate().getDate() == null) ? new Date() : this.profile.getProfileDelegate().getDate();
    }

    @Override // com.texa.care.eco_driving.ScoreContextProvider
    public float getOdometer() {
        CurrentTrip currentTrip = this.currentTrip;
        if (currentTrip == null || currentTrip.getTripEndInfo() == null || this.currentTrip.getTripEndInfo().getOdometer() == null || this.currentTrip.getTripEndInfo().getOdometer().floatValue() <= 0.0f) {
            return -1.0f;
        }
        return this.currentTrip.getTripEndInfo().getOdometer().floatValue();
    }

    @Override // com.texa.care.eco_driving.ScoreContextProvider
    public Long getTripNumber() {
        return this.tripNumber;
    }

    @Override // com.texa.care.eco_driving.score.ScoreConfigurationProvider
    public BaseScore.DrivingProfile getDrivingProfile() {
        return this.drivingProfile;
    }

    public void setDrivingProfile(BaseScore.DrivingProfile drivingProfile) {
        this.drivingProfile = drivingProfile;
    }

    @Override // com.texa.care.eco_driving.score.ScoreConfigurationProvider
    public double getScoreUpdateRate() {
        return this.scoreUpdateRate;
    }

    public void setScoreUpdateRate(double d) {
        this.scoreUpdateRate = d;
    }

    private void onVehicleParked(VehicleParkedCheck vehicleParkedCheck) {
        if (this.flags.tripInProgress) {
            if (vehicleParkedCheck.shouldNotifyTempStop && vehicleParkedCheck.isParked()) {
                vehicleParkedCheck.shouldNotifyTempStop = false;
                sendEndTripEvent(this.overallScore, true);
            } else if (vehicleParkedCheck.isMoving()) {
                vehicleParkedCheck.shouldNotifyTempStop = true;
            }
        }
    }

    private void safeDispose(Disposable disposable) {
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        disposable.dispose();
    }

    private class VehicleParkedCheck {
        Boolean dongleConnected;
        double vehicleSpeed = 0.0d;
        double engineSpeed = 0.0d;
        boolean shouldNotifyTempStop = false;

        VehicleParkedCheck() {
        }

        protected void reset() {
            this.vehicleSpeed = 0.0d;
            this.engineSpeed = 0.0d;
            this.dongleConnected = null;
            this.shouldNotifyTempStop = false;
        }

        boolean isParked() {
            Boolean bool = this.dongleConnected;
            if (bool == null || bool.booleanValue()) {
                return this.engineSpeed <= 200.0d && this.vehicleSpeed <= 2.0d;
            }
            return true;
        }

        boolean isMoving() {
            Boolean bool = this.dongleConnected;
            return (bool == null || bool.booleanValue()) && this.vehicleSpeed > 2.0d;
        }
    }

    private class Flags {
        boolean shouldAcquireZero;
        boolean hasStarted = false;
        boolean tripInProgress = false;
        boolean shouldProcessTripInfo = false;
        boolean shouldProcessValueUpdates = false;
        boolean shouldPollTripData = false;
        boolean shouldPollValues = false;
        boolean shouldNotifyStop = false;
        boolean shouldWaitForTripIDUpdate = true;

        Flags() {
            this.shouldAcquireZero = true;
            this.shouldAcquireZero = true;
        }

        protected void reset() {
            this.shouldAcquireZero = true;
            this.shouldNotifyStop = true;
        }
    }
}
