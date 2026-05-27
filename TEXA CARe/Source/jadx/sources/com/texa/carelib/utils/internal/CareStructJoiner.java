package com.texa.carelib.utils.internal;

import com.texa.carelib.core.utils.CareStruct;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class CareStructJoiner {
    public static byte[] join(CareStruct... careStructArr) {
        int length = 0;
        for (CareStruct careStruct : careStructArr) {
            if (careStruct != null && careStruct.getRawData() != null) {
                length += careStruct.getRawData().length;
            }
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        for (CareStruct careStruct2 : careStructArr) {
            if (careStruct2 != null && careStruct2.getRawData() != null) {
                byteBufferAllocate.put(careStruct2.getRawData());
            }
        }
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }
}
