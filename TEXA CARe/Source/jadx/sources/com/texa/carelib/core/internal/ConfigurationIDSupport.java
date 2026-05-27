package com.texa.carelib.core.internal;

import com.texa.carelib.core.utils.internal.ConversionUtils;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationIDSupport {
    public static final BigInteger DEFAULT_CONFIGURATION_ID = new BigInteger(1, new byte[]{-1, -1, -1, -1, -1, -1, -1, -1});

    public static byte[] toByteArray(BigInteger bigInteger) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putLong(bigInteger.longValue());
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    public static BigInteger fromCharArray(char[] cArr) {
        if (cArr == null) {
            return BigInteger.ZERO;
        }
        return fromByteArray(ConversionUtils.toByteArray(cArr));
    }

    public static BigInteger fromByteArray(byte[] bArr) {
        if (bArr == null) {
            return BigInteger.ZERO;
        }
        if (bArr.length == 8) {
            return new BigInteger(1, bArr);
        }
        return BigInteger.ZERO;
    }

    public static boolean isSet(BigInteger bigInteger) {
        return bigInteger == null || !DEFAULT_CONFIGURATION_ID.equals(bigInteger);
    }
}
