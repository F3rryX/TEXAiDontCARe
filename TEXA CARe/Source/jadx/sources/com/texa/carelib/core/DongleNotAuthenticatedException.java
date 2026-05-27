package com.texa.carelib.core;

/* JADX INFO: loaded from: classes2.dex */
public final class DongleNotAuthenticatedException extends CareLibException {
    public DongleNotAuthenticatedException() {
        this("Dongle is not authenticated.");
    }

    public DongleNotAuthenticatedException(String str) {
        super(str);
    }
}
