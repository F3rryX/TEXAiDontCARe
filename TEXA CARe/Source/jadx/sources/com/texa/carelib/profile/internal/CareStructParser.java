package com.texa.carelib.profile.internal;

import androidx.core.view.ViewCompat;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.core.utils.internal.ConversionUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Calendar;
import java.util.Date;
import org.spongycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CareStructParser<T> {
    public abstract T parse(byte[] bArr);

    protected Byte getSignedByte(byte[] bArr, int i) {
        if (bArr.length < i + 1) {
            return null;
        }
        return Byte.valueOf(bArr[i]);
    }

    protected Byte getSignedByte(char[] cArr, int i) {
        if (cArr.length < i + 1) {
            return null;
        }
        return Byte.valueOf((byte) cArr[i]);
    }

    protected Short getUnsignedByte(byte[] bArr, int i) {
        if (bArr.length < i + 1) {
            return null;
        }
        return Short.valueOf((short) (bArr[i] & 255));
    }

    protected Short getUnsignedByte(char[] cArr, int i) {
        if (cArr.length < i + 1) {
            return null;
        }
        return Short.valueOf((short) (cArr[i] & 255));
    }

    protected Short getSignedChar(byte[] bArr, int i) {
        if (bArr.length < i + 2) {
            return null;
        }
        return Short.valueOf((short) ((bArr[i] & 255) + 0 + ((bArr[i + 1] << 8) & 65280)));
    }

    protected Short getSignedChar(char[] cArr, int i) {
        if (cArr.length < i + 2) {
            return null;
        }
        return Short.valueOf((short) ((cArr[i] & 255) + 0 + ((cArr[i + 1] << '\b') & 65280)));
    }

    protected Integer getUnsignedChar(byte[] bArr, int i) {
        if (bArr.length < i + 2) {
            return null;
        }
        return Integer.valueOf((bArr[i] & 255) + 0 + ((bArr[i + 1] << 8) & 65280));
    }

    protected Integer getUnsignedChar(char[] cArr, int i) {
        if (cArr.length < i + 2) {
            return null;
        }
        return Integer.valueOf((cArr[i] & 255) + 0 + ((cArr[i + 1] << '\b') & 65280));
    }

    protected Integer getSignedInt(byte[] bArr, int i) {
        if (bArr.length < i + 4) {
            return null;
        }
        return Integer.valueOf((bArr[i] & 255) + 0 + ((bArr[i + 1] << 8) & 65280) + ((bArr[i + 2] << Tnaf.POW_2_WIDTH) & 16711680) + ((bArr[i + 3] << 24) & ViewCompat.MEASURED_STATE_MASK));
    }

    protected Integer getSignedInt(char[] cArr, int i) {
        if (cArr.length < i + 4) {
            return null;
        }
        return Integer.valueOf((cArr[i] & 255) + 0 + ((cArr[i + 1] << '\b') & 65280) + ((cArr[i + 2] << 16) & 16711680) + ((cArr[i + 3] << 24) & ViewCompat.MEASURED_STATE_MASK));
    }

    protected Long getUnsignedInt(byte[] bArr, int i) {
        if (bArr.length < i + 4) {
            return null;
        }
        return Long.valueOf(ByteBufferUtils.getUnsignedInt(ByteBuffer.wrap(bArr, i, 4).order(ByteOrder.LITTLE_ENDIAN), i));
    }

    protected Long getUnsignedInt(char[] cArr, int i) {
        byte[] byteArray = ConversionUtils.toByteArray(i, cArr.length - i, cArr);
        if (byteArray == null) {
            return null;
        }
        return getUnsignedInt(byteArray, i);
    }

    protected Long getSignedLong(byte[] bArr, int i) {
        if (bArr.length < i + 8) {
            return null;
        }
        return Long.valueOf(ByteBuffer.wrap(bArr, i, 8).order(ByteOrder.LITTLE_ENDIAN).getLong());
    }

    protected Float getFloat(byte[] bArr, int i) {
        if (bArr.length < i + 4) {
            return null;
        }
        return Float.valueOf(ByteBuffer.wrap(bArr, i, 4).order(ByteOrder.LITTLE_ENDIAN).getFloat());
    }

    protected Float getFloat(char[] cArr, int i) {
        byte[] byteArray = ConversionUtils.toByteArray(cArr);
        if (byteArray == null) {
            return null;
        }
        return getFloat(byteArray, i);
    }

    public Date getTimestamp(byte[] bArr, int i) {
        Long unsignedInt = getUnsignedInt(bArr, i);
        if (unsignedInt == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(unsignedInt.longValue() * 1000);
        if (calendar.get(1) < 2015) {
            return null;
        }
        return calendar.getTime();
    }

    public Date getTimestamp(char[] cArr, int i) {
        Long unsignedInt = getUnsignedInt(cArr, i);
        if (unsignedInt == null) {
            return null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(unsignedInt.longValue() * 1000);
        if (calendar.get(1) < 2015) {
            return null;
        }
        return calendar.getTime();
    }
}
