package com.texa.carelib.communication.internal;

import com.texa.carelib.communication.Message;
import java.util.EventObject;

/* JADX INFO: loaded from: classes2.dex */
public class TBUSEvent extends EventObject {
    public static final String TAG = "TBUSEvent";
    private static final long serialVersionUID = 1;
    private TBUSEventError mError;
    private Message mRequestMessage;
    private Message mResponseMessage;
    private final TBUSEventType mType;

    public enum TBUSEventError {
        NoError,
        WrongCommand,
        BadCrc,
        ErrorCommunicating,
        Timeout,
        ErrorStatus
    }

    public enum TBUSEventType {
        Message,
        Send,
        Error,
        Write
    }

    public TBUSEvent(Object obj, TBUSEventType tBUSEventType) {
        super(obj);
        this.mType = tBUSEventType;
        this.mError = TBUSEventError.NoError;
        this.mResponseMessage = null;
        this.mRequestMessage = null;
    }

    public TBUSEventType getTBUSEventType() {
        return this.mType;
    }

    public void setResponseMessage(Message message) {
        this.mResponseMessage = message;
    }

    public void setRequestMessage(Message message) {
        this.mRequestMessage = message;
    }

    public void setError(TBUSEventError tBUSEventError) {
        this.mError = tBUSEventError;
    }

    public Message getResponseMessage() {
        return this.mResponseMessage;
    }

    public Message getRequestMessage() {
        return this.mRequestMessage;
    }

    public TBUSEventError getError() {
        return this.mError;
    }

    @Override // java.util.EventObject
    public String toString() {
        String str = "Type: " + this.mType;
        if (this.mType == TBUSEventType.Error) {
            return str + " - type: " + this.mError;
        }
        if (this.mRequestMessage != null) {
            str = str + " - mRequestMessage: " + this.mRequestMessage.toString();
        }
        if (this.mResponseMessage == null) {
            return str;
        }
        return str + " - mResponseMessage: " + this.mResponseMessage.toString();
    }
}
