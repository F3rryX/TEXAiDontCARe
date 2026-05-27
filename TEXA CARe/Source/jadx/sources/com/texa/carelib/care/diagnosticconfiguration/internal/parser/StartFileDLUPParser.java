package com.texa.carelib.care.diagnosticconfiguration.internal.parser;

import com.texa.carelib.core.utils.internal.ConversionUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class StartFileDLUPParser {
    public static final int FILE_INFO_SIZE = 5;
    public static final int FILE_LENGTH_SIZE = 4;
    public static final int FILE_TYPE_SIZE = 1;
    public static final String TAG = "StartFileDLUPParser";

    public int getFileType(char[] cArr) {
        return getFileType(ConversionUtils.toByteArray(cArr));
    }

    public int getFileType(byte[] bArr) {
        if (bArr == null || bArr.length < 5) {
            return 255;
        }
        return bArr[0] & 255;
    }

    public int getFileLength(char[] cArr) {
        return getFileLength(ConversionUtils.toByteArray(cArr));
    }

    public int getFileLength(byte[] bArr) {
        if (bArr == null || bArr.length < 5) {
            return 0;
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.position(1);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getInt();
    }
}
