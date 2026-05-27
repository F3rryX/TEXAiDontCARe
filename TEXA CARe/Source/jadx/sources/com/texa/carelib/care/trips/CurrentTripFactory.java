package com.texa.carelib.care.trips;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.internal.MockCurrentTrip;
import com.texa.carelib.care.trips.internal.SerialCurrentTrip;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;
import com.texa.carelib.profile.internal.SerialProfileProxy;

/* JADX INFO: loaded from: classes2.dex */
public class CurrentTripFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.trips.CurrentTripFactory$1, reason: invalid class name */
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

    public static CurrentTrip createCurrentTrip(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialCurrentTrip serialCurrentTrip = new SerialCurrentTrip(profile, featureVerifier, ((SerialProfileProxy) profile).getCommandVerifier());
                profile.addProfileModule(serialCurrentTrip);
                return serialCurrentTrip;
            }
            if (i == 2) {
                MockCurrentTrip mockCurrentTrip = new MockCurrentTrip(profile, featureVerifier);
                profile.addProfileModule(mockCurrentTrip);
                return mockCurrentTrip;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
