package com.texa.carelib.profile;

import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.internal.MockProfile;
import com.texa.carelib.profile.internal.SerialProfile;

/* JADX INFO: loaded from: classes2.dex */
public class ProfileFactory {

    /* JADX INFO: renamed from: com.texa.carelib.profile.ProfileFactory$1, reason: invalid class name */
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

    public static Profile createProfile(ProfileType profileType, ProfileDelegate profileDelegate, Communication communication) {
        Profile serialProfile;
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[profileType.ordinal()];
        if (i == 1) {
            serialProfile = new SerialProfile(communication);
        } else if (i == 2) {
            serialProfile = new MockProfile(communication);
        } else {
            throw new IllegalArgumentException("Invalid profile type.");
        }
        serialProfile.setProfileDelegate(profileDelegate);
        return serialProfile;
    }
}
