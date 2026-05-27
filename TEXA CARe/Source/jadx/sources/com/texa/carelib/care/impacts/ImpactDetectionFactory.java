package com.texa.carelib.care.impacts;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.impacts.internal.MockImpactDetection;
import com.texa.carelib.care.impacts.internal.SerialImpactDetection;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactDetectionFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.impacts.ImpactDetectionFactory$1, reason: invalid class name */
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

    public static ImpactDetection createImpactDetection(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialImpactDetection serialImpactDetection = new SerialImpactDetection(profile, featureVerifier);
                profile.addProfileModule(serialImpactDetection);
                return serialImpactDetection;
            }
            if (i == 2) {
                MockImpactDetection mockImpactDetection = new MockImpactDetection(profile, featureVerifier);
                profile.addProfileModule(mockImpactDetection);
                return mockImpactDetection;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
