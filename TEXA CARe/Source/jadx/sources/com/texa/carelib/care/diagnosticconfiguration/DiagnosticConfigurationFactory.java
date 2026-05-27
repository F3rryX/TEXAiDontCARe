package com.texa.carelib.care.diagnosticconfiguration;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.diagnosticconfiguration.internal.MockDiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosticConfigurationFactory {

    /* JADX INFO: renamed from: com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationFactory$1, reason: invalid class name */
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

    public static DiagnosticConfiguration createDiagnosticConfiguration(Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        if (profile instanceof ProfileTypeProxy) {
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$ProfileType[((ProfileTypeProxy) profile).getType().ordinal()];
            if (i == 1) {
                SerialDiagnosticConfiguration serialDiagnosticConfiguration = new SerialDiagnosticConfiguration(profile, accessory, featureVerifier, new InternalFileCache(profile.getProfileDelegate().getApplicationContext()));
                profile.addProfileModule(serialDiagnosticConfiguration);
                return serialDiagnosticConfiguration;
            }
            if (i == 2) {
                MockDiagnosticConfiguration mockDiagnosticConfiguration = new MockDiagnosticConfiguration(profile, featureVerifier);
                profile.addProfileModule(mockDiagnosticConfiguration);
                return mockDiagnosticConfiguration;
            }
        }
        throw new IllegalArgumentException("Profile type is not supported.");
    }
}
