package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class GetSupportedCommandsPacketParser {
    private GetSupportedCommandsPacketParser() {
    }

    public static Set<Integer> parse(Message message) {
        HashSet hashSet = new HashSet();
        if (message.getStatus() == 0 && message.getData() != null) {
            for (byte b : message.getData()) {
                hashSet.add(Integer.valueOf(b & 255));
            }
        }
        return hashSet;
    }
}
