package com.texa.carelib.core;

/* JADX INFO: loaded from: classes2.dex */
public class OperationAlreadyRunningException extends CareLibException {
    public OperationAlreadyRunningException() {
        this("Operation is already running.");
    }

    public OperationAlreadyRunningException(String str) {
        super(str);
    }

    public OperationAlreadyRunningException(String str, Throwable th) {
        super(str, th);
    }

    public OperationAlreadyRunningException(Throwable th) {
        super(th);
    }
}
