package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public final class BeginFileDownloadPacketParser {
    public static final String TAG = "BeginFileDownloadPacketParser";

    private BeginFileDownloadPacketParser() {
    }

    public static Response parse(Message message) {
        if (message == null) {
            return new Response();
        }
        Response response = new Response();
        if (message.getData() != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            if (byteBufferWrap.remaining() >= 1) {
                response.setFileType(ByteBufferUtils.getUnsignedByte(byteBufferWrap));
            }
            if (byteBufferWrap.remaining() >= 4) {
                response.setFileSize((int) ByteBufferUtils.getUnsignedInt(byteBufferWrap));
            }
        }
        return response;
    }

    public static class Response {
        private long mFileSize = 0;
        private int mFileType = 255;

        public int getFileType() {
            return this.mFileType;
        }

        Response setFileType(int i) {
            this.mFileType = i;
            return this;
        }

        public long getFileSize() {
            return this.mFileSize;
        }

        Response setFileSize(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("Size cannot be minor than zero.");
            }
            this.mFileSize = j;
            return this;
        }
    }
}
