package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class GetVINPacketParser {
    private static final List<String> INVALID_VIN_CODES;

    static {
        ArrayList arrayList = new ArrayList();
        INVALID_VIN_CODES = arrayList;
        arrayList.add("00000000000000000");
    }

    private GetVINPacketParser() {
    }

    public static String parse(Message message) {
        if (message != null && message.getStatus() == 0 && message.getData() != null && message.getData().length != 0) {
            if (isTVIN(message.getData())) {
                return new String(message.getData()).trim();
            }
            if (message.getData()[0] != 0 && 255 != (message.getData()[0] & 255)) {
                String strTrim = new String(message.getData()).trim();
                if (INVALID_VIN_CODES.contains(strTrim)) {
                    return null;
                }
                return strTrim;
            }
        }
        return null;
    }

    public static boolean isTVIN(byte[] bArr) {
        if (bArr.length >= 4) {
            int length = bArr.length;
            if (42 == (bArr[0] & 255) && 42 == (bArr[1] & 255) && (bArr[length - 1] & 255) == 0 && 42 == (bArr[length - 2] & 255) && 42 == (bArr[length - 3] & 255)) {
                return true;
            }
        }
        return false;
    }
}
