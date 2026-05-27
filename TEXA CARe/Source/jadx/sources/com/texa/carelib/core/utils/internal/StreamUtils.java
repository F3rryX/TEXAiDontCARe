package com.texa.carelib.core.utils.internal;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class StreamUtils {
    public static String getASCIIContentFromStream(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[1024];
        int i = 1;
        while (i > 0) {
            i = inputStream.read(bArr);
            if (i > 0) {
                sb.append(new String(bArr, 0, i));
            }
        }
        return sb.toString();
    }
}
