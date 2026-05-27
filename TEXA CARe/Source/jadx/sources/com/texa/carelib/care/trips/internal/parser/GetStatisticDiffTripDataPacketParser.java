package com.texa.carelib.care.trips.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class GetStatisticDiffTripDataPacketParser {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static GetStatisticDiffTripDataResponse parse(Message message) {
        byte[] bArr;
        Integer numValueOf = null;
        if (message == null || message.getStatus() != 0 || message.getData() == null || message.getData().length < 1 || message.getData() == null) {
            bArr = null;
        } else {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
            if (byteBufferWrap.capacity() > 0) {
                numValueOf = Integer.valueOf(ByteBufferUtils.getUnsignedShort(byteBufferWrap));
                bArr = new byte[byteBufferWrap.array().length - 2];
                byteBufferWrap.get(bArr);
            }
        }
        return new GetStatisticDiffTripDataResponse(numValueOf, bArr);
    }

    public static class GetStatisticDiffTripDataResponse {
        private byte[] mData;
        private Integer mProgressiveIndex;

        GetStatisticDiffTripDataResponse(Integer num, byte[] bArr) {
            this.mProgressiveIndex = num;
            this.mData = bArr;
        }

        public Integer getProgressiveIndex() {
            return this.mProgressiveIndex;
        }

        public byte[] getData() {
            return this.mData;
        }
    }
}
