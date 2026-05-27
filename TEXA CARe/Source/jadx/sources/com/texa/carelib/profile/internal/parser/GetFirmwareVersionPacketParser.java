package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.internal.VersionParser;

/* JADX INFO: loaded from: classes2.dex */
public final class GetFirmwareVersionPacketParser {
    private static final boolean D = false;
    public static final String TAG = "GetFirmwareVersionPacketParser";

    public Version parse(Message message) {
        if (message.getStatus() == 0 && message.getData() != null) {
            return VersionParser.parse(message.getData());
        }
        return null;
    }
}
