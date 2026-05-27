package com.texa.carelib.care.vehicletroubles;

/* JADX INFO: loaded from: classes2.dex */
public enum DTCStatus {
    UndefinedOBD(22),
    Undefined(0),
    Active(1),
    Stored(2),
    Pending(4),
    Permanent(5),
    Unsupported(255);

    private final int mValue;

    DTCStatus(int i) {
        this.mValue = i;
    }

    public int value() {
        return this.mValue;
    }

    public static DTCStatus fromInt(int i) {
        for (DTCStatus dTCStatus : values()) {
            if (i == dTCStatus.value()) {
                return dTCStatus;
            }
        }
        return Unsupported;
    }
}
