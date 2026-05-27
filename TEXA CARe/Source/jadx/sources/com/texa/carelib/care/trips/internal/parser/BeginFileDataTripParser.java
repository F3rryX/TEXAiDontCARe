package com.texa.carelib.care.trips.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class BeginFileDataTripParser {
    private static final int INDEX_FILE_SIZE = 1;
    private static final int INDEX_FILE_TYPE = 0;

    private BeginFileDataTripParser() {
    }

    public static BeginFileDataTripResponse parse(Message message) {
        if (message == null) {
            return new BeginFileDataTripResponse();
        }
        if (message.getStatus() != 0) {
            return new BeginFileDataTripResponse();
        }
        long unsignedInt = 0;
        if (message.getData() != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            unsignedByte = byteBufferWrap.capacity() >= 1 ? ByteBufferUtils.getUnsignedByte(byteBufferWrap, 0) : (short) 255;
            if (byteBufferWrap.capacity() >= 5) {
                unsignedInt = ByteBufferUtils.getUnsignedInt(byteBufferWrap, 1);
            }
        }
        return new BeginFileDataTripResponse(unsignedByte, (int) unsignedInt);
    }

    public static class BeginFileDataTripResponse {
        private int mFileSize;
        private int mFileType;

        public int getFileType() {
            return this.mFileType;
        }

        public int getFileSize() {
            return this.mFileSize;
        }

        public BeginFileDataTripResponse() {
            this.mFileSize = 0;
            this.mFileType = 255;
        }

        public BeginFileDataTripResponse(int i, int i2) {
            this();
            this.mFileType = i;
            this.mFileSize = i2;
        }
    }
}
