package com.texa.carelib.core.events;

import com.texa.carelib.core.CareError;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ErrorEventBase extends EventBase {
    private final CareError mError;

    public ErrorEventBase(Object obj, CareError careError) {
        super(obj);
        this.mError = careError;
    }

    public CareError getError() {
        return this.mError;
    }
}
