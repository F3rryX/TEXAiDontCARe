package com.texa.carelib.care.vehicletroubles;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicle.internal.MockVehicle;
import com.texa.carelib.care.vehicle.internal.SerialVehicle;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.diagnosisscheduler.DiagnosisScheduler;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleTroublesFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.vehicletroubles.VehicleTroublesFactory$1, reason: invalid class name */
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

    public static VehicleTroubles createVehicleTroubles(Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialVehicle serialVehicleSingletonInstance = SerialVehicle.singletonInstance((SerialProfile) profile, accessory, featureVerifier, DiagnosisScheduler.singletonInstance());
                profile.addProfileModule(serialVehicleSingletonInstance);
                return serialVehicleSingletonInstance;
            }
            if (i == 2) {
                MockVehicle mockVehicle = new MockVehicle(profile, accessory, featureVerifier, DiagnosisScheduler.singletonInstance());
                profile.addProfileModule(mockVehicle);
                return mockVehicle;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
