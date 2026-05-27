package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.ImpactDetectionConfiguration;
import com.texa.carelib.care.impacts.ImpactDetectionListener;
import com.texa.carelib.care.impacts.events.ImpactDetectedEvent;
import com.texa.carelib.care.impacts.events.SimulateImpactCompletedEvent;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.beans.PropertyChangeEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImpactDetectionBase extends ProfileSubModule implements ImpactDetection, ImpactDetectionConfiguration {
    public static final String TAG = "ImpactDetectionBase";
    private List<CrashReport> mAccelerationEvents;
    private List<CrashReport> mAccelerationEventsLPM;
    private Float mAccelerationThreshold;
    private List<Impact> mDetectedImpacts;
    private final FeatureVerifier mFeatureVerifier;
    private final List<ImpactDetectionListener> mImpactDetectionListeners = new ArrayList();
    private boolean mIsEnabled;
    private Impact mLastImpact;
    private final Profile mProfile;
    private Float mSpeedTimeout;
    private Set<Integer> mSupportedFrequencies;
    private Float mTimeOverThreshold;
    private Long mVerboseSamplesCount;

    ImpactDetectionBase(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
        resetData(false);
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public Float getAccelerationThreshold() {
        return this.mAccelerationThreshold;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public void setAccelerationThreshold(Float f) {
        Float f2 = this.mAccelerationThreshold;
        this.mAccelerationThreshold = f;
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetectionConfiguration.PROPERTY_ACCELERATION_THRESHOLD, f2, this.mAccelerationThreshold));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public Float getSpeedTimeout() {
        return this.mSpeedTimeout;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public void setSpeedTimeout(Float f) {
        Float f2 = this.mSpeedTimeout;
        this.mSpeedTimeout = f;
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetectionConfiguration.PROPERTY_SPEED_TIMEOUT, f2, this.mSpeedTimeout));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public Float getTimeOverThreshold() {
        return this.mTimeOverThreshold;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public void setTimeOverThreshold(Float f) {
        Float f2 = this.mTimeOverThreshold;
        this.mTimeOverThreshold = f;
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetectionConfiguration.PROPERTY_TIME_OVER_THRESHOLD, f2, this.mTimeOverThreshold));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public Long getVerboseReportSamplesCount() {
        return this.mVerboseSamplesCount;
    }

    protected void setVerboseReportSamplesCount(Long l) {
        Long l2 = this.mVerboseSamplesCount;
        this.mVerboseSamplesCount = l;
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetectionConfiguration.PROPERTY_VERBOSE_REPORT_SAMPLES_COUNT, l2, this.mVerboseSamplesCount));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public void setEnabled(boolean z) {
        boolean z2 = this.mIsEnabled;
        if (z2 != z) {
            this.mIsEnabled = z;
            firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_ENABLED, Boolean.valueOf(z2), Boolean.valueOf(this.mIsEnabled)));
        }
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public List<CrashReport> getAccelerationEvents() {
        return this.mAccelerationEvents;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public List<CrashReport> getAccelerationEventsLPM() {
        return this.mAccelerationEventsLPM;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public List<Impact> getImpacts() {
        return this.mDetectedImpacts;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public ImpactDetectionListener addImpactDetectionListener(ImpactDetectionListener impactDetectionListener) {
        synchronized (this.mImpactDetectionListeners) {
            this.mImpactDetectionListeners.add(impactDetectionListener);
        }
        return impactDetectionListener;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public void removeImpactDetectionListener(ImpactDetectionListener impactDetectionListener) {
        synchronized (this.mImpactDetectionListeners) {
            this.mImpactDetectionListeners.remove(impactDetectionListener);
        }
    }

    protected void fireCrashDetected(ImpactDetectedEvent impactDetectedEvent) {
        int size;
        ImpactDetectionListener[] impactDetectionListenerArr;
        synchronized (this.mImpactDetectionListeners) {
            size = this.mImpactDetectionListeners.size();
            impactDetectionListenerArr = new ImpactDetectionListener[size];
            this.mImpactDetectionListeners.toArray(impactDetectionListenerArr);
        }
        for (int i = 0; i < size; i++) {
            ImpactDetectionListener impactDetectionListener = impactDetectionListenerArr[i];
            if (impactDetectionListener != null) {
                impactDetectionListener.onImpactDetected(impactDetectedEvent);
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            resetData(false);
        }
    }

    protected void resetData(boolean z) {
        if (z) {
            setSupportedFrequencies(new HashSet());
            setAccelerationThreshold(null);
            setEnabled(false);
            setTimeOverThreshold(null);
            setSpeedTimeout(null);
            setLastImpact(null);
            clearImpacts();
            clearAccelerationEvents();
            clearAccelerationEventsLPM();
            return;
        }
        this.mAccelerationThreshold = null;
        this.mIsEnabled = true;
        this.mTimeOverThreshold = null;
        this.mSpeedTimeout = null;
        this.mDetectedImpacts = new ArrayList();
        this.mAccelerationEvents = new ArrayList();
        this.mAccelerationEventsLPM = new ArrayList();
        this.mSupportedFrequencies = new HashSet();
        this.mLastImpact = null;
    }

    protected void addAccelerationEvents(List<CrashReport> list) {
        ArrayList arrayList = new ArrayList(getAccelerationEvents());
        this.mAccelerationEvents.clear();
        this.mAccelerationEvents.addAll(list);
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_ACCELERATION_EVENTS, arrayList, getAccelerationEvents()));
    }

    protected void addAccelerationEventsLPM(List<CrashReport> list) {
        ArrayList arrayList = new ArrayList(getAccelerationEventsLPM());
        this.mAccelerationEventsLPM.clear();
        this.mAccelerationEventsLPM.addAll(list);
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_ACCELERATION_EVENTS_LPM, arrayList, getAccelerationEventsLPM()));
    }

    protected void addImpacts(List<Impact> list) {
        ArrayList arrayList = new ArrayList(getImpacts());
        this.mDetectedImpacts.clear();
        this.mDetectedImpacts.addAll(list);
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_IMPACTS, arrayList, getImpacts()));
    }

    protected void clearAccelerationEvents() {
        List<CrashReport> list = this.mAccelerationEvents;
        this.mAccelerationEvents = new ArrayList();
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_ACCELERATION_EVENTS, list, this.mAccelerationEvents));
    }

    protected void clearAccelerationEventsLPM() {
        List<CrashReport> list = this.mAccelerationEventsLPM;
        this.mAccelerationEventsLPM = new ArrayList();
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_ACCELERATION_EVENTS_LPM, list, this.mAccelerationEventsLPM));
    }

    protected void clearImpacts() {
        List<Impact> list = this.mDetectedImpacts;
        this.mDetectedImpacts = new ArrayList();
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_IMPACTS, list, this.mDetectedImpacts));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public Impact getLastImpact() {
        return this.mLastImpact;
    }

    protected void setLastImpact(Impact impact) {
        Impact impact2 = this.mLastImpact;
        this.mLastImpact = impact;
        firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_LAST_IMPACT, impact2, impact));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public void simulateImpact(int i, Callback<SimulateImpactCompletedEvent> callback) throws CareLibException {
        throw new CareLibException("Impact simulation is not supported.");
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public Set<Integer> getSupportedFrequencies() {
        return Collections.unmodifiableSet(this.mSupportedFrequencies);
    }

    public void setSupportedFrequencies(Set<Integer> set) {
        Set<Integer> set2 = this.mSupportedFrequencies;
        if (set2 != set) {
            this.mSupportedFrequencies = set;
            firePropertyChange(new PropertyChangeEvent(this, ImpactDetection.PROPERTY_SUPPORTED_FREQUENCIES, set2, this.mSupportedFrequencies));
        }
    }
}
