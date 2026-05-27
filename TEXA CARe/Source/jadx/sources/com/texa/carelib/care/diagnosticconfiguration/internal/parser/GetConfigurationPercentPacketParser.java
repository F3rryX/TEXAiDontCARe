package com.texa.carelib.care.diagnosticconfiguration.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class GetConfigurationPercentPacketParser {
    private GetConfigurationPercentPacketParser() {
    }

    public static Integer parse(Message message) {
        if (message != null && message.getStatus() == 0 && Utils.isNotEmpty(message.getData())) {
            return Integer.valueOf(message.getData()[0] & 255);
        }
        return null;
    }
}
