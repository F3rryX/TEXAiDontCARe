package com.texa.carelib.care.datamanagerconfiguration.internal.parser;

import android.util.SparseArray;
import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public class GetDataManagerParametersParser {
    private static final int RELATIVE_INDEX_ID = 0;
    private static final int RELATIVE_INDEX_PAYLOAD = 2;
    private static final int RELATIVE_INDEX_SIZE = 1;

    public static GetDataManagerParametersResponse parse(Message message) {
        if (message == null) {
            return new GetDataManagerParametersResponse();
        }
        if (message.getStatus() != 0) {
            return new GetDataManagerParametersResponse();
        }
        SparseArray sparseArray = new SparseArray();
        byte[] data = message.getData();
        if (data != null) {
            int i = 0;
            while (i <= data.length - 3) {
                int i2 = data[i + 0] & 255;
                int i3 = i + 1;
                int i4 = data[i3] & 255;
                byte[] bArr = new byte[i4];
                System.arraycopy(data, i + 2, bArr, 0, Math.min(i4, data.length - i3));
                sparseArray.put(i2, bArr);
                i += i4 + 2;
            }
        }
        return new GetDataManagerParametersResponse(sparseArray);
    }

    public static class GetDataManagerParametersResponse {
        private final SparseArray<byte[]> mData;

        public SparseArray<byte[]> getData() {
            return this.mData;
        }

        public GetDataManagerParametersResponse() {
            this.mData = new SparseArray<>();
        }

        public GetDataManagerParametersResponse(SparseArray<byte[]> sparseArray) {
            this.mData = sparseArray;
        }
    }
}
