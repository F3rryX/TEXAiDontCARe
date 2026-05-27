package com.texa.carelib.care.impacts.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class BeginFileDataCrashParser {
    private static final int INDEX_FILE_SIZE = 1;
    private static final int INDEX_FILE_TYPE = 0;

    private BeginFileDataCrashParser() {
    }

    public static BeginFileDataCrashResponse parse(Message message) {
        if (message == null) {
            return new BeginFileDataCrashResponse();
        }
        if (message.getStatus() != 0) {
            return new BeginFileDataCrashResponse();
        }
        int unsignedInt = 0;
        if (message.getData() != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            unsignedByte = byteBufferWrap.remaining() > 1 ? ByteBufferUtils.getUnsignedByte(byteBufferWrap) : (short) 255;
            byteBufferWrap.position(1);
            if (byteBufferWrap.remaining() >= 4) {
                unsignedInt = (int) ByteBufferUtils.getUnsignedInt(byteBufferWrap);
            }
        }
        return new BeginFileDataCrashResponse(unsignedByte, unsignedInt);
    }

    public static class BeginFileDataCrashResponse {
        private int mFileSize;
        private int mFileType;

        public int getFileType() {
            return this.mFileType;
        }

        public BeginFileDataCrashResponse setFileType(int i) {
            this.mFileType = i;
            return this;
        }

        public int getFileSize() {
            return this.mFileSize;
        }

        public BeginFileDataCrashResponse setFileSize(int i) {
            this.mFileSize = i;
            return this;
        }

        public BeginFileDataCrashResponse() {
            this.mFileSize = 0;
            this.mFileType = 255;
        }

        public BeginFileDataCrashResponse(int i, int i2) {
            this();
            this.mFileType = i;
            this.mFileSize = i2;
        }
    }
}
