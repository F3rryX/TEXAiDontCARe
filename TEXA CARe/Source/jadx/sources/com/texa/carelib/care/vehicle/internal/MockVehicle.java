package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.diagresources.DataID;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.MockProfile;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.AvailableParameterUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineReadCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineSubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUnsubscribeCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.ECUUpdateCompletedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SubscribedObjectsPayloadComposerCreatedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.events.SupportedParameterUpdateCompletedEvent;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import okio.Utf8;
import org.spongycastle.bcpg.sig.RevocationKeyTags;
import org.spongycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes2.dex */
public class MockVehicle extends VehicleBase {
    private static final int DELAY_DATA_UPDATE = 1000;
    public static final String TAG = "MockVehicle";
    private static final int UPDATE_PARAMETERS_INTERVAL = 1000;
    public static final String VIN = "WF6AXXGCASRY00667";
    private int mAbsoluteFuelLevel;
    private Set<Long> mAvailableIDs;
    private int mEngineSpeed;
    private boolean mIsLoadAvailableDataIDsCalled;
    private Map<Long, DiaValueInfo> mParameters;
    private final MockProfile mProfile;
    private int mRelativeFuelLevel;
    private final Map<Long, SubscriptionInfo> mSubscribedIDs;
    private final ReentrantLockWrapper mSubscribedIDsLock;
    private Set<Long> mSupportedIDs;
    private Timer mTimerUpdateValues;
    private int mVehicleSpeed;
    private VehicleValueParser mVehicleValueParser;

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void beginUpdateDTCs(long j) {
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void endUpdateDTCs() {
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void loadDTCs() {
    }

    public MockVehicle(Profile profile, Accessory accessory, FeatureVerifier featureVerifier, DiagnosisScheduler diagnosisScheduler) {
        super(accessory, featureVerifier, diagnosisScheduler);
        this.mSubscribedIDsLock = new ReentrantLockWrapper(TAG, "mSubscribedIDsLock");
        this.mProfile = (MockProfile) profile;
        this.mSubscribedIDs = new HashMap();
        this.mRelativeFuelLevel = 0;
        this.mRelativeFuelLevel = 0;
        this.mAbsoluteFuelLevel = 0;
        this.mVehicleSpeed = 0;
        this.mEngineSpeed = 0;
        this.mIsLoadAvailableDataIDsCalled = false;
        this.mParameters = new HashMap();
        this.mVehicleValueParser = new VehicleValueParserLegacy();
        setTripStatus(TripStatus.InProgress);
        initAvailableIDs();
        initSupportedIDs();
        initValues();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public MockProfile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleBase, com.texa.carelib.care.vehicle.Vehicle
    public Set<Long> getSupportedDataIDs() {
        if (!this.mIsLoadAvailableDataIDsCalled) {
            return Collections.emptySet();
        }
        return super.getSupportedDataIDs();
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleBase, com.texa.carelib.care.vehicle.Vehicle
    public Set<Long> getAvailableDataIDs() {
        if (!this.mIsLoadAvailableDataIDsCalled) {
            return Collections.emptySet();
        }
        return super.getAvailableDataIDs();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void loadValues(final Set<Long> set) {
        if (set.size() > 0) {
            Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.vehicle.internal.MockVehicle$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m724x57330502(set);
                }
            }, TAG + "_loadValues");
            thread.setPriority(1);
            thread.start();
        }
    }

    /* JADX INFO: renamed from: lambda$loadValues$0$com-texa-carelib-care-vehicle-internal-MockVehicle, reason: not valid java name */
    public /* synthetic */ void m724x57330502(Set set) {
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, "Wait has failed.", e);
        }
        updateValues(new ArrayList(set));
    }

