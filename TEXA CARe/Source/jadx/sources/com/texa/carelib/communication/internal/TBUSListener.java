package com.texa.carelib.communication.internal;

import java.util.EventListener;

/* JADX INFO: loaded from: classes2.dex */
public interface TBUSListener extends EventListener {
    void onTBUSEventReceived(TBUSEvent tBUSEvent);
}
