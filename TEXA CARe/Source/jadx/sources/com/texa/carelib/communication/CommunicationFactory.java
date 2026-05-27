package com.texa.carelib.communication;

import com.texa.carelib.communication.internal.MockCommunication;
import com.texa.carelib.communication.internal.serial.BluetoothCommunicationBuilder;

/* JADX INFO: loaded from: classes2.dex */
public class CommunicationFactory {

    /* JADX INFO: renamed from: com.texa.carelib.communication.CommunicationFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationType;

        static {
            int[] iArr = new int[CommunicationType.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationType = iArr;
            try {
                iArr[CommunicationType.BLUETOOTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationType[CommunicationType.MOCK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Communication createCommunication(CommunicationType communicationType, CommunicationDelegate communicationDelegate) {
        Communication communicationBuild;
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationType[communicationType.ordinal()];
        if (i == 1) {
            communicationBuild = new BluetoothCommunicationBuilder(communicationDelegate.getApplicationContext()).build();
        } else if (i == 2) {
            communicationBuild = new MockCommunication();
        } else {
            throw new IllegalArgumentException("Invalid communication type.");
        }
        communicationBuild.setCommunicationDelegate(communicationDelegate);
        return communicationBuild;
    }
}
