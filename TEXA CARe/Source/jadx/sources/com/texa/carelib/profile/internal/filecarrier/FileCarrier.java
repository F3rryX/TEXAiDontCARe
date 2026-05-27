package com.texa.carelib.profile.internal.filecarrier;

import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface FileCarrier {
    void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent);

    boolean receiveFileWithType(int i, int i2);

    boolean receiveFileWithType(int i, String str);

    void sendFile(InputStream inputStream, int i, SendActionType sendActionType, String str) throws CareLibException;

    void setFileCarrierListener(FileCarrierListener fileCarrierListener);

    public enum SendActionType {
        Store(0),
        Check(1),
        Undefined(255);

        private final int mValue;

        public int value() {
            return this.mValue;
        }

        SendActionType(int i) {
            this.mValue = i;
        }

        public static SendActionType fromInt(int i) {
            for (SendActionType sendActionType : values()) {
                if (i == sendActionType.value()) {
                    return sendActionType;
                }
            }
            return Undefined;
        }
    }
}
