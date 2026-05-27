package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.care.DateTime;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.care.vehicle.InvalidVehicleValueException;
import com.texa.carelib.care.vehicle.SubscriptionState;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.VehicleListener;
import com.texa.carelib.care.vehicle.events.ParametersUpdatedEvent;
import com.texa.carelib.care.vehicle.events.SubscriptionStateChangedEvent;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.care.vehicletroubles.DTCTranslator;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.care.vehicletroubles.VehicleTroublesListener;
import com.texa.carelib.care.vehicletroubles.events.DTCReadCompletedEvent;
import com.texa.carelib.care.vehicletroubles.internal.DTCStore;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.CarelibSchedulers;
import com.texa.carelib.core.internal.ListenerList;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.diagresources.DataID;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler;
import java.beans.PropertyChangeEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class VehicleBase extends ProfileSubModule implements Vehicle, VehicleTroubles, DiagnosisEngine {
    private static final String TAG = "VehicleBase";
    private Accessory mAccessory;
    private int mAccessoryDiagnosisMode;
    private int mAccessoryStatus;
    private Integer mActiveSubscriptionCount;
    private CareError mDTCResolutionError;
    private DTCStore mDTCStore;
    private float mDTCTranslationProgress;
    private DTCTranslator mDTCTranslator;
    private final DiagnosisScheduler mDiagnosisScheduler;
    private final Map<Long, Integer> mECUInTranslations;
    private float mECUScanProgress;
    private final FeatureVerifier mFeatureVerifier;
    private Integer mMaximumSubscriptionCount;
    private Map<Long, Integer> mReceivedECUs;
    private Long mScanInterval;
    private Set<Long> mSupportedECUs;
    private TripStatus mTripStatus;
    private ValueInfoCache mValueInfoCache;
    private final ListenerList<VehicleListener> mVehicleListeners;
    private final ListenerList<VehicleTroublesListener> mVehicleTroublesListeners;

    private boolean isDiagnosisReady(int i, int i2) {
        return 1 == i2 && 4 == i;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
    }

    VehicleBase(Accessory accessory, FeatureVerifier featureVerifier, DiagnosisScheduler diagnosisScheduler) {
        this.mAccessory = accessory;
        this.mFeatureVerifier = featureVerifier;
        this.mDiagnosisScheduler = diagnosisScheduler;
        diagnosisScheduler.attachDiagnosticParameterEngine(this);
        this.mVehicleListeners = new ListenerList<>();
        this.mVehicleTroublesListeners = new ListenerList<>();
        this.mValueInfoCache = new ValueInfoCache();
        this.mAccessoryStatus = 255;
        this.mTripStatus = TripStatus.Undef;
        this.mAccessoryDiagnosisMode = 0;
        this.mReceivedECUs = new HashMap();
        this.mECUInTranslations = new HashMap();
        this.mActiveSubscriptionCount = 0;
        this.mMaximumSubscriptionCount = 0;
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public float getECUScanProgress() {
        return this.mECUScanProgress;
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public float getDTCTranslationProgress() {
        return this.mDTCTranslationProgress;
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }

    protected DiagnosisScheduler getDiagnosisScheduler() {
        return this.mDiagnosisScheduler;
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public Long getSubscriptionInterval(Long l) {
        return getDiagnosisScheduler().getSubscriptionInterval(l);
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public SubscriptionState getSubscriptionState(Long l) {
        return getDiagnosisScheduler().getSubscriptionState(l);
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle, com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public Integer getActiveSubscriptionCount() {
        return this.mActiveSubscriptionCount;
    }

    void setActiveSubscriptionCount(Integer num) {
        Integer num2 = this.mActiveSubscriptionCount;
        this.mActiveSubscriptionCount = num;
        firePropertyChange(new PropertyChangeEvent(this, Vehicle.PROPERTY_ACTIVE_SUBSCRIPTION_COUNT, num2, num));
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_ACTIVE_SUBSCRIPTION_COUNT, num2, num));
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle, com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public Integer getMaximumSubscriptionCount() {
        return this.mMaximumSubscriptionCount;
    }

    void setMaximumSubscriptionCount(Integer num) {
        Integer num2 = this.mMaximumSubscriptionCount;
        this.mMaximumSubscriptionCount = num;
        firePropertyChange(new PropertyChangeEvent(this, Vehicle.PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT, num2, num));
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_MAXIMUM_SUBSCRIPTION_COUNT, num2, num));
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public int getECUCount() {
        return getECUCount(this.mSupportedECUs);
    }

    protected int getECUCount(Set<Long> set) {
        if (set == null) {
            return 0;
        }
        return set.size();
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public DTCTranslator getDTCTranslator() {
        return this.mDTCTranslator;
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void setDTCTranslator(DTCTranslator dTCTranslator) {
        this.mDTCTranslator = dTCTranslator;
    }

    public Long getScanInterval() {
        return this.mScanInterval;
    }

    public void setScanInterval(Long l) {
        this.mScanInterval = l;
    }

    public Map<Long, Integer> getReceivedECUs() {
        return this.mReceivedECUs;
    }

    public Set<Long> getSupportedECUs() {
        return this.mSupportedECUs;
    }

    public void setSupportedECUs(Set<Long> set) {
        int eCUCount = getECUCount(this.mSupportedECUs);
        this.mSupportedECUs = set;
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_ECU_COUNT, Integer.valueOf(eCUCount), Integer.valueOf(getECUCount(set))));
        this.mReceivedECUs.clear();
        if (set != null) {
            Iterator<Long> it = set.iterator();
            while (it.hasNext()) {
                this.mReceivedECUs.put(it.next(), null);
            }
        }
        this.mECUInTranslations.clear();
    }

    public int getAccessoryDiagnosisMode() {
        return this.mAccessoryDiagnosisMode;
    }

    public int getAccessoryStatus() {
        return this.mAccessoryStatus;
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void beginUpdateValues(long j, Long... lArr) throws CareLibException {
        try {
            beginUpdateValues(j, new HashSet(Arrays.asList(lArr)));
        } catch (CareLibException e) {
            throw e;
        } catch (Exception e2) {
            throw new CareLibException(e2.getMessage(), e2);
        }
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void endUpdateValues(Long... lArr) throws CareLibException {
        try {
            endUpdateValues(new HashSet(Arrays.asList(lArr)));
        } catch (CareLibException e) {
            throw e;
        } catch (Exception e2) {
            throw new CareLibException(e2.getMessage(), e2);
        }
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void loadValues(Long... lArr) throws CareLibException {
        try {
            loadValues(new HashSet(Arrays.asList(lArr)));
        } catch (CareLibException e) {
            throw e;
        } catch (Exception e2) {
            throw new CareLibException(e2.getMessage(), e2);
        }
    }

    protected void setTripStatus(TripStatus tripStatus) {
        if (this.mTripStatus != tripStatus) {
            this.mTripStatus = tripStatus;
        }
    }

    void setDiagnosisMode(int i) {
        if (this.mAccessoryDiagnosisMode != i) {
            this.mAccessoryDiagnosisMode = i;
            this.mDiagnosisScheduler.setAccessoryDiagnosisMode(i);
        }
    }

    void setAccessoryStatus(int i) {
        if (this.mAccessoryStatus != i) {
            this.mAccessoryStatus = i;
            this.mDiagnosisScheduler.setAccessoryStatus(i);
        }
    }

    Accessory getAccessory() {
        return this.mAccessory;
    }

    private Long[] getSupportedLamps() {
        ArrayList arrayList = new ArrayList();
        for (DiaValueInfo diaValueInfo : this.mValueInfoCache.getValues()) {
            if (ValueDataType.ENUM == diaValueInfo.getType()) {
                arrayList.add(Long.valueOf(diaValueInfo.getID()));
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        Long[] lArr = new Long[arrayList.size()];
        arrayList.toArray(lArr);
        return lArr;
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public DiaValueInfo getValueInfo(Long l) throws InvalidVehicleValueException {
        if (!this.mValueInfoCache.getSupportedDataIDs().contains(l)) {
            throw new InvalidVehicleValueException(InvalidVehicleValueException.ErrorCode.NotSupported, "Parameter is not supported");
        }
        DiaValueInfo value = this.mValueInfoCache.getValue(l);
        if (value == null) {
            value = new DiaValueInfo();
            value.setID(l.longValue());
        }
        value.setSubscriptionState(this.mDiagnosisScheduler.getSubscriptionState(l));
        value.setSubscriptionInterval(this.mDiagnosisScheduler.getSubscriptionInterval(l));
        return new DiaValueInfo(value);
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public boolean isAvailable(Long l) {
        return this.mValueInfoCache.getAvailableDataIDs().contains(l);
    }

    public Set<Long> getAvailableDataIDs() {
        return Collections.unmodifiableSet(this.mValueInfoCache.getAvailableDataIDs());
    }

    public Set<Long> getSupportedDataIDs() {
        return Collections.unmodifiableSet(this.mValueInfoCache.getSupportedDataIDs());
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public int getPrecision(Long l) throws InvalidVehicleValueException {
        return getValueInfo(l).getPrecision();
    }

    public double getNumericValue(Long l, int i) throws InvalidVehicleValueException {
        double numericValue = getNumericValue(l);
        return Math.round(numericValue * r5) / ((int) Math.pow(10.0d, i));
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public String getFormattedNumericValue(Long l) throws InvalidVehicleValueException {
        return getValueInfo(l).toFormattedNumericValue();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public double getNumericValue(Long l) throws InvalidVehicleValueException {
        return getValueInfo(l).toNumericValue();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public long getEnumValue(Long l) throws InvalidVehicleValueException {
        return getValueInfo(l).toEnumValue();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public String getTextValue(Long l) throws InvalidVehicleValueException {
        return getValueInfo(l).toTextValue();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public DateTime getDateTimeValue(Long l) throws InvalidVehicleValueException {
        return getValueInfo(l).toDateTimeValue();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public Date getDateLastUpdate(long j) throws InvalidVehicleValueException {
        return getValueInfo(Long.valueOf(j)).getDateLastUpdate();
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public VehicleListener addVehicleListener(VehicleListener vehicleListener) {
        this.mVehicleListeners.add(vehicleListener);
        return vehicleListener;
    }

    @Override // com.texa.carelib.care.vehicle.Vehicle
    public void removeVehicleListener(VehicleListener vehicleListener) {
        this.mVehicleListeners.remove(vehicleListener);
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public VehicleTroublesListener addVehicleTroublesListener(VehicleTroublesListener vehicleTroublesListener) {
        this.mVehicleTroublesListeners.add(vehicleTroublesListener);
        return vehicleTroublesListener;
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void removeVehicleTroublesListener(VehicleTroublesListener vehicleTroublesListener) {
        this.mVehicleTroublesListeners.remove(vehicleTroublesListener);
    }

    protected void fireSubscriptionStateChangedEvent(final Long[] lArr, final SubscriptionState[] subscriptionStateArr, final CareError careError) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.vehicle.internal.VehicleBase$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m728xe5c87f1b(lArr, subscriptionStateArr, careError);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$fireSubscriptionStateChangedEvent$0$com-texa-carelib-care-vehicle-internal-VehicleBase, reason: not valid java name */
    public /* synthetic */ void m728xe5c87f1b(Long[] lArr, SubscriptionState[] subscriptionStateArr, CareError careError) {
        if (this.mVehicleListeners.size() > 0) {
            int size = this.mVehicleListeners.size();
            VehicleListener[] vehicleListenerArr = new VehicleListener[size];
            this.mVehicleListeners.toArray(vehicleListenerArr);
            for (int i = 0; i < size; i++) {
                vehicleListenerArr[i].onSubscriptionStateChanged(new SubscriptionStateChangedEvent(this, lArr, subscriptionStateArr, careError));
            }
        }
    }

    protected void fireParametersUpdatedEvent(final Long... lArr) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.vehicle.internal.VehicleBase$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m727xb35635c5(lArr);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$fireParametersUpdatedEvent$1$com-texa-carelib-care-vehicle-internal-VehicleBase, reason: not valid java name */
    public /* synthetic */ void m727xb35635c5(Long[] lArr) {
        if (this.mVehicleListeners.size() > 0) {
            ParametersUpdatedEvent parametersUpdatedEvent = new ParametersUpdatedEvent(this, new HashSet(Arrays.asList(lArr)));
            int size = this.mVehicleListeners.size();
            VehicleListener[] vehicleListenerArr = new VehicleListener[size];
            this.mVehicleListeners.toArray(vehicleListenerArr);
            for (int i = 0; i < size; i++) {
                vehicleListenerArr[i].onParametersUpdated(parametersUpdatedEvent);
            }
        }
    }

    protected void onAvailableParametersChanged(Set<Long> set) {
        Long[] lArr;
        Set<Long> availableDataIDs = getAvailableDataIDs();
        this.mValueInfoCache.setAvailableParameters(set);
        if (set == null || set.isEmpty()) {
            lArr = new Long[0];
        } else {
            lArr = new Long[set.size()];
            if (set.size() > 0) {
                set.toArray(lArr);
            }
        }
        CareLog.v(TAG, "Firing PROPERTY_AVAILABLE_DATA_IDS property change.", new Object[0]);
        firePropertyChange(new PropertyChangeEvent(this, Vehicle.PROPERTY_AVAILABLE_DATA_IDS, availableDataIDs, lArr));
    }

    protected void onSupportedParametersChanged(Set<Long> set) {
        Long[] lArr;
        Set<Long> supportedDataIDs = getSupportedDataIDs();
        this.mValueInfoCache.setSupportedParameters(set);
        if (set == null || set.isEmpty()) {
            lArr = new Long[0];
        } else {
            lArr = new Long[set.size()];
            set.toArray(lArr);
        }
        CareLog.v(TAG, "Firing PROPERTY_SUPPORTED_DATA_IDS property change.", new Object[0]);
        firePropertyChange(new PropertyChangeEvent(this, Vehicle.PROPERTY_SUPPORTED_DATA_IDS, supportedDataIDs, lArr));
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        CommunicationStatus communicationStatus = communicationStatusChangedEvent.getCommunicationStatus();
        this.mDiagnosisScheduler.notifyCommunicationStatusChanged(communicationStatus);
        if (AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatus.ordinal()] != 1) {
            return;
        }
        resetData();
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.vehicle.internal.VehicleBase$1, reason: invalid class name */
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
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected void resetData() {
        this.mTripStatus = TripStatus.Undef;
        this.mAccessoryStatus = 255;
        this.mAccessoryDiagnosisMode = 0;
        this.mValueInfoCache.clear();
        this.mECUScanProgress = 0.0f;
        this.mDTCTranslationProgress = 0.0f;
        this.mDTCResolutionError = null;
        setSupportedECUs(null);
        getDTCStore().clear();
        this.mActiveSubscriptionCount = 0;
        this.mMaximumSubscriptionCount = 0;
    }

    protected TripStatus getTripStatus() {
        return this.mTripStatus;
    }

    protected void updateParameters(List<DiaValueInfo> list, TripStatus tripStatus) {
        CareLog.v(TAG, "Received %1$d parameters", Integer.valueOf(list.size()));
        Long[] lArr = new Long[list.size()];
        if (list.size() > 0) {
            int i = 0;
            for (DiaValueInfo diaValueInfo : list) {
                long id = diaValueInfo.getID();
                lArr[i] = Long.valueOf(id);
                i++;
                if (ValueDataType.ENUM == diaValueInfo.getType() && TripStatus.InProgress != tripStatus && DataID.Enum.MIL_LAMP_STATUS.getId() != id && diaValueInfo.hasData()) {
                    try {
                        if (diaValueInfo.getDataStatus() == 0) {
                            diaValueInfo.setDataStatus((byte) 1);
                        }
                    } catch (InvalidVehicleValueException | IllegalArgumentException e) {
                        CareLog.e(TAG, e, "Could not change current parameter data status.", new Object[0]);
                    }
                }
                diaValueInfo.setSubscriptionState(getDiagnosisScheduler().getSubscriptionState(Long.valueOf(id)));
                diaValueInfo.setSubscriptionInterval(getDiagnosisScheduler().getSubscriptionInterval(Long.valueOf(id)));
                this.mValueInfoCache.putValue(Long.valueOf(id), diaValueInfo);
            }
            fireParametersUpdatedEvent(lArr);
        }
    }

    @Override // com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisEngine
    public void onSubscriptionStateChanged(Long l, SubscriptionState subscriptionState, CareError careError) {
        fireSubscriptionStateChangedEvent(new Long[]{l}, new SubscriptionState[]{subscriptionState}, careError);
    }

    protected void setECUScanProgress(float f) {
        CareLog.d(TAG, "ECU scan progress changed: %d", Integer.valueOf(Math.round(100.0f * f)));
        float f2 = this.mECUScanProgress;
        this.mECUScanProgress = f;
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_ECU_SCAN_PROGRESS, Float.valueOf(f2), Float.valueOf(f)));
    }

    protected void setDTCTranslationProgress(float f) {
        CareLog.d(TAG, "DTC translation progress changed: %d", Integer.valueOf(Math.round(100.0f * f)));
        float f2 = this.mDTCTranslationProgress;
        this.mDTCTranslationProgress = f;
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_DTC_TRANSLATION_PROGRESS, Float.valueOf(f2), Float.valueOf(f)));
    }

    protected DTCStore getDTCStore() {
        if (this.mDTCStore == null) {
            this.mDTCStore = new DTCStore();
        }
        return this.mDTCStore;
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public List<DTC> getDTCs() {
        if (isFilterUnknownDTCEnabled()) {
            return filterDTCs(getDTCStore().getDTCList());
        }
        return getDTCStore().getDTCList();
    }

    static List<DTC> filterDTCs(List<DTC> list) {
        ArrayList arrayList = new ArrayList();
        for (DTC dtc : list) {
            if (dtc != null && !StringUtils.isNullOrEmpty(dtc.getID()) && !StringUtils.isNullOrEmpty(dtc.getECU())) {
                arrayList.add(dtc);
            } else {
                CareLog.w(TAG, "Invalid DTC: %s", dtc);
            }
        }
        return arrayList;
    }

    protected void clearDTCs() {
        CareLog.d(TAG, "Clearing DTCs list.", new Object[0]);
        ArrayList arrayList = new ArrayList(getDTCs());
        getDTCStore().clear();
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_DTCS, arrayList, getDTCs()));
    }

    private boolean isFilterUnknownDTCEnabled() {
        return getArguments().getBoolean(VehicleTroubles.EXTRA_FILTER_UNKNOWN_DTC, true);
    }

    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroubles
    public void updateDTC(List<DTC> list, long j, CareError careError) {
        Integer num;
        if (careError == null) {
            CareLog.d(TAG, "Updating DTCs for ECU %d, DTC Count=%2$d", Long.valueOf(j), Integer.valueOf(list.size()));
        } else {
            this.mDTCResolutionError = careError;
            CareLog.e(TAG, careError, "Updating DTCs for ECU %d, DTC Count=%2$d", Long.valueOf(j), Integer.valueOf(list.size()));
        }
        ArrayList arrayList = new ArrayList();
        Iterator<DTC> it = getDTCs().iterator();
        while (it.hasNext()) {
            arrayList.add(new DTC(it.next()));
        }
        getDTCStore().updateECUDTC(list, j);
        List<DTC> dTCs = getDTCs();
        String str = TAG;
        CareLog.v(str, "Firing DTC property change Old DTC count: %d, Actual DTC Count=%2$d", Integer.valueOf(arrayList.size()), Integer.valueOf(dTCs.size()));
        firePropertyChange(new PropertyChangeEvent(this, VehicleTroubles.PROPERTY_DTCS, arrayList, dTCs));
        if (this.mECUInTranslations.containsKey(Long.valueOf(j)) && (num = this.mECUInTranslations.get(Long.valueOf(j))) != null && num.intValue() > 0) {
            this.mECUInTranslations.put(Long.valueOf(j), Integer.valueOf(num.intValue() - 1));
        }
        float fCalculateTranslationProgress = calculateTranslationProgress(getECUScanProgress(), this.mReceivedECUs, getDTCStore().getECUCount());
        setDTCTranslationProgress(fCalculateTranslationProgress);
        if (1.0f == fCalculateTranslationProgress) {
            CareLog.i(str, "DTCs translation has been completed!", new Object[0]);
            terminateLoadDTCs(this.mDTCResolutionError);
        }
    }

    protected void terminateLoadDTCs(final CareError careError) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.vehicle.internal.VehicleBase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m729x99c71a76(careError);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$terminateLoadDTCs$2$com-texa-carelib-care-vehicle-internal-VehicleBase, reason: not valid java name */
    public /* synthetic */ void m729x99c71a76(CareError careError) {
        if (careError != null) {
            clearDTCs();
        }
        if (this.mVehicleTroublesListeners.size() > 0) {
            int size = this.mVehicleTroublesListeners.size();
            VehicleTroublesListener[] vehicleTroublesListenerArr = new VehicleTroublesListener[size];
            this.mVehicleTroublesListeners.toArray(vehicleTroublesListenerArr);
            for (int i = 0; i < size; i++) {
                vehicleTroublesListenerArr[i].onDTCReadCompleted(new DTCReadCompletedEvent(this, careError));
            }
        }
        this.mDTCResolutionError = null;
    }

    public void waitDTCsTranslationForECU(long j) {
        this.mECUInTranslations.put(Long.valueOf(j), Integer.valueOf(this.mECUInTranslations.containsKey(Long.valueOf(j)) ? 1 + this.mECUInTranslations.get(Long.valueOf(j)).intValue() : 1));
    }

    public void didReceiveDTCsForECU(Long l, Map<String, DTCDetail> map) {
        int size = map.size();
        this.mReceivedECUs.put(l, Integer.valueOf(size));
        float fCalculateECUScanProgress = calculateECUScanProgress(getReceivedECUs());
        setECUScanProgress(fCalculateECUScanProgress);
        if (1.0f == fCalculateECUScanProgress) {
            CareLog.d(TAG, "ECU scan has been completed.", new Object[0]);
        }
        setDTCTranslationProgress(calculateTranslationProgress(fCalculateECUScanProgress, this.mReceivedECUs, getDTCStore().getECUCount()));
        if (size > 0) {
            CareLog.v(TAG, "Sending %1$d DTCs to translator...", Integer.valueOf(size));
            waitDTCsTranslationForECU(l.longValue());
            if (getDTCTranslator() != null) {
                try {
                    getDTCTranslator().translateDTCsForECU(this, l.longValue(), map);
                    return;
                } catch (CareLibException e) {
                    updateDTC(Collections.emptyList(), l.longValue(), new CareError.Builder(2, 7).setException(e).setMessage("Unable to translate DTCs.").build());
                    return;
                }
            }
            return;
        }
        updateDTC(Collections.emptyList(), l.longValue(), null);
    }

    public void setReceivedECUs(Map<Long, Integer> map) {
        this.mReceivedECUs = map;
    }

    protected float calculateTranslationProgress(float f, Map<Long, Integer> map, int i) {
        int size = map.size();
        if (size == 0) {
            return 1.0f;
        }
        float f2 = (f * 0.5f) + (i * (0.5f / size));
        if (f2 > 1.0f) {
            return 1.0f;
        }
        return f2;
    }

    private static float calculateECUScanProgress(Map<Long, Integer> map) {
        int size;
        if (map == null || (size = map.size()) == 0) {
            return 0.0f;
        }
        int i = 0;
        Iterator<Integer> it = map.values().iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                i++;
            }
        }
        return i / size;
    }
}
