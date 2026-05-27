package com.texa.carelib.webservices;

import com.texa.carelib.webservices.internal.HttpTexaService;
import com.texa.carelib.webservices.internal.MockTexaService;

/* JADX INFO: loaded from: classes2.dex */
public class TexaServiceFactory {

    /* JADX INFO: renamed from: com.texa.carelib.webservices.TexaServiceFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$webservices$TexaServiceType;

        static {
            int[] iArr = new int[TexaServiceType.values().length];
            $SwitchMap$com$texa$carelib$webservices$TexaServiceType = iArr;
            try {
                iArr[TexaServiceType.MOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$webservices$TexaServiceType[TexaServiceType.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static TexaService createTexaService(TexaServiceType texaServiceType, TexaServiceDelegate texaServiceDelegate) {
        TexaService mockTexaService;
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$webservices$TexaServiceType[texaServiceType.ordinal()];
        if (i == 1) {
            mockTexaService = new MockTexaService();
        } else if (i == 2) {
            mockTexaService = new HttpTexaService(texaServiceDelegate.getApplicationContext());
        } else {
            throw new IllegalArgumentException("Invalid TexaServiceType");
        }
        mockTexaService.setServiceDelegate(texaServiceDelegate);
        return mockTexaService;
    }
}
