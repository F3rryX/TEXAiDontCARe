package com.texa.carelib.care.featureverifier;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.internal.CareFeatureVerifier;
import com.texa.carelib.care.featureverifier.internal.SerialCareFeatureVerifier;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;
import com.texa.carelib.profile.internal.SerialProfileProxy;

/* JADX INFO: loaded from: classes2.dex */
public class FeatureVerifierFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.featureverifier.FeatureVerifierFactory$1, reason: invalid class name */
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

    public static FeatureVerifier createFeatureVerifier(Profile profile, Accessory accessory) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialCareFeatureVerifier serialCareFeatureVerifier = new SerialCareFeatureVerifier(profile, accessory, ((SerialProfileProxy) profile).getCommandVerifier());
                profile.addProfileModule(serialCareFeatureVerifier);
                return serialCareFeatureVerifier;
            }
            if (i == 2) {
                CareFeatureVerifier careFeatureVerifier = new CareFeatureVerifier(profile, accessory);
                profile.addProfileModule(careFeatureVerifier);
                return careFeatureVerifier;
            }
        }
        throw new IllegalArgumentException("Invalid profile type.");
    }
}
