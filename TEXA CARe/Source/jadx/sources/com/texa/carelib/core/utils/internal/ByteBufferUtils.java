package com.texa.carelib.core.utils.internal;

import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.UShort;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public class ByteBufferUtils {
    public static short getUnsignedByte(ByteBuffer byteBuffer) {
        return (short) (byteBuffer.get() & 255);
    }

    public static boolean putUnsignedByte(ByteBuffer byteBuffer, Integer num) {
        if (num == null) {
            return false;
        }
        byteBuffer.put((byte) (num.intValue() & 255));
        return true;
    }

    public static short getUnsignedByte(ByteBuffer byteBuffer, int i) {
        return (short) (byteBuffer.get(i) & 255);
    }

    public static boolean putUnsignedByte(ByteBuffer byteBuffer, int i, Integer num) {
        if (num == null) {
            return false;
        }
        byteBuffer.put(i, (byte) (num.intValue() & 255));
        return true;
    }

    public static int getUnsignedShort(ByteBuffer byteBuffer) {
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    public static boolean putUnsignedShort(ByteBuffer byteBuffer, Integer num) {
        if (num == null) {
            return false;
        }
        byteBuffer.putShort((short) (num.intValue() & 65535));
        return true;
    }

    public static int getUnsignedShort(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getShort(i) & UShort.MAX_VALUE;
    }

    public static boolean putUnsignedShort(ByteBuffer byteBuffer, int i, Integer num) {
        if (num == null) {
            return false;
        }
        byteBuffer.putShort(i, (short) (num.intValue() & 65535));
        return true;
    }

    public static long getUnsignedInt(ByteBuffer byteBuffer) {
        return ((long) byteBuffer.getInt()) & BodyPartID.bodyIdMax;
    }

    public static boolean putUnsignedInt(ByteBuffer byteBuffer, Long l) {
        if (l == null) {
            return false;
        }
        byteBuffer.putInt((int) (l.longValue() & BodyPartID.bodyIdMax));
        return true;
    }

    public static long getUnsignedInt(ByteBuffer byteBuffer, int i) {
        return ((long) byteBuffer.getInt(i)) & BodyPartID.bodyIdMax;
    }

    public static boolean putUnsignedInt(ByteBuffer byteBuffer, int i, Long l) {
        if (l == null) {
            return false;
        }
        byteBuffer.putInt(i, (int) (l.longValue() & BodyPartID.bodyIdMax));
        return true;
    }

    public static BigInteger getUnsignedLong(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[8];
        byteBuffer.get(bArr);
        Utils.reverse(bArr);
        return new BigInteger(1, bArr);
    }

    public static BigInteger getUnsignedLong(ByteBuffer byteBuffer, int i) {
        byte[] bArr = new byte[8];
        byteBuffer.position(i);
        byteBuffer.get(bArr);
        Utils.reverse(bArr);
        return new BigInteger(1, bArr);
    }

    public static Date getTimestamp(TimeUnit timeUnit, ByteBuffer byteBuffer) {
        return getTimeStamp(getUnsignedInt(byteBuffer), timeUnit);
    }

    public static Date getTimestamp(TimeUnit timeUnit, ByteBuffer byteBuffer, int i) {
        return getTimeStamp(getUnsignedInt(byteBuffer, i), timeUnit);
    }

    private static Date getTimeStamp(long j, TimeUnit timeUnit) {
        long millis = timeUnit.toMillis(j);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(millis);
        if (calendar.get(1) < 2015) {
            return null;
        }
        return calendar.getTime();
    }

    public static String getString(ByteBuffer byteBuffer) {
        return getString(byteBuffer, byteBuffer.position());
    }

    public static String getString(ByteBuffer byteBuffer, int i) {
        if (i >= byteBuffer.capacity()) {
            return "";
        }
        byteBuffer.position(i);
        while (byteBuffer.position() < byteBuffer.capacity() && byteBuffer.get() != 0) {
        }
        int iPosition = (byteBuffer.position() - i) - 1;
        if (iPosition <= 0) {
            return "";
        }
        byte[] bArr = new byte[iPosition];
        byteBuffer.position(i);
        byteBuffer.get(bArr);
        byteBuffer.get();
        return new String(bArr);
    }
}
