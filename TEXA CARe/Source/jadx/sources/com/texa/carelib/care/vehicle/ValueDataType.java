package com.texa.carelib.care.vehicle;

import com.texa.carelib.core.logging.CareLog;
import org.spongycastle.bcpg.SecretKeyPacket;

/* JADX INFO: loaded from: classes2.dex */
public enum ValueDataType {
    UNDEF(255),
    NOT_READ(SecretKeyPacket.USAGE_SHA1),
    NUMERIC(0),
    ENUM(1),
    STRING(2),
    DTC(3),
    DATETIME(4),
    RAW_DATA(5);

    private static final String TAG = "ValueDataType";
    private final int mValue;

    ValueDataType(int i) {
        this.mValue = i;
    }

    public int getValue() {
        return this.mValue;
    }

    public static ValueDataType fromInt(int i) {
        for (ValueDataType valueDataType : values()) {
            if (valueDataType.getValue() == i) {
                return valueDataType;
            }
        }
        CareLog.wtf(TAG, "Invalid parameter type: %d", Integer.valueOf(i));
        return UNDEF;
    }
}
