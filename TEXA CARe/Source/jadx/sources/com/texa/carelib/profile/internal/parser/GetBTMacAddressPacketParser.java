package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public final class GetBTMacAddressPacketParser {
    private static final String TAG = "GetBTMacAddressPacketParser";

    public static String parse(Message message) {
        if (message.getStatus() != 0 || message.getData() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder((message.getData().length * 2) - 1);
        for (int length = message.getData().length - 1; length >= 0; length--) {
            sb.append(String.format("%02x", Integer.valueOf(message.getData()[length] & 255)));
            sb.append(":");
        }
        return sb.toString().substring(0, Math.max(0, sb.length() - 1));
    }
}
