package com.texa.carelib.care.firmwareupgrade;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpgradeProcedureFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$profile$ProfileType;

        static {
            int[] iArr = new int[ProfileType.values().length];
            $SwitchMap$com$texa$carelib$profile$ProfileType = iArr;
            try {
                iArr[ProfileType.SPP_BLUETOOTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static FirmwareUpgradeProcedure createFirmwareUpgradeProcedure(Profile profile, FeatureVerifier featureVerifier) {
        if ((profile instanceof ProfileTypeProxy) && AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()] == 1) {
            SerialFirmwareUpgradeProcedureSmart serialFirmwareUpgradeProcedureSmart = new SerialFirmwareUpgradeProcedureSmart(profile, featureVerifier);
            profile.addProfileModule(serialFirmwareUpgradeProcedureSmart);
            return serialFirmwareUpgradeProcedureSmart;
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
