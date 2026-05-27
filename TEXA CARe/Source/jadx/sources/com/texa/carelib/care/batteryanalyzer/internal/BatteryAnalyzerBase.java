package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer;
import com.texa.carelib.care.batteryanalyzer.BatteryVoltageHistogram;
import com.texa.carelib.care.batteryanalyzer.CrankReport;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.utils.internal.CareStructJoiner;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BatteryAnalyzerBase extends ProfileSubModule implements BatteryAnalyzer {
    private final FeatureVerifier mFeatureVerifier;
    private BatteryVoltageHistogram mLowPowerRecentHistogram;
    private BatteryVoltageHistogram mLowPowerTotalHistogram;
    private CrankReport mOperatingCrankReport;
    private final Profile mProfile;
    private CrankReport mStandByCrankReport;

    public BatteryAnalyzerBase(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer
    public CrankReport getStandByCrankReport() {
        return this.mStandByCrankReport;
    }

    protected void setStandByCrankReport(CrankReport crankReport) {
        CrankReport crankReport2 = this.mStandByCrankReport;
        this.mStandByCrankReport = crankReport;
        firePropertyChange(new PropertyChangeEvent(this, BatteryAnalyzer.PROPERTY_STANDBY_CRANK_REPORT, crankReport2, crankReport));
    }

    @Override // com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer
    public CrankReport getOperatingCrankReport() {
        return this.mOperatingCrankReport;
    }

    protected void setOperatingCrankReport(CrankReport crankReport) {
        CrankReport crankReport2 = this.mOperatingCrankReport;
        this.mOperatingCrankReport = crankReport;
        firePropertyChange(new PropertyChangeEvent(this, BatteryAnalyzer.PROPERTY_OPERATING_CRANK_REPORT, crankReport2, crankReport));
    }

    @Override // com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer
    public BatteryVoltageHistogram getLowPowerRecentHistogram() {
        return this.mLowPowerRecentHistogram;
    }

    protected void setLowPowerRecentHistogram(BatteryVoltageHistogram batteryVoltageHistogram) {
        BatteryVoltageHistogram batteryVoltageHistogram2 = this.mLowPowerRecentHistogram;
        this.mLowPowerRecentHistogram = batteryVoltageHistogram;
        firePropertyChange(new PropertyChangeEvent(this, BatteryAnalyzer.PROPERTY_LOW_POWER_RECENT_HISTOGRAM, batteryVoltageHistogram2, batteryVoltageHistogram));
    }

    @Override // com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer
    public BatteryVoltageHistogram getLowPowerTotalHistogram() {
        return this.mLowPowerTotalHistogram;
    }

    protected void setLowPowerTotalHistogram(BatteryVoltageHistogram batteryVoltageHistogram) {
        BatteryVoltageHistogram batteryVoltageHistogram2 = this.mLowPowerTotalHistogram;
        this.mLowPowerTotalHistogram = batteryVoltageHistogram;
        firePropertyChange(new PropertyChangeEvent(this, BatteryAnalyzer.PROPERTY_LOW_POWER_TOTAL_HISTOGRAM, batteryVoltageHistogram2, batteryVoltageHistogram));
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            setStandByCrankReport(null);
            setOperatingCrankReport(null);
            setLowPowerRecentHistogram(null);
            setLowPowerTotalHistogram(null);
        }
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        return CareStructJoiner.join(this.mStandByCrankReport, this.mOperatingCrankReport, this.mLowPowerRecentHistogram, this.mLowPowerTotalHistogram);
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
