package com.texa.carelib.profile.internal.parser;

import android.util.SparseArray;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ConversionUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class GetWorkingParametersParser {
    private static final String CHARSET_ISO_8859_1 = "ISO-8859-1";
    public static final String TAG = "GetWorkingParametersParser";

    public static GetWorkingParametersResponse parse(Message message) {
        if (message != null && message.getStatus() == 0 && message.getData() != null) {
            return parse(message.getData());
        }
        return new GetWorkingParametersResponse();
    }

    static GetWorkingParametersResponse parse(char[] cArr) {
        byte[] byteArray = ConversionUtils.toByteArray(cArr);
        if (byteArray == null) {
            return new GetWorkingParametersResponse();
        }
        return parse(byteArray);
    }

    static GetWorkingParametersResponse parse(byte[] bArr) {
        SparseArray sparseArray = new SparseArray();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        while (byteBufferWrap.position() <= bArr.length - 5) {
            sparseArray.put(byteBufferWrap.get(), Float.valueOf(byteBufferWrap.getFloat()));
        }
        return new GetWorkingParametersResponse(sparseArray);
    }

    public static class GetWorkingParametersResponse {
        private final SparseArray<Float> mData;

        public SparseArray<Float> getData() {
            return this.mData;
        }

        GetWorkingParametersResponse() {
            this.mData = new SparseArray<>();
        }

        GetWorkingParametersResponse(SparseArray<Float> sparseArray) {
            this.mData = sparseArray;
        }
    }
}
