package com.texa.carelib.core;

/* JADX INFO: loaded from: classes2.dex */
public final class DongleNotConnectedException extends CareLibException {
    public DongleNotConnectedException() {
        this("Dongle is not BT connected.");
    }

    public DongleNotConnectedException(String str) {
        super(str);
    }
}
