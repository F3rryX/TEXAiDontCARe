package com.texa.carelib.care.vehicle.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class GetAvailableParametersPacketParser {
    public static final String TAG = "GetAvailableParametersPacketParser";

    private GetAvailableParametersPacketParser() {
    }

    public static Set<Long> parse(Message message) {
        if (message == null) {
            return Collections.emptySet();
        }
        if (message.getStatus() != 0) {
            return Collections.emptySet();
        }
        if (message.getData() == null) {
            return Collections.emptySet();
        }
        if (message.getData() == null) {
            return Collections.emptySet();
        }
        if (message.getData().length % 4 != 0) {
            return Collections.emptySet();
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        HashSet hashSet = new HashSet();
        while (byteBufferWrap.remaining() > 0) {
            hashSet.add(Long.valueOf(ByteBufferUtils.getUnsignedInt(byteBufferWrap)));
        }
        return hashSet;
    }
}
