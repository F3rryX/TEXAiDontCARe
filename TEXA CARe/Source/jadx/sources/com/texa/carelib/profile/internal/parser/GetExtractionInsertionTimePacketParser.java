package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class GetExtractionInsertionTimePacketParser {
    public static GetExtractionInsertionTimeResponse parse(Message message) {
        if (message.getStatus() != 0) {
            return new GetExtractionInsertionTimeResponse();
        }
        byte[] data = message.getData();
        GetExtractionInsertionTimeResponse getExtractionInsertionTimeResponse = new GetExtractionInsertionTimeResponse();
        if (data != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(data);
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            getExtractionInsertionTimeResponse.setUnPlugDate(ByteBufferUtils.getTimestamp(TimeUnit.SECONDS, byteBufferWrap)).setPlugDate(ByteBufferUtils.getTimestamp(TimeUnit.SECONDS, byteBufferWrap)).setCurrentDate(ByteBufferUtils.getTimestamp(TimeUnit.SECONDS, byteBufferWrap));
        }
        return getExtractionInsertionTimeResponse;
    }

    private static Date getUnPlugDate(char[] cArr) {
        long j = 0;
        if (cArr != null && cArr.length >= 4) {
            j = 1000 * ((((long) cArr[0]) & 255) + 0 + ((((long) cArr[1]) << 8) & 65280) + ((((long) cArr[2]) << 16) & 16711680) + ((((long) cArr[3]) << 24) & (-16777216)));
        }
        return new Date(j);
    }

    private static Date getPlugDate(char[] cArr) {
        long j = 0;
        if (cArr != null && cArr.length >= 8) {
            j = 1000 * ((((long) cArr[4]) & 255) + 0 + ((((long) cArr[5]) << 8) & 65280) + ((((long) cArr[6]) << 16) & 16711680) + ((((long) cArr[7]) << 24) & (-16777216)));
        }
        return new Date(j);
    }

    private static Date getCurrentDate(char[] cArr) {
        long j = 0;
        if (cArr != null && cArr.length >= 12) {
            j = 1000 * ((((long) cArr[8]) & 255) + 0 + ((((long) cArr[9]) << 8) & 65280) + ((((long) cArr[10]) << 16) & 16711680) + ((((long) cArr[11]) << 24) & (-16777216)));
        }
        return new Date(j);
    }

    public static class GetExtractionInsertionTimeResponse {
        private Date mCurrentDate;
        private Date mPlugDate;
        private Date mUnPlugDate;

        public Date getCurrentDate() {
            return this.mCurrentDate;
        }

        public GetExtractionInsertionTimeResponse setCurrentDate(Date date) {
            this.mCurrentDate = date;
            return this;
        }

        public Date getUnPlugDate() {
            return this.mUnPlugDate;
        }

        public GetExtractionInsertionTimeResponse setUnPlugDate(Date date) {
            this.mUnPlugDate = date;
            return this;
        }

        public Date getPlugDate() {
            return this.mPlugDate;
        }

        public GetExtractionInsertionTimeResponse setPlugDate(Date date) {
            this.mPlugDate = date;
            return this;
        }
    }
}
