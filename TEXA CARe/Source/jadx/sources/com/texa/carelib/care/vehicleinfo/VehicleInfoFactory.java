package com.texa.carelib.care.vehicleinfo;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicleinfo.internal.MockVehicleInfo;
import com.texa.carelib.care.vehicleinfo.internal.SerialVehicleInfo;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleInfoFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.vehicleinfo.VehicleInfoFactory$1, reason: invalid class name */
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

    public static VehicleInfo createVehicleInfo(Profile profile, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialVehicleInfo serialVehicleInfo = new SerialVehicleInfo(profile, featureVerifier);
                profile.addProfileModule(serialVehicleInfo);
                return serialVehicleInfo;
            }
            if (i == 2) {
                MockVehicleInfo mockVehicleInfo = new MockVehicleInfo(profile, featureVerifier);
                profile.addProfileModule(mockVehicleInfo);
                return mockVehicleInfo;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
