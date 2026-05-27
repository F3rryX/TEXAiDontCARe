package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public final class GetDiagnosisModePacketParser {
    private GetDiagnosisModePacketParser() {
    }

    public static int parse(Message message) {
        if (message == null || message.getStatus() != 0 || message.getData() == null) {
            return 0;
        }
        return message.getData()[0] & 255;
    }
}
