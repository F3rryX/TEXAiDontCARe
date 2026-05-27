package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public final class GetSerialNumberPacketParser {
    public static String parse(Message message) {
        if (message.getStatus() != 0 || message.getData() == null) {
            return null;
        }
        return new String(message.getData()).trim();
    }
}
