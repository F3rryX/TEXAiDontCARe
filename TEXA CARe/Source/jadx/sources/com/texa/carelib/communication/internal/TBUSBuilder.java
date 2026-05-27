package com.texa.carelib.communication.internal;

/* JADX INFO: loaded from: classes2.dex */
public class TBUSBuilder {
    private TBUSListener listener;
    private MessageTimeoutHandler messageTimeoutHandler;

    public TBUSBuilder setListener(TBUSListener tBUSListener) {
        this.listener = tBUSListener;
        return this;
    }

    public TBUSBuilder setMessageTimeoutHandler(MessageTimeoutHandler messageTimeoutHandler) {
        this.messageTimeoutHandler = messageTimeoutHandler;
        return this;
    }

    public TBUS createTBUS() {
        return new TBUS(this.listener, this.messageTimeoutHandler);
    }
}
