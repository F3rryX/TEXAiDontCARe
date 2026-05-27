package com.texa.carelib.care.logger;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.logger.internal.MockCareLogger;
import com.texa.carelib.care.logger.internal.SerialCareLogger;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class CareLoggerFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.logger.CareLoggerFactory$1, reason: invalid class name */
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

    public static CareLogger createCareLogger(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialCareLogger serialCareLogger = new SerialCareLogger(profile, featureVerifier);
                profile.addProfileModule(serialCareLogger);
                return serialCareLogger;
            }
            if (i == 2) {
                MockCareLogger mockCareLogger = new MockCareLogger(profile, featureVerifier);
                profile.addProfileModule(mockCareLogger);
                return mockCareLogger;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
