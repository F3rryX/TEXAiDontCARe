package com.texa.carelib.care.batteryanalyzer;

import com.texa.carelib.care.batteryanalyzer.internal.MockBatteryAnalyzer;
import com.texa.carelib.care.batteryanalyzer.internal.SerialBatteryAnalyzer;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryAnalyzerFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.batteryanalyzer.BatteryAnalyzerFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$profile$ProfileType;

        static {
            int[] iArr = new int[ProfileType.values().length];
            $SwitchMap$com$texa$carelib$profile$ProfileType = iArr;
            try {
                iArr[ProfileType.SPP_BLUETOOTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$ProfileType[ProfileType.MOCK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static BatteryAnalyzer createBatteryAnalyzer(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialBatteryAnalyzer serialBatteryAnalyzer = new SerialBatteryAnalyzer(profile, featureVerifier);
                profile.addProfileModule(serialBatteryAnalyzer);
                return serialBatteryAnalyzer;
            }
            if (i == 2) {
                MockBatteryAnalyzer mockBatteryAnalyzer = new MockBatteryAnalyzer(profile, featureVerifier);
                profile.addProfileModule(mockBatteryAnalyzer);
                return mockBatteryAnalyzer;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
