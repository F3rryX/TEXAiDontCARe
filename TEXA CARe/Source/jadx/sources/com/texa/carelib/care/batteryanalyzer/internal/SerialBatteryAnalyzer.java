package com.texa.carelib.care.batteryanalyzer.internal;

import com.texa.carelib.care.featureverifier.FeatureNotSupportedException;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;

/* JADX INFO: loaded from: classes2.dex */
public class SerialBatteryAnalyzer extends BatteryAnalyzerBase implements SerialProfileMessageReceiver {
    private static final String TAG = "SerialBatteryAnalyzer";
    private final SerialProfileProxy mSerialProfileProxy;

    public SerialBatteryAnalyzer(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
        if (profile instanceof SerialProfileProxy) {
            SerialProfileProxy serialProfileProxy = (SerialProfileProxy) profile;
            this.mSerialProfileProxy = serialProfileProxy;
            serialProfileProxy.enableCommandSubscription(true, 115);
            return;
        }
        this.mSerialProfileProxy = null;
    }

    @Override // com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer
    public void loadBatteryAnalyzerInfo() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(9)) {
            throw new FeatureNotSupportedException();
        }
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(new Message.Builder().setCommandID(114).build());
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(115).build());
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(116).build());
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(117).build());
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        switch (message.getCommandID()) {
            case 114:
                handleGetStandByCrankReport(message, careError);
                break;
            case 115:
                handleGetOperatingCrankReport(message, careError);
                break;
            case 116:
                handleGetLowPowerRecentHistogram(message, careError);
                break;
            case 117:
                handleGetLowPowerTotalHistogram(message, careError);
                break;
        }
    }

    protected void handleGetStandByCrankReport(Message message, CareError careError) {
        if (careError == null) {
            try {
                CrankReportFactory crankReportFactory = new CrankReportFactory();
                byte[] data = message.getData();
                if (data != null) {
                    setStandByCrankReport(crankReportFactory.create(data));
                }
            } catch (Exception e) {
                CareLog.e(TAG, e, "handleGetStandByCrankReport error.", new Object[0]);
            }
        }
    }

    protected void handleGetOperatingCrankReport(Message message, CareError careError) {
        if (careError == null) {
            try {
                CrankReportFactory crankReportFactory = new CrankReportFactory();
                byte[] data = message.getData();
                if (data != null) {
                    setOperatingCrankReport(crankReportFactory.create(data));
                }
            } catch (Exception e) {
                CareLog.e(TAG, e, "handleGetOperatingCrankReport error.", new Object[0]);
            }
        }
    }

    protected void handleGetLowPowerRecentHistogram(Message message, CareError careError) {
        if (careError == null) {
            try {
                BatteryVoltageHistogramFactory batteryVoltageHistogramFactory = new BatteryVoltageHistogramFactory();
                byte[] data = message.getData();
                if (data != null) {
                    setLowPowerRecentHistogram(batteryVoltageHistogramFactory.create(data));
                }
            } catch (Exception e) {
                CareLog.e(TAG, e, "handleGetLowPowerRecentHistogram error.", new Object[0]);
            }
        }
    }

    protected void handleGetLowPowerTotalHistogram(Message message, CareError careError) {
        if (careError == null) {
            try {
                BatteryVoltageHistogramFactory batteryVoltageHistogramFactory = new BatteryVoltageHistogramFactory();
                byte[] data = message.getData();
                if (data != null) {
                    setLowPowerTotalHistogram(batteryVoltageHistogramFactory.create(data));
                }
            } catch (Exception e) {
                CareLog.e(TAG, e, "handleGetLowPowerTotalHistogram error.", new Object[0]);
            }
        }
    }
}
