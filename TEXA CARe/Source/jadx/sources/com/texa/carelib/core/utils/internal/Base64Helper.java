package com.texa.carelib.core.utils.internal;

import android.util.Base64;
import android.util.Log;
import com.texa.carelib.core.logging.CareLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public final class Base64Helper {
    private static final String DEFAULT_CHARSET = "ISO-8859-1";
    private static final String TAG = "Base64Helper";

    public static String encode(String str) {
        try {
            return encode(str.getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, e, "Encoding not supported", new Object[0]);
            return null;
        }
    }

    public static String encode(byte[] bArr) {
        return encode(bArr, "ISO-8859-1");
    }

    public static String encode(String str, String str2) {
        try {
            return encode(str.getBytes("ISO-8859-1"), str2);
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, e, "Encoding not supported", new Object[0]);
            return null;
        }
    }

    public static String encode(byte[] bArr, String str) {
        try {
            return new String(Base64.encode(bArr, 2), str);
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, e, "Encoding not supported", new Object[0]);
            return null;
        }
    }

    public static String decode(String str) {
        return decode(str, "ISO-8859-1");
    }

    public static String decode(String str, String str2) {
        try {
            return new String(Base64.decode(str, 0), str2);
        } catch (UnsupportedEncodingException e) {
            CareLog.e(TAG, e, "Encoding not supported", new Object[0]);
            return null;
        }
    }

    public static String encodeFileToBase64Binary(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[(int) file.length()];
            if (fileInputStream.read(bArr) > 0) {
                return Base64.encodeToString(bArr, 2);
            }
            return null;
        } catch (IOException e) {
            Log.e(TAG, "encodeFileToBase64Binary error.", e);
            return null;
        }
    }
}
