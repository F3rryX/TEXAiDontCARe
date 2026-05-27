package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.ConversionUtils;
import com.texa.carelib.core.utils.internal.Utils;
import java.math.BigInteger;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class GetInterpreterVersionPacketParser {
    public static final boolean D = false;
    private static final BigInteger DEFAULT_INTERPRETER_VERSION = BigInteger.ZERO;
    public static final String TAG = "GetInterpreterVersionPacketParser";

    private GetInterpreterVersionPacketParser() {
    }

    public static BigInteger parse(Message message) {
        if (message.getData() != null) {
            int length = message.getData().length;
            byte[] bArr = new byte[length];
            System.arraycopy(message.getData(), 0, bArr, 0, length);
            Utils.reverse(bArr);
            return parseInterpreterVersion(bArr);
        }
        return DEFAULT_INTERPRETER_VERSION;
    }

    public static BigInteger parseInterpreterVersion(char[] cArr) {
        if (cArr != null) {
            return parseInterpreterVersion(ConversionUtils.toByteArray(cArr));
        }
        return DEFAULT_INTERPRETER_VERSION;
    }

    public static BigInteger parseInterpreterVersion(byte[] bArr) {
        if (bArr == null) {
            return DEFAULT_INTERPRETER_VERSION;
        }
        byte[] bArr2 = new byte[8];
        Arrays.fill(bArr2, (byte) 0);
        System.arraycopy(bArr, 0, bArr2, 8 - bArr.length, Math.min(bArr.length, 8));
        return new BigInteger(1, bArr);
    }
}
