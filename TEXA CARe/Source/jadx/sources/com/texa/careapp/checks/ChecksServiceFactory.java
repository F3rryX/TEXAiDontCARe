package com.texa.careapp.checks;

import com.texa.careapp.model.ServiceDataModel;

/* JADX INFO: loaded from: classes2.dex */
public class ChecksServiceFactory {
    private final ServiceDataModel service;

    public enum CheckServiceType {
        CHECK_SERVICE_TERMS,
        CHECK_SERVICE_GUARDIAN_ANGEL
    }

    public ChecksServiceFactory(ServiceDataModel serviceDataModel) {
        this.service = serviceDataModel;
    }

    /* JADX INFO: renamed from: com.texa.careapp.checks.ChecksServiceFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType;

        static {
            int[] iArr = new int[CheckServiceType.values().length];
            $SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType = iArr;
            try {
                iArr[CheckServiceType.CHECK_SERVICE_TERMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType[CheckServiceType.CHECK_SERVICE_GUARDIAN_ANGEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public Check getCheck(CheckServiceType checkServiceType) {
        int i = AnonymousClass1.$SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType[checkServiceType.ordinal()];
        if (i == 1) {
            return new CheckServiceContract(this.service);
        }
        if (i == 2) {
            return new CheckServiceGuardianAngel(this.service);
        }
        throw new IllegalArgumentException("checkType not valid");
    }
}
