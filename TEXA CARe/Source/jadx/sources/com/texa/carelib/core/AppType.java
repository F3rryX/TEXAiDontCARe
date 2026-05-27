package com.texa.carelib.core;

/* JADX INFO: loaded from: classes2.dex */
public enum AppType {
    UNDEF(0),
    MAIN(1),
    SERVICE(2),
    MICRO(3);

    private final int mIntValue;

    AppType(int i) {
        this.mIntValue = i;
    }

    int toInt() {
        return this.mIntValue;
    }
}
