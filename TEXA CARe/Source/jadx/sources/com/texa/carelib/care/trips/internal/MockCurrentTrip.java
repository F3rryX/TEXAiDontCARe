package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.core.utils.UUIDHelper;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.math.BigInteger;
import java.util.EnumSet;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class MockCurrentTrip extends CurrentTripBase {
    private static final int DEFAULT_IN_PROGRESS_DURATION = 20000;
    private static final int DEFAULT_SEARCHING_DELAY = 250;
    private static final int DEFAULT_SEARCHING_DURATION = 5000;
    private static final float DEFAULT_START_TRIP_AVERAGE_VOLTAGE_ENGINE_OFF = 12.2f;
    private static final float DEFAULT_START_TRIP_MIN_VOLTAGE_ENGINE_OFF = 11.8f;
    private static final float DEFAULT_START_TRIP_ODOMETER = 516.9f;
    private static final float DEFAULT_STOP_TRIP_AVERAGE_VOLTAGE_ENGINE_ON = 14.0f;
    private static final float DEFAULT_STOP_TRIP_ODOMETER = 597.3f;
    public static final String EXTRA_DRIVER_ID = "SimulatorDriverID";
    public static final String EXTRA_START_TRIP_AVERAGE_VOLTAGE_ENGINE_OFF = "StartTripAverageVoltageEngineOff";
    public static final String EXTRA_START_TRIP_MIN_VOLTAGE_ENGINE_OFF = "StartTripMinVoltageEngineOff";
    public static final String EXTRA_START_TRIP_ODOMETER = "StartTripOdometer";
    public static final String EXTRA_STOP_TRIP_AVERAGE_VOLTAGE_ENGINE_ON = "StopTripAverageVoltageEngineOn";
    public static final String EXTRA_STOP_TRIP_ODOMETER = "StopTripOdometer";
    private static final int LOAD_TRIP_INFO_DELAY = 500;
    public static final String TAG = "MockCurrentTrip";
    private ScheduledExecutorService mScheduler;
    private TripBeginInfo mTripBeginInfo;
    private final ReentrantLockWrapper mTripBeginInfoLock;
    private TripEndInfo mTripEndInfo;
    private final ReentrantLockWrapper mTripEndInfoLock;
    private TripStatisticsInfo mTripStatisticsInfo;
    private final ReentrantLockWrapper mTripStatisticsInfoLock;
    public static final String EXTRA_SEARCHING_DELAY = "MockCurrentTrip.SearchingDelay";
    public static final String EXTRA_SEARCHING_DURATION = "MockCurrentTrip.SearchingDuration";
    public static final String EXTRA_IN_PROGRESS_DURATION = "MockCurrentTrip.SearchingDuration";
    private static final Long MOCK_TRIP_NUM = 4L;
    private static final UUID DEFAULT_SIMULATOR_DRIVER_ID = UUID.randomUUID();

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.profile.ProfileSubModule
    public /* bridge */ /* synthetic */ Profile getProfile() {
        return super.getProfile();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.core.utils.CareStruct
    public /* bridge */ /* synthetic */ byte[] getRawData() {
        return super.getRawData();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ TripBeginInfo getTripBeginInfo() {
        return super.getTripBeginInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ TripEndInfo getTripEndInfo() {
        return super.getTripEndInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ BigInteger getTripID() {
        return super.getTripID();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ TripStatisticsInfo getTripStatisticsInfo() {
        return super.getTripStatisticsInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.care.trips.CurrentTrip
    public /* bridge */ /* synthetic */ void loadTripInfo() throws CareLibException {
        super.loadTripInfo();
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripBeginInfo(TripBeginInfo tripBeginInfo) {
        super.setTripBeginInfo(tripBeginInfo);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripEndInfo(TripEndInfo tripEndInfo) {
        super.setTripEndInfo(tripEndInfo);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripID(BigInteger bigInteger) {
        super.setTripID(bigInteger);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripStatisticsInfo(TripStatisticsInfo tripStatisticsInfo) {
        super.setTripStatisticsInfo(tripStatisticsInfo);
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase
    public /* bridge */ /* synthetic */ void setTripStatus(TripStatus tripStatus) {
        super.setTripStatus(tripStatus);
    }

    public MockCurrentTrip(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
        String str = TAG;
        this.mTripBeginInfoLock = new ReentrantLockWrapper(str, "mTripBeginInfoLock");
        this.mTripEndInfoLock = new ReentrantLockWrapper(str, "mTripEndInfoLock");
        this.mTripStatisticsInfoLock = new ReentrantLockWrapper(str, "mTripStatisticsInfoLock");
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public void loadTripInfo(final EnumSet<CurrentTrip.TripInfoType> enumSet) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        getScheduler().schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.MockCurrentTrip$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m714xbe4b78a1(enumSet);
            }
        }, 500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$loadTripInfo$0$com-texa-carelib-care-trips-internal-MockCurrentTrip, reason: not valid java name */
    public /* synthetic */ void m714xbe4b78a1(EnumSet enumSet) {
        TripStatisticsInfo tripStatisticsInfo;
        TripEndInfo tripEndInfo;
        TripBeginInfo tripBeginInfo;
        this.mTripBeginInfoLock.lock("loadTripInfo");
        try {
            if (enumSet.contains(CurrentTrip.TripInfoType.Begin) && (tripBeginInfo = this.mTripBeginInfo) != null) {
                setTripBeginInfo(new TripBeginInfo(tripBeginInfo));
            }
            this.mTripBeginInfoLock.unlock("loadTripInfo");
            try {
                Thread.sleep(500L);
            } catch (InterruptedException unused) {
            }
            this.mTripEndInfoLock.lock("loadTripInfo");
            try {
                if (enumSet.contains(CurrentTrip.TripInfoType.End) && (tripEndInfo = this.mTripEndInfo) != null) {
                    TripEndInfoBuilder tripEndInfoBuilderFrom = TripEndInfoBuilder.from(tripEndInfo);
                    if (TripStatus.Ended != getTripStatus()) {
                        tripEndInfoBuilderFrom.setTimestamp(Utils.getUTCNow());
                    }
                    setTripEndInfo(tripEndInfoBuilderFrom.build());
                }
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                this.mTripStatisticsInfoLock.lock("loadTripInfo");
                try {
                    if (enumSet.contains(CurrentTrip.TripInfoType.Statistics) && (tripStatisticsInfo = this.mTripStatisticsInfo) != null) {
                        setTripStatisticsInfo(TripStatisticsInfoBuilder.from(tripStatisticsInfo).build());
                    }
                } finally {
                    this.mTripStatisticsInfoLock.unlock("loadTripInfo");
                }
            } finally {
                this.mTripEndInfoLock.unlock("loadTripInfo");
            }
        } catch (Throwable th) {
            this.mTripBeginInfoLock.unlock("loadTripInfo");
            throw th;
        }
    }

    @Override // com.texa.carelib.care.trips.internal.CurrentTripBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1) {
            getScheduler().schedule(new TripSearchingRunnable(getScheduler()), getArguments().getInt(EXTRA_SEARCHING_DELAY, 250), TimeUnit.MILLISECONDS);
        } else if (i == 2 || i == 3 || i == 4 || i == 5) {
            releaseScheduler();
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.trips.internal.MockCurrentTrip$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void releaseScheduler() {
        ScheduledExecutorService scheduledExecutorService = this.mScheduler;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.mScheduler = null;
        }
    }

    private ScheduledExecutorService getScheduler() {
        if (this.mScheduler == null) {
            this.mScheduler = Executors.newScheduledThreadPool(Runtime.getRuntime().availableProcessors());
        }
        return this.mScheduler;
    }

    private abstract class TripStatusRunnableBase implements Runnable {
        private final ScheduledExecutorService mScheduler;

        TripStatusRunnableBase(ScheduledExecutorService scheduledExecutorService) {
            this.mScheduler = scheduledExecutorService;
        }

        protected ScheduledExecutorService getScheduler() {
            return this.mScheduler;
        }
    }

    private class TripSearchingRunnable extends TripStatusRunnableBase {
        TripSearchingRunnable(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
        }

        @Override // java.lang.Runnable
        public void run() {
            MockCurrentTrip.this.setTripStatus(TripStatus.Searching);
            try {
                MockCurrentTrip.this.loadTripInfo();
            } catch (CareLibException unused) {
            }
            getScheduler().schedule(MockCurrentTrip.this.new TripInProgressRunnable(getScheduler()), MockCurrentTrip.this.getArguments().getInt(MockCurrentTrip.EXTRA_SEARCHING_DURATION, MockCurrentTrip.DEFAULT_SEARCHING_DURATION), TimeUnit.MILLISECONDS);
        }
    }

    private class TripInProgressRunnable extends TripStatusRunnableBase {
        TripInProgressRunnable(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
        }

        @Override // java.lang.Runnable
        public void run() {
            MockCurrentTrip.this.mTripBeginInfoLock.lock("TripInProgressRunnable#run");
            try {
                TripBeginInfoBuilder tripBeginInfoBuilderFrom = TripBeginInfoBuilder.from(MockCurrentTrip.this.mTripBeginInfo);
                tripBeginInfoBuilderFrom.setTripNumber(MockCurrentTrip.MOCK_TRIP_NUM).setAverageVoltageEngineOff(Float.valueOf(MockCurrentTrip.this.getArguments().getFloat(MockCurrentTrip.EXTRA_START_TRIP_AVERAGE_VOLTAGE_ENGINE_OFF, 12.2f))).setMinVoltageEngineOff(Float.valueOf(MockCurrentTrip.this.getArguments().getFloat(MockCurrentTrip.EXTRA_START_TRIP_MIN_VOLTAGE_ENGINE_OFF, MockCurrentTrip.DEFAULT_START_TRIP_MIN_VOLTAGE_ENGINE_OFF))).setOdometer(Float.valueOf(MockCurrentTrip.this.getArguments().getFloat(MockCurrentTrip.EXTRA_START_TRIP_ODOMETER, MockCurrentTrip.DEFAULT_START_TRIP_ODOMETER))).setTimestamp(Utils.getUTCNow());
                MockCurrentTrip.this.mTripBeginInfo = tripBeginInfoBuilderFrom.build();
                MockCurrentTrip.this.mTripBeginInfoLock.unlock("TripInProgressRunnable#run");
                MockCurrentTrip.this.mTripEndInfoLock.lock("TripInProgressRunnable#run");
                try {
                    TripEndInfoBuilder tripEndInfoBuilderFrom = TripEndInfoBuilder.from(MockCurrentTrip.this.mTripEndInfo);
                    tripEndInfoBuilderFrom.setTripNumber(MockCurrentTrip.MOCK_TRIP_NUM);
                    tripEndInfoBuilderFrom.setMaxVoltageEngineOn(Float.valueOf(MockCurrentTrip.this.getArguments().getFloat(MockCurrentTrip.EXTRA_STOP_TRIP_AVERAGE_VOLTAGE_ENGINE_ON, MockCurrentTrip.DEFAULT_STOP_TRIP_AVERAGE_VOLTAGE_ENGINE_ON)));
                    String string = MockCurrentTrip.this.getArguments().getString(MockCurrentTrip.EXTRA_DRIVER_ID, null);
                    if (StringUtils.isNullOrEmpty(string)) {
                        tripEndInfoBuilderFrom.setDriverID(MockCurrentTrip.DEFAULT_SIMULATOR_DRIVER_ID);
                    } else {
                        tripEndInfoBuilderFrom.setDriverID(UUIDHelper.fromString(string));
                    }
                    tripEndInfoBuilderFrom.setOdometer(Float.valueOf(MockCurrentTrip.this.getArguments().getFloat(MockCurrentTrip.EXTRA_START_TRIP_ODOMETER, MockCurrentTrip.DEFAULT_START_TRIP_ODOMETER)));
                    tripEndInfoBuilderFrom.setTimestamp(Utils.getUTCNow());
                    tripEndInfoBuilderFrom.setIsMILLampDetected(false);
                    tripEndInfoBuilderFrom.setOdometerEstimationMethod(TripEndInfo.OdometerEstimationMethod.Diagnostic);
                    tripEndInfoBuilderFrom.setNumOfImpactDetected(0);
                    MockCurrentTrip.this.mTripEndInfo = tripEndInfoBuilderFrom.build();
                    MockCurrentTrip.this.mTripEndInfoLock.unlock("TripInProgressRunnable#run");
                    MockCurrentTrip.this.mTripStatisticsInfoLock.lock("TripInProgressRunnable#run");
                    try {
                        TripStatisticsInfoBuilder tripStatisticsInfoBuilderFrom = TripStatisticsInfoBuilder.from(MockCurrentTrip.this.mTripStatisticsInfo);
                        tripStatisticsInfoBuilderFrom.setTripNumber(MockCurrentTrip.MOCK_TRIP_NUM);
                        MockCurrentTrip.this.mTripStatisticsInfo = tripStatisticsInfoBuilderFrom.build();
                        MockCurrentTrip.this.mTripStatisticsInfoLock.unlock("TripInProgressRunnable#run");
                        MockCurrentTrip.this.setTripStatus(TripStatus.InProgress);
                        try {
                            MockCurrentTrip.this.loadTripInfo();
                        } catch (CareLibException unused) {
                        }
                        getScheduler().schedule(MockCurrentTrip.this.new TripEndedRunnable(getScheduler()), MockCurrentTrip.this.getArguments().getInt(MockCurrentTrip.EXTRA_IN_PROGRESS_DURATION, 20000), TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        MockCurrentTrip.this.mTripStatisticsInfoLock.unlock("TripInProgressRunnable#run");
                        throw th;
                    }
                } catch (Throwable th2) {
                    MockCurrentTrip.this.mTripEndInfoLock.unlock("TripInProgressRunnable#run");
                    throw th2;
                }
            } catch (Throwable th3) {
                MockCurrentTrip.this.mTripBeginInfoLock.unlock("TripInProgressRunnable#run");
                throw th3;
            }
        }
    }

    private class TripEndedRunnable extends TripStatusRunnableBase {
        TripEndedRunnable(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
        }

        @Override // java.lang.Runnable
        public void run() {
            MockCurrentTrip.this.mTripStatisticsInfoLock.lock("TripEndedRunnable#run");
            try {
                TripStatisticsInfoBuilder tripStatisticsInfoBuilderFrom = TripStatisticsInfoBuilder.from(MockCurrentTrip.this.mTripStatisticsInfo);
                tripStatisticsInfoBuilderFrom.setHardAccelerationCount(4).setHardBrakeCount(2).setTripIdleTime(500);
                MockCurrentTrip.this.mTripStatisticsInfo = tripStatisticsInfoBuilderFrom.build();
                MockCurrentTrip.this.mTripStatisticsInfoLock.unlock("TripEndedRunnable#run");
                MockCurrentTrip.this.mTripEndInfoLock.lock("TripEndedRunnable#run");
                try {
                    TripEndInfoBuilder tripEndInfoBuilderFrom = TripEndInfoBuilder.from(MockCurrentTrip.this.mTripEndInfo);
                    tripEndInfoBuilderFrom.setOdometer(Float.valueOf(MockCurrentTrip.this.getArguments().getFloat(MockCurrentTrip.EXTRA_STOP_TRIP_ODOMETER, MockCurrentTrip.DEFAULT_STOP_TRIP_ODOMETER)));
                    tripEndInfoBuilderFrom.setTimestamp(Utils.getUTCNow());
                    tripEndInfoBuilderFrom.setTripEndCause(TripEndInfo.TripEndCause.LowRPM);
                    MockCurrentTrip.this.mTripEndInfo = tripEndInfoBuilderFrom.build();
                    MockCurrentTrip.this.mTripEndInfoLock.unlock("TripEndedRunnable#run");
                    MockCurrentTrip.this.setTripStatus(TripStatus.Ended);
                    try {
                        MockCurrentTrip.this.loadTripInfo();
                    } catch (CareLibException unused) {
                    }
                } catch (Throwable th) {
                    MockCurrentTrip.this.mTripEndInfoLock.unlock("TripEndedRunnable#run");
                    throw th;
                }
            } catch (Throwable th2) {
                MockCurrentTrip.this.mTripStatisticsInfoLock.unlock("TripEndedRunnable#run");
                throw th2;
            }
        }
    }
}
