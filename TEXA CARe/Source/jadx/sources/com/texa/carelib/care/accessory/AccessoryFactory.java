package com.texa.carelib.care.accessory;

import com.texa.carelib.care.accessory.internal.MockAccessory;
import com.texa.carelib.care.accessory.internal.SerialAccessory;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class AccessoryFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.accessory.AccessoryFactory$1, reason: invalid class name */
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

    public static Accessory createAccessory(Profile profile) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialAccessory serialAccessory = new SerialAccessory(profile);
                profile.addProfileModule(serialAccessory);
                return serialAccessory;
            }
            if (i == 2) {
                MockAccessory mockAccessory = new MockAccessory(profile, "D3M0_53R14L");
                profile.addProfileModule(mockAccessory);
                return mockAccessory;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