    public static int getNumberOfDecimalPlace(double d) {
        if (Math.round(d) == d) {
            return 0;
        }
        String string = Double.toString(d);
        System.out.println(string);
        int iIndexOf = string.indexOf(46);
        if (iIndexOf < 0) {
            return 0;
        }
        return (string.length() - 1) - iIndexOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] getDataStatus(float f, int i) {
        byte[] bArr = {(byte) (i & 15)};
        if (f < 0.0f) {
            bArr[0] = (byte) (bArr[0] | Tnaf.POW_2_WIDTH);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] getDataArray(float f) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putFloat(f);
        return byteBufferAllocate.array();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void beginUpdateValues(long j, Set<Long> set) {
        if (set.size() > 0) {
            this.mSubscribedIDsLock.lock("beginUpdateValues");
            try {
                for (Long l : set) {
                    if (!isSubscribed(l)) {
                        this.mSubscribedIDs.put(l, new SubscriptionInfo().setTimeout(j));
                    }
                }
                this.mSubscribedIDsLock.unlock("beginUpdateValues");
                updateValues(new ArrayList(set));
            } catch (Throwable th) {
                this.mSubscribedIDsLock.unlock("beginUpdateValues");
                throw th;
            }
        }
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void endUpdateValues(Set<Long> set) {
        if (set.size() == 0) {
            return;
        }
        this.mSubscribedIDsLock.lock("endUpdateValues");
        try {
            Iterator<Long> it = set.iterator();
            while (it.hasNext()) {
                this.mSubscribedIDs.remove(it.next());
            }
        } finally {
            this.mSubscribedIDsLock.unlock("endUpdateValues");
        }
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void loadAvailableDataIDs() {
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.vehicle.internal.MockVehicle$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m723xa5c6f05e();
            }
        }, TAG + "_loadAvailableDataIDs");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$loadAvailableDataIDs$1$com-texa-carelib-care-vehicle-internal-MockVehicle, reason: not valid java name */
    public /* synthetic */ void m723xa5c6f05e() {
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, "Wait has failed.", e);
        }
        this.mIsLoadAvailableDataIDsCalled = true;
        onSupportedParametersChanged(this.mSupportedIDs);
        onAvailableParametersChanged(this.mAvailableIDs);
    }

    @Override // com.texa.carelib.care.vehicle.internal.VehicleBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        CommunicationStatus communicationStatus = communicationStatusChangedEvent.getCommunicationStatus();
        if (CommunicationStatus.CONNECTED == communicationStatus) {
            this.mIsLoadAvailableDataIDsCalled = false;
            Timer timer = new Timer();
            this.mTimerUpdateValues = timer;
            timer.schedule(new TimerTask() { // from class: com.texa.carelib.care.vehicle.internal.MockVehicle.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    SubscriptionInfo subscriptionInfo;
                    if (MockVehicle.this.mRelativeFuelLevel == 0) {
                        MockVehicle.this.mRelativeFuelLevel = 100;
                    }
                    MockVehicle.this.mRelativeFuelLevel = (r0.mRelativeFuelLevel - 1) % 100;
                    MockVehicle.this.mParameters.put(Long.valueOf(DataID.Parameter.FUEL_LEVEL_REL.getId()), MockVehicle.this.createValueInfo(DataID.Parameter.FUEL_LEVEL_REL.getId(), ValueDataType.NUMERIC, MockVehicle.this.mVehicleValueParser, MockVehicle.this.getDataArray(r8.mRelativeFuelLevel), MockVehicle.this.getDataStatus(r9.mRelativeFuelLevel, 0), Calendar.getInstance().getTime()));
                    MockVehicle mockVehicle = MockVehicle.this;
                    mockVehicle.mAbsoluteFuelLevel = (mockVehicle.mRelativeFuelLevel * 80) / 100;
                    MockVehicle.this.mParameters.put(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()), MockVehicle.this.createValueInfo(DataID.Parameter.FUEL_LEVEL_ABS.getId(), ValueDataType.NUMERIC, MockVehicle.this.mVehicleValueParser, MockVehicle.this.getDataArray(r7.mAbsoluteFuelLevel), MockVehicle.this.getDataStatus(r8.mAbsoluteFuelLevel, 0), Calendar.getInstance().getTime()));
                    MockVehicle mockVehicle2 = MockVehicle.this;
                    mockVehicle2.mVehicleSpeed = (mockVehicle2.mVehicleSpeed + 10) % 180;
                    MockVehicle.this.mParameters.put(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()), MockVehicle.this.createValueInfo(DataID.Parameter.VEHICLE_SPEED.getId(), ValueDataType.NUMERIC, MockVehicle.this.mVehicleValueParser, MockVehicle.this.getDataArray(r7.mVehicleSpeed), MockVehicle.this.getDataStatus(r8.mVehicleSpeed, 0), Calendar.getInstance().getTime()));
                    MockVehicle mockVehicle3 = MockVehicle.this;
                    mockVehicle3.mEngineSpeed = mockVehicle3.mVehicleSpeed * 36;
                    MockVehicle.this.mParameters.put(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()), MockVehicle.this.createValueInfo(DataID.Parameter.ENGINE_RPM.getId(), ValueDataType.NUMERIC, MockVehicle.this.mVehicleValueParser, MockVehicle.this.getDataArray(r7.mEngineSpeed), MockVehicle.this.getDataStatus(r8.mEngineSpeed, 0), Calendar.getInstance().getTime()));
                    ArrayList arrayList = new ArrayList();
                    MockVehicle.this.mSubscribedIDsLock.lock("onCommunicationStatusChanged");
                    for (Map.Entry entry : MockVehicle.this.mParameters.entrySet()) {
                        try {
                            if (MockVehicle.this.isSubscribed((Long) entry.getKey()) && (subscriptionInfo = (SubscriptionInfo) MockVehicle.this.mSubscribedIDs.get(entry.getKey())) != null && (subscriptionInfo.getDateLastNotify() == null || (((DiaValueInfo) entry.getValue()).getDateLastUpdate() != null && ((DiaValueInfo) entry.getValue()).getDateLastUpdate().getTime() - subscriptionInfo.getDateLastNotify().getTime() > subscriptionInfo.getTimeout()))) {
                                arrayList.add(entry.getValue());
                                subscriptionInfo.setDateLastNotify(Calendar.getInstance().getTime());
                            }
                        } catch (Throwable th) {
                            MockVehicle.this.mSubscribedIDsLock.unlock("onCommunicationStatusChanged");
                            throw th;
                        }
                    }
                    MockVehicle.this.mSubscribedIDsLock.unlock("onCommunicationStatusChanged");
                    MockVehicle mockVehicle4 = MockVehicle.this;
                    mockVehicle4.updateParameters(arrayList, mockVehicle4.getTripStatus());
                }
            }, 1000L, 1000L);
        } else if (CommunicationStatus.DISCONNECTED == communicationStatus) {
            endUpdateValues(this.mSubscribedIDs.keySet());
            Timer timer2 = this.mTimerUpdateValues;
            if (timer2 != null) {
                timer2.cancel();
                this.mTimerUpdateValues.purge();
                this.mTimerUpdateValues = null;
            }
        }
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    private void updateValues(List<Long> list) {
        List<DiaValueInfo> arrayList = new ArrayList<>();
        Iterator<Long> it = list.iterator();
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if (this.mParameters.containsKey(Long.valueOf(jLongValue))) {
                arrayList.add(this.mParameters.get(Long.valueOf(jLongValue)));
            }
        }
        updateParameters(arrayList, getTripStatus());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSubscribed(Long l) {
        return this.mSubscribedIDs.containsKey(l);
    }

    private void initSupportedIDs() {
        HashSet hashSet = new HashSet();
        this.mSupportedIDs = hashSet;
        hashSet.add(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.OIL_LEVEL_ABS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.BATTERY_VOLT.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.CRUISING_RANGE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.ODOMETER_KM.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.DAYS_NEXT_SERVICE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.OUTSIDE_TEMPERATURE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.FUEL_LEVEL_REL.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.OIL_LEVEL_REL.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.DISTANCE_LAST_SERVICE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.DISTANCE_NEXT_SERVICE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.DAYS_LAST_SERVICE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.DAYS_NEXT_SERVICE.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.ABS_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.BRAKEFLUID_LOW_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.AIRBAG_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.BRAKE_PAD_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.LOW_FUEL_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.MIL_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.OIL_LEVEL_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.SERVICE_LAMP_STATUS.getId()));
        this.mSupportedIDs.add(Long.valueOf(DataID.Enum.TIRE_PRESS_LAMP_STATUS.getId()));
    }

    private void initAvailableIDs() {
        HashSet hashSet = new HashSet();
        this.mAvailableIDs = hashSet;
        hashSet.add(Long.valueOf(DataID.Parameter.VEHICLE_SPEED.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.FUEL_LEVEL_REL.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.OUTSIDE_TEMPERATURE.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.OIL_LEVEL_REL.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Parameter.BATTERY_VOLT.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Enum.MIL_LAMP_STATUS.getId()));
        this.mAvailableIDs.add(Long.valueOf(DataID.Enum.BRAKEFLUID_LOW_LAMP_STATUS.getId()));
    }

    private void initValues() {
        byte[] bArr = {RevocationKeyTags.CLASS_SENSITIVE};
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(19);
        try {
            byteBufferAllocate.put("WF6AXXGCASRY00667".getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, "Encoding not supported", e);
        }
        byteBufferAllocate.put((byte) 0);
        this.mParameters.put(Long.valueOf(DataID.Text.VIN.getId()), createValueInfo(DataID.Text.VIN.getId(), ValueDataType.STRING, this.mVehicleValueParser, byteBufferAllocate.array(), new byte[]{-128}, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.FUEL_LEVEL_ABS.getId()), createValueInfo(DataID.Parameter.FUEL_LEVEL_ABS.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(this.mAbsoluteFuelLevel), getDataStatus(this.mAbsoluteFuelLevel, 1), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.OIL_LEVEL_ABS.getId()), createValueInfo(DataID.Parameter.OIL_LEVEL_ABS.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(4.8f), getDataStatus(4.8f, 1), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.BATTERY_VOLT.getId()), createValueInfo(DataID.Parameter.BATTERY_VOLT.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(12.2f), getDataStatus(12.2f, 1), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.CRUISING_RANGE.getId()), createValueInfo(DataID.Parameter.CRUISING_RANGE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(689.0f), getDataStatus(689.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.ENGINE_TEMP.getId()), createValueInfo(DataID.Parameter.ENGINE_TEMP.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(92.0f), getDataStatus(92.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.ENGINE_RPM.getId()), createValueInfo(DataID.Parameter.ENGINE_RPM.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(this.mEngineSpeed), getDataStatus(this.mEngineSpeed, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.ODOMETER_KM.getId()), createValueInfo(DataID.Parameter.ODOMETER_KM.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(69696.0f), getDataStatus(69696.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.DAYS_NEXT_SERVICE.getId()), createValueInfo(DataID.Parameter.DAYS_NEXT_SERVICE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(281.0f), getDataStatus(281.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.OUTSIDE_TEMPERATURE.getId()), createValueInfo(DataID.Parameter.OUTSIDE_TEMPERATURE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(38.0f), getDataStatus(38.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.FUEL_LEVEL_REL.getId()), createValueInfo(DataID.Parameter.FUEL_LEVEL_REL.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(this.mRelativeFuelLevel), getDataStatus(this.mRelativeFuelLevel, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.OIL_LEVEL_REL.getId()), createValueInfo(DataID.Parameter.OIL_LEVEL_REL.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(92.0f), getDataStatus(92.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.DISTANCE_LAST_SERVICE.getId()), createValueInfo(DataID.Parameter.DISTANCE_LAST_SERVICE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(12325.0f), getDataStatus(12325.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.DISTANCE_NEXT_SERVICE.getId()), createValueInfo(DataID.Parameter.DISTANCE_NEXT_SERVICE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(2675.0f), getDataStatus(2675.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.DAYS_LAST_SERVICE.getId()), createValueInfo(DataID.Parameter.DAYS_LAST_SERVICE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(271.0f), getDataStatus(271.0f, 0), Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Parameter.DAYS_NEXT_SERVICE.getId()), createValueInfo(DataID.Parameter.DAYS_NEXT_SERVICE.getId(), ValueDataType.NUMERIC, this.mVehicleValueParser, getDataArray(94.0f), getDataStatus(94.0f, 0), Calendar.getInstance().getTime()));
        byte[] bArr2 = {0, 0, -128, Utf8.REPLACEMENT_BYTE};
        byte[] bArr3 = {0, 0, 0, RevocationKeyTags.CLASS_SENSITIVE};
        byte[] bArr4 = {0, 0, RevocationKeyTags.CLASS_SENSITIVE, RevocationKeyTags.CLASS_SENSITIVE};
        this.mParameters.put(Long.valueOf(DataID.Enum.ABS_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.ABS_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr2, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.BRAKEFLUID_LOW_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.BRAKEFLUID_LOW_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr4, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.AIRBAG_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.AIRBAG_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr2, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.BRAKE_PAD_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.BRAKE_PAD_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr2, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.LOW_FUEL_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.LOW_FUEL_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr2, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.MIL_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.MIL_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr3, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.OIL_LEVEL_STATUS.getId()), createValueInfo(DataID.Enum.OIL_LEVEL_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr2, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.SERVICE_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.SERVICE_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr2, bArr, Calendar.getInstance().getTime()));
        this.mParameters.put(Long.valueOf(DataID.Enum.TIRE_PRESS_LAMP_STATUS.getId()), createValueInfo(DataID.Enum.TIRE_PRESS_LAMP_STATUS.getId(), ValueDataType.ENUM, this.mVehicleValueParser, bArr3, bArr, Calendar.getInstance().getTime()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DiaValueInfo createValueInfo(long j, ValueDataType valueDataType, VehicleValueParser vehicleValueParser, byte[] bArr, byte[] bArr2, Date date) {
        DiaValueInfo diaValueInfo = new DiaValueInfo();
        diaValueInfo.setID(j);
        diaValueInfo.setType(valueDataType);
        if (bArr != null && bArr2 != null) {
            diaValueInfo.setData(bArr, bArr2, vehicleValueParser);
        }
        diaValueInfo.setDateLastUpdate(date);
        return diaValueInfo;
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateECUs(Callback<ECUUpdateCompletedEvent> callback) {
        callback.onCompleted(new ECUUpdateCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateAvailableParameters(Callback<AvailableParameterUpdateCompletedEvent> callback) {
        callback.onCompleted(new AvailableParameterUpdateCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void createSubscribedObjectsPayloadComposer(Callback<SubscribedObjectsPayloadComposerCreatedEvent> callback) {
        callback.onCompleted(new SubscribedObjectsPayloadComposerCreatedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateSupportedParameters(Callback<SupportedParameterUpdateCompletedEvent> callback) {
        callback.onCompleted(new SupportedParameterUpdateCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void read(int i, Set<Long> set, Callback<DiagnosisEngineReadCompletedEvent> callback) {
        try {
            Thread.sleep(20L);
        } catch (InterruptedException unused) {
        }
        callback.onCompleted(new DiagnosisEngineReadCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void subscribe(int i, Long l, Set<Long> set, Callback<DiagnosisEngineSubscribeCompletedEvent> callback) {
        try {
            Thread.sleep(20L);
        } catch (InterruptedException unused) {
        }
        callback.onCompleted(new DiagnosisEngineSubscribeCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void unsubscribe(int i, Set<Long> set, Callback<DiagnosisEngineUnsubscribeCompletedEvent> callback) {
        try {
            Thread.sleep(20L);
        } catch (InterruptedException unused) {
        }
        callback.onCompleted(new DiagnosisEngineUnsubscribeCompletedEvent(this, null));
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void updateSubscriptionCounters(Callback<DiagnosisEngineUpdateSubscriptionCountersCompletedEvent> callback) {
        throw new IllegalStateException("Not implemented exception.");
    }

    class SubscriptionInfo {
        private Date mDateLastNotify;
        private long mTimeout;

        SubscriptionInfo() {
        }

        public long getTimeout() {
            return this.mTimeout;
        }

        Date getDateLastNotify() {
            return this.mDateLastNotify;
        }

        SubscriptionInfo setDateLastNotify(Date date) {
            this.mDateLastNotify = date;
            return this;
        }

        public SubscriptionInfo setTimeout(long j) {
            this.mTimeout = j;
            return this;
        }
    }
}
