package com.texa.carelib.core.utils;

import com.texa.carelib.core.utils.internal.StringUtils;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class UUIDHelper {
    public static UUID fromByteArray(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length != 16) {
            throw new IllegalArgumentException("Invalid array length. Array must be 16 bytes long.");
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        return new UUID(byteBufferWrap.getLong(), byteBufferWrap.getLong());
    }

    public static byte[] toByteArray(UUID uuid) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[16]);
        byteBufferWrap.putLong(uuid.getMostSignificantBits());
        byteBufferWrap.putLong(uuid.getLeastSignificantBits());
        return byteBufferWrap.array();
    }

    public static UUID fromString(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        String strTrim = str.trim().toLowerCase(Locale.US).trim();
        Pattern patternCompile = Pattern.compile("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}");
        if (patternCompile.matcher(strTrim).matches()) {
            return UUID.fromString(strTrim);
        }
        String strReplace = strTrim.replace("-", "").replace("{", "").replace("}", "");
        if (strReplace.length() != 32) {
            return null;
        }
        String strReplaceAll = strReplace.replaceAll("([0-9a-f]{8})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{4})([0-9a-f]{12})", "$1-$2-$3-$4-$5");
        if (patternCompile.matcher(strReplaceAll).matches()) {
            return UUID.fromString(strReplaceAll);
        }
        return null;
    }

    public static void toByteArray(UUID uuid, byte[] bArr) {
        byte[] byteArray = toByteArray(uuid);
        System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
    }
}
