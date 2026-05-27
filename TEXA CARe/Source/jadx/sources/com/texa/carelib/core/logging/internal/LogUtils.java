package com.texa.carelib.core.logging.internal;

import com.texa.carelib.core.utils.internal.Hex;
import com.texa.carelib.core.utils.internal.Utils;
import java.nio.CharBuffer;
import java.util.Map;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public class LogUtils {
    private static final String HEX_FORMAT = "%02X-";

    public static String dataToString(Map<?, ?> map) {
        if (Utils.isEmpty(map)) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : map.keySet()) {
            sb.append("[");
            sb.append(obj.toString());
            sb.append(":");
            if (map.get(obj) != null) {
                sb.append(map.get(obj).toString());
            } else {
                sb.append("$null$");
            }
            sb.append("],");
        }
        String strTrim = sb.toString().trim();
        return strTrim.length() > 0 ? strTrim.substring(0, strTrim.length() - 1) : strTrim;
    }

    public static String dataToString(char[] cArr) {
        return dataToString(cArr, cArr != null ? cArr.length : 0);
    }

    public static String dataToString(char[] cArr, int i) {
        if (cArr == null) {
            return "(null)";
        }
        if (cArr.length == 0) {
            return "(empty)";
        }
        StringBuilder sb = new StringBuilder(i * 3);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(Hex.valueOf(cArr[i2]));
        }
        return sb.toString();
    }

    public static String dataToString(byte[] bArr) {
        return dataToString(bArr, bArr != null ? bArr.length : 0);
    }

    public static String dataToString(byte[] bArr, int i) {
        if (bArr == null) {
            return "(null)";
        }
        if (i <= 0) {
            return "(empty)";
        }
        StringBuilder sb = new StringBuilder(i * 3);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(Hex.valueOf(bArr[i2]));
        }
        return sb.toString();
    }

    public static String dataToString(CharBuffer charBuffer) {
        if (charBuffer == null) {
            return "(null)";
        }
        int iPosition = charBuffer.position();
        if (iPosition == 0) {
            return "(empty)";
        }
        char[] cArr = new char[iPosition];
        charBuffer.position(0);
        charBuffer.get(cArr);
        charBuffer.position(iPosition);
        return dataToString(cArr);
    }
}
