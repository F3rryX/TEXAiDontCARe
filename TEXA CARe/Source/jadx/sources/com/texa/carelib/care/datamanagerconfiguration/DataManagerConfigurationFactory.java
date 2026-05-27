package com.texa.carelib.care.datamanagerconfiguration;

import com.texa.carelib.care.datamanagerconfiguration.internal.MockDataManagerConfiguration;
import com.texa.carelib.care.datamanagerconfiguration.internal.SerialDataManagerConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class DataManagerConfigurationFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.datamanagerconfiguration.DataManagerConfigurationFactory$1, reason: invalid class name */
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

    public static DataManagerConfiguration createDataManagerConfiguration(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialDataManagerConfiguration serialDataManagerConfiguration = new SerialDataManagerConfiguration(profile, featureVerifier);
                profile.addProfileModule(serialDataManagerConfiguration);
                return serialDataManagerConfiguration;
            }
            if (i == 2) {
                MockDataManagerConfiguration mockDataManagerConfiguration = new MockDataManagerConfiguration(profile, featureVerifier);
                profile.addProfileModule(mockDataManagerConfiguration);
                return mockDataManagerConfiguration;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
