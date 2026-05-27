package com.texa.carelib.care.trips;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.internal.MockTripLogBook;
import com.texa.carelib.care.trips.internal.SerialTripLogBook;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class TripLogBookFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.trips.TripLogBookFactory$1, reason: invalid class name */
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

    public static TripLogBook createTripLogBook(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialTripLogBook serialTripLogBook = new SerialTripLogBook(profile, featureVerifier);
                profile.addProfileModule(serialTripLogBook);
                return serialTripLogBook;
            }
            if (i == 2) {
                MockTripLogBook mockTripLogBook = new MockTripLogBook(profile, featureVerifier);
                profile.addProfileModule(mockTripLogBook);
                return mockTripLogBook;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
