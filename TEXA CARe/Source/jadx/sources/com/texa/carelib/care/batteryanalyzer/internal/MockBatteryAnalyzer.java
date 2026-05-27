package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.batteryanalyzer.BatteryVoltageHistogram;
import com.texa.carelib.care.batteryanalyzer.CrankReport;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.Profile;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MockBatteryAnalyzer extends BatteryAnalyzerBase {
    private static final String TAG = "MockBatteryAnalyzer";

    public MockBatteryAnalyzer(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
    }

    @Override // com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer
    public void loadBatteryAnalyzerInfo() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        new Thread(new Runnable() { // from class: com.texa.carelib.care.batteryanalyzer.internal.MockBatteryAnalyzer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m680x93f70749();
            }
        }, "thread_loadBatteryAnalyzerInfo").start();
    }

    /* JADX INFO: renamed from: lambda$loadBatteryAnalyzerInfo$0$com-texa-carelib-care-batteryanalyzer-internal-MockBatteryAnalyzer, reason: not valid java name */
    public /* synthetic */ void m680x93f70749() {
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, "Could not wait.", e);
        }
        setStandByCrankReport(makeStandByCrankReport(Utils.getUTCNow()));
        setOperatingCrankReport(makeOperatingCrankReport(Utils.getUTCNow()));
        setLowPowerRecentHistogram(makeLowPowerRecentHistogram(Utils.getUTCNow()));
        setLowPowerTotalHistogram(makeLowPowerTotalHistogram(Utils.getUTCNow()));
    }

    private CrankReport makeStandByCrankReport(Date date) {
        CrankReport.Builder builder = new CrankReport.Builder();
        builder.setVersion(1).setRawData(new byte[0]).setTimestamp(date);
        return builder.build();
    }

    private CrankReport makeOperatingCrankReport(Date date) {
        CrankReport.Builder builder = new CrankReport.Builder();
        builder.setVersion(1).setRawData(new byte[0]).setTimestamp(date);
        return builder.build();
    }

    private BatteryVoltageHistogram makeLowPowerRecentHistogram(Date date) {
        BatteryVoltageHistogram.Builder builder = new BatteryVoltageHistogram.Builder();
        builder.setVersion(1).setData(new byte[0]).setTimestamp(date);
        return builder.build();
    }

    private BatteryVoltageHistogram makeLowPowerTotalHistogram(Date date) {
        BatteryVoltageHistogram.Builder builder = new BatteryVoltageHistogram.Builder();
        builder.setVersion(1).setData(new byte[0]).setTimestamp(date);
        return builder.build();
    }
}
