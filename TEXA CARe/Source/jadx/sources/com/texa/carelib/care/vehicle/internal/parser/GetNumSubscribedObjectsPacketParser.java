package com.texa.carelib.care.vehicle.internal.parser;

import com.texa.carelib.communication.Message;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class GetNumSubscribedObjectsPacketParser {
    public static final String TAG = "GetNumSubscribedObjectsPacketParser";

    private GetNumSubscribedObjectsPacketParser() {
    }

    public static Response parse(Message message) {
        if (message.getStatus() != 0) {
            return new Response(null, null);
        }
        if (message.getData() == null) {
            return new Response(null, null);
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return new Response(byteBufferWrap.remaining() >= 4 ? Integer.valueOf(byteBufferWrap.getInt()) : null, byteBufferWrap.remaining() >= 4 ? Integer.valueOf(byteBufferWrap.getInt()) : null);
    }

    public static class Response {
        private Integer mActiveSubscriptionCount;
        private Integer mMaximumSubscriptionCount;

        public Response(Integer num, Integer num2) {
            this.mActiveSubscriptionCount = num;
            this.mMaximumSubscriptionCount = num2;
        }

        public Integer getActiveSubscriptionCount() {
            return this.mActiveSubscriptionCount;
        }

        public Integer getMaximumSubscriptionCount() {
            return this.mMaximumSubscriptionCount;
        }
    }
}
