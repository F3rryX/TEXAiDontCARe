package com.texa.carelib.care.vehicletroubles.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class GetSupportedECUPacketParser {
    public static final String TAG = "GetSupportedECUPacketParser";

    private GetSupportedECUPacketParser() {
    }

    public static Set<Long> parse(Message message) {
        if (message.getStatus() != 0) {
            return Collections.emptySet();
        }
        if (message.getData() == null) {
            return Collections.emptySet();
        }
        byte[] data = message.getData();
        if (data == null) {
            CareLog.e(TAG, "Conversion to byte[] is failed.", new Object[0]);
            return Collections.emptySet();
        }
        if (data.length % 4 != 0) {
            CareLog.e(TAG, "Invalid content length.", new Object[0]);
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(data);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        while (byteBufferWrap.hasRemaining()) {
            hashSet.add(Long.valueOf(ByteBufferUtils.getUnsignedInt(byteBufferWrap)));
        }
        return hashSet;
    }
}
