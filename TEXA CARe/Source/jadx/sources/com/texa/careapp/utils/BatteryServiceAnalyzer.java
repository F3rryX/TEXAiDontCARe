package com.texa.careapp.utils;

import android.util.Base64;
import com.activeandroid.Cache;
import com.texa.careapp.CareApplication;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.BatteryAnalyzeModel;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer;
import com.texa.carelib.care.batteryanalyzer.BatteryVoltageHistogram;
import com.texa.carelib.care.batteryanalyzer.CrankReport;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.VersionFormatter;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import javax.inject.Inject;
import org.apache.commons.collections4.CollectionUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryServiceAnalyzer {
    private PropertyChangeListener batteryAnalyzerProperty = new PropertyChangeListener() { // from class: com.texa.careapp.utils.BatteryServiceAnalyzer.1
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
        @Override // java.beans.PropertyChangeListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            BatteryAnalyzeModel batteryAnalyzeModelCreateBatteryModel;
            String propertyName = propertyChangeEvent.getPropertyName();
            propertyName.hashCode();
            switch (propertyName) {
                case "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_TOTAL_HISTOGRAM":
                    BatteryVoltageHistogram lowPowerTotalHistogram = BatteryServiceAnalyzer.this.mBatteryAnalyzer.getLowPowerTotalHistogram();
                    if (!BatteryServiceAnalyzer.this.isValidBatteryVoltageHistogram(lowPowerTotalHistogram)) {
                        batteryAnalyzeModelCreateBatteryModel = null;
                        break;
                    } else {
                        batteryAnalyzeModelCreateBatteryModel = BatteryServiceAnalyzer.this.createBatteryModel(lowPowerTotalHistogram, BatteryAnalyzeModel.LOW_POWER_TOTAL_HISTOGRAM);
                        break;
                    }
                    break;
                case "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_OPERATING_CRANK_REPORT":
                    CrankReport operatingCrankReport = BatteryServiceAnalyzer.this.mBatteryAnalyzer.getOperatingCrankReport();
                    if (BatteryServiceAnalyzer.this.isValidCrankReport(operatingCrankReport)) {
                        batteryAnalyzeModelCreateBatteryModel = BatteryServiceAnalyzer.this.createBatteryModel(operatingCrankReport, BatteryAnalyzeModel.OPERATING_CRANK_REPORT);
                        break;
                    }
                    break;
                case "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_RECENT_HISTOGRAM":
                    BatteryVoltageHistogram lowPowerRecentHistogram = BatteryServiceAnalyzer.this.mBatteryAnalyzer.getLowPowerRecentHistogram();
                    if (BatteryServiceAnalyzer.this.isValidBatteryVoltageHistogram(lowPowerRecentHistogram)) {
                        batteryAnalyzeModelCreateBatteryModel = BatteryServiceAnalyzer.this.createBatteryModel(lowPowerRecentHistogram, BatteryAnalyzeModel.LOW_POWER_RECENT_HISTOGRAM);
                        break;
                    }
                    break;
                case "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_STANDBY_CRANK_REPORT":
                    CrankReport standByCrankReport = BatteryServiceAnalyzer.this.mBatteryAnalyzer.getStandByCrankReport();
                    if (BatteryServiceAnalyzer.this.isValidCrankReport(standByCrankReport)) {
                        batteryAnalyzeModelCreateBatteryModel = BatteryServiceAnalyzer.this.createBatteryModel(standByCrankReport, BatteryAnalyzeModel.STANDBY_CRANK_REPORT);
                        break;
                    }
                    break;
            }
            if (batteryAnalyzeModelCreateBatteryModel != null) {
                batteryAnalyzeModelCreateBatteryModel.setSyncNeeded(true);
                try {
                    Utils.safeModelSave(batteryAnalyzeModelCreateBatteryModel, Cache.getContext());
                } catch (DatabaseIOException e) {
                    e.printStackTrace();
                }
            }
        }
    };

    @Inject
    BatteryAnalyzer mBatteryAnalyzer;

    @Inject
    CAReWorkerManager mCAReWorkerManager;

    @Inject
    DongleDataManager mDongleDataManager;

    @Inject
    TexaCareApiServiceUser mTexaCareApiServiceUser;

    public BatteryServiceAnalyzer(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    public void onCommunicationStatusChanged(CommunicationStatus communicationStatus) {
        if (communicationStatus == CommunicationStatus.CONNECTED) {
            this.mBatteryAnalyzer.addPropertyChangeListener(this.batteryAnalyzerProperty);
        } else {
            this.mBatteryAnalyzer.removePropertyChangeListener(this.batteryAnalyzerProperty);
        }
    }

    public void onTripStatusChanged(TripStatus tripStatus) {
        if (tripStatus == TripStatus.InProgress) {
            try {
                this.mBatteryAnalyzer.loadBatteryAnalyzerInfo();
            } catch (CareLibException e) {
                e.printStackTrace();
            }
        }
    }

    public String getUTCDate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BatteryAnalyzeModel createBatteryModel(BatteryVoltageHistogram batteryVoltageHistogram, String str) {
        BatteryAnalyzeModel batteryAnalyzeModel = new BatteryAnalyzeModel();
        batteryAnalyzeModel.setTimestamp(getUTCDate());
        batteryAnalyzeModel.setReportType(str);
        batteryAnalyzeModel.setRawData(Base64.encodeToString(batteryVoltageHistogram.getRawData(), 2));
        batteryAnalyzeModel.setHwid(this.mDongleDataManager.getDongleModel().getHwid());
        batteryAnalyzeModel.setFirmware(VersionFormatter.formatLong(this.mDongleDataManager.getDongleModel().getMainAppVersion()));
        return batteryAnalyzeModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BatteryAnalyzeModel createBatteryModel(CrankReport crankReport, String str) {
        BatteryAnalyzeModel batteryAnalyzeModel = new BatteryAnalyzeModel();
        batteryAnalyzeModel.setTimestamp(getUTCDate());
        batteryAnalyzeModel.setReportType(str);
        batteryAnalyzeModel.setRawData(Base64.encodeToString(crankReport.getRawData(), 2));
        batteryAnalyzeModel.setHwid(this.mDongleDataManager.getDongleModel().getHwid());
        batteryAnalyzeModel.setFirmware(VersionFormatter.formatLong(this.mDongleDataManager.getDongleModel().getMainAppVersion()));
        return batteryAnalyzeModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidCrankReport(CrankReport crankReport) {
        return (crankReport == null || CollectionUtils.isEmpty(crankReport.getSamples())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidBatteryVoltageHistogram(BatteryVoltageHistogram batteryVoltageHistogram) {
        return (batteryVoltageHistogram == null || CollectionUtils.isEmpty(batteryVoltageHistogram.getBeams())) ? false : true;
    }

    public void scheduleSyncBatteryData() {
        this.mCAReWorkerManager.scheduleBatteryAnalyzerJob();
    }
}
