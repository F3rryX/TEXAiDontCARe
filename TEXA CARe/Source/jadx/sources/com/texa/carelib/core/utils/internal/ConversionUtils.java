package com.texa.carelib.core.utils.internal;

import com.texa.carelib.core.logging.CareLog;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class ConversionUtils {
    private static final String CHARSET_ISO_8859_1 = "ISO-8859-1";
    public static final String TAG = "ConversionUtils";

    public static byte[] toByteArray(char... cArr) {
        if (cArr == null) {
            return null;
        }
        try {
            return new String(cArr).getBytes("ISO-8859-1");
        } catch (Exception e) {
            CareLog.e(TAG, e, "Generic error.", new Object[0]);
            return null;
        }
    }

    public static byte[] toByteArray(int i, int i2, char... cArr) {
        if (cArr == null) {
            return null;
        }
        try {
            return new String(cArr, i, i2).getBytes("ISO-8859-1");
        } catch (Exception e) {
            CareLog.e(TAG, e, "Generic error.", new Object[0]);
            return null;
        }
    }

    public static byte[] toByteArray(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, e, "Generic conversion error.", new Object[0]);
            return null;
        }
    }

    public static char[] toCharArray(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }
}
