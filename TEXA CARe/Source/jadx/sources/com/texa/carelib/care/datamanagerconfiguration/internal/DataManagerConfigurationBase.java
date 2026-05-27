package com.texa.carelib.care.datamanagerconfiguration.internal;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.datamanagerconfiguration.LedBehaviour;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.beans.PropertyChangeEvent;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
abstract class DataManagerConfigurationBase extends ProfileSubModule implements DataManagerConfiguration {
    private Integer mAccelerationMaxRange;
    private Float mAccelerationThreshold;
    private Float mBrakeThreshold;
    private UUID mDriverID;
    private Integer mDrivingTimeLowRPMMaxThreshold;
    private Integer mDrivingTimeLowRPMMinThreshold;
    private final FeatureVerifier mFeatureVerifier;
    private LedBehaviour mLedBehaviour;
    private Integer mRPMThreshold;
    private Boolean mSOSEnabled;
    private Boolean mSOSEnabledLowPowerMode;
    private Float mStartingOdometer;
    private Integer mTemperatureThreshold;
    private Integer mTimeZoneOffset;
    private Long mTripNumberDevice;
    private Integer mTripNumberVehicle;

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Boolean isSOSEnabled() {
        return this.mSOSEnabled;
    }

    void setSOSEnabled(Boolean bool) {
        Boolean bool2 = this.mSOSEnabled;
        this.mSOSEnabled = bool;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_SOS_ENABLED, bool2, this.mSOSEnabled));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Boolean isSOSEnabledLowPowerMode() {
        return this.mSOSEnabledLowPowerMode;
    }

    void setSOSEnabledLowPowerMode(Boolean bool) {
        Boolean bool2 = this.mSOSEnabledLowPowerMode;
        this.mSOSEnabledLowPowerMode = bool;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_SOS_ENABLED_LOW_POWER_MODE, bool2, this.mSOSEnabled));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Float getStartingOdometer() {
        return this.mStartingOdometer;
    }

    void setStartingOdometer(Float f) {
        Float f2 = this.mStartingOdometer;
        this.mStartingOdometer = f;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_ODOMETER, f2, this.mStartingOdometer));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public UUID getDriverID() {
        return this.mDriverID;
    }

    void _setDriverID(UUID uuid) {
        UUID uuid2 = this.mDriverID;
        this.mDriverID = uuid;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_DRIVER_ID, uuid2, this.mDriverID));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getTimeZoneOffset() {
        return this.mTimeZoneOffset;
    }

    public void setTimeZoneOffset(Integer num) {
        Integer num2 = this.mTimeZoneOffset;
        this.mTimeZoneOffset = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_TIMEZONE_OFFSET, num2, this.mTimeZoneOffset));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Float getAccelerationThreshold() {
        return this.mAccelerationThreshold;
    }

    void setAccelerationThreshold(Float f) {
        Float f2 = this.mAccelerationThreshold;
        this.mAccelerationThreshold = f;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_ACCELERATION_THRESHOLD, f2, this.mAccelerationThreshold));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Float getBrakeThreshold() {
        return this.mBrakeThreshold;
    }

    void setBrakeThreshold(Float f) {
        Float f2 = this.mBrakeThreshold;
        this.mBrakeThreshold = f;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_BRAKE_THRESHOLD, f2, this.mBrakeThreshold));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getRPMThreshold() {
        return this.mRPMThreshold;
    }

    void setRPMThreshold(Integer num) {
        Integer num2 = this.mRPMThreshold;
        this.mRPMThreshold = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_RPM_THRESHOLD, num2, this.mRPMThreshold));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getTemperatureThreshold() {
        return this.mTemperatureThreshold;
    }

    void setTemperatureThreshold(Integer num) {
        Integer num2 = this.mTemperatureThreshold;
        this.mTemperatureThreshold = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_TEMPERATURE_THRESHOLD, num2, this.mTemperatureThreshold));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Long getTripNumberDevice() {
        return this.mTripNumberDevice;
    }

    void setTripNumberDevice(Long l) {
        Long l2 = this.mTripNumberDevice;
        this.mTripNumberDevice = l;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_TRIP_NUMBER_DEVICE, l2, this.mTripNumberDevice));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getTripNumberVehicle() {
        return this.mTripNumberVehicle;
    }

    void setTripNumberVehicle(Integer num) {
        Integer num2 = this.mTripNumberVehicle;
        this.mTripNumberVehicle = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_TRIP_NUMBER_VEHICLE, num2, this.mTripNumberVehicle));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getAccelerationMaxRange() {
        return this.mAccelerationMaxRange;
    }

    void setAccelerationMaxRange(Integer num) {
        Integer num2 = this.mAccelerationMaxRange;
        this.mAccelerationMaxRange = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_ACCELERATION_MAX_RANGE, num2, this.mAccelerationMaxRange));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getDrivingTimeLowRPMMinThreshold() {
        return this.mDrivingTimeLowRPMMinThreshold;
    }

    void setDrivingTimeLowRPMMinThreshold(Integer num) {
        Integer num2 = this.mDrivingTimeLowRPMMinThreshold;
        this.mDrivingTimeLowRPMMinThreshold = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, num2, this.mDrivingTimeLowRPMMinThreshold));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public Integer getDrivingTimeLowRPMMaxThreshold() {
        return this.mDrivingTimeLowRPMMaxThreshold;
    }

    void setDrivingTimeLowRPMMaxThreshold(Integer num) {
        Integer num2 = this.mDrivingTimeLowRPMMaxThreshold;
        this.mDrivingTimeLowRPMMaxThreshold = num;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, num2, this.mDrivingTimeLowRPMMaxThreshold));
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public LedBehaviour getLedBehaviour() {
        return this.mLedBehaviour;
    }

    public void _setLedBehaviour(LedBehaviour ledBehaviour) {
        LedBehaviour ledBehaviour2 = this.mLedBehaviour;
        this.mLedBehaviour = ledBehaviour;
        firePropertyChange(new PropertyChangeEvent(this, DataManagerConfiguration.PROPERTY_LED_BEHAVIOUR, ledBehaviour2, this.mLedBehaviour));
    }

    DataManagerConfigurationBase(FeatureVerifier featureVerifier) {
        this.mFeatureVerifier = featureVerifier;
        resetData(false);
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            resetData(false);
        }
    }

    void resetData(boolean z) {
        if (z) {
            setAccelerationThreshold((Float) null);
            setBrakeThreshold((Float) null);
            _setDriverID(null);
            setRPMThreshold((Integer) null);
            setSOSEnabled((Boolean) null);
            setSOSEnabledLowPowerMode((Boolean) null);
            setStartingOdometer((Float) null);
            setTemperatureThreshold((Integer) null);
            setTimeZoneOffset((Integer) null);
            setTripNumberDevice(null);
            setTripNumberVehicle(null);
            _setLedBehaviour(LedBehaviour.Unknown);
            return;
        }
        this.mAccelerationThreshold = null;
        this.mBrakeThreshold = null;
        this.mDriverID = null;
        this.mRPMThreshold = null;
        this.mSOSEnabled = null;
        this.mSOSEnabledLowPowerMode = null;
        this.mStartingOdometer = null;
        this.mTemperatureThreshold = null;
        this.mTimeZoneOffset = null;
        this.mTripNumberDevice = null;
        this.mTripNumberVehicle = null;
        this.mLedBehaviour = LedBehaviour.Unknown;
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
