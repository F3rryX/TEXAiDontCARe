package com.texa.carelib.communication.internal;

import com.texa.carelib.communication.Message;
import com.texa.carelib.communication.internal.MessageTimeoutHandler;
import com.texa.carelib.communication.internal.PacketComposer;
import com.texa.carelib.communication.internal.TBUSEvent;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.logging.internal.LogUtils;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class TBUS implements MessageTimeoutHandler.CommandTimeoutListener {
    private static final int COMMAND_TIMEOUT = 10000;
    public static final boolean D = true;
    public static final int SEND_ATTEMPTS_DEFAULT = 2;
    public static final String TAG = "TBUS";
    private volatile boolean mIsWaitingForReply;
    private Message mLastMessage;
    private final TBUSListener mListener;
    private MessageTimeoutHandler mMessageTimeoutHandler;
    private final PacketComposer mPacketComposer;
    private final PacketComposer.Callback mPacketComposerCallback;
    private int mResendCount;
    private ScheduledExecutorService mScheduledExecutorService = Executors.newScheduledThreadPool(1);
    private int mSendTries = 2;

    @Override // com.texa.carelib.communication.internal.MessageTimeoutHandler.CommandTimeoutListener
    public void onCommandTimeout(Message message) {
    }

    TBUS(TBUSListener tBUSListener, MessageTimeoutHandler messageTimeoutHandler) {
        PacketComposer.Callback callback = new PacketComposer.Callback() { // from class: com.texa.carelib.communication.internal.TBUS$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.communication.internal.PacketComposer.Callback
            public final void onMessageReady(int i, int i2, byte[] bArr, int i3, byte[] bArr2) {
                this.f$0.m735lambda$new$0$comtexacarelibcommunicationinternalTBUS(i, i2, bArr, i3, bArr2);
            }
        };
        this.mPacketComposerCallback = callback;
        this.mListener = tBUSListener;
        this.mMessageTimeoutHandler = messageTimeoutHandler;
        PacketComposer packetComposer = new PacketComposer();
        this.mPacketComposer = packetComposer;
        packetComposer.setCallback(callback);
        reset();
    }

    public void reset() {
        setWaitingForReply(false);
        this.mLastMessage = null;
        this.mResendCount = 0;
        this.mPacketComposer.resetState();
        this.mMessageTimeoutHandler.reset();
    }

    public void setSendTries(int i) {
        if (i <= 0) {
            this.mSendTries = 2;
        } else {
            this.mSendTries = i;
        }
    }

    public void dataReady(byte[] bArr, int i) {
        if (i <= 0) {
            return;
        }
        CareLog.v(TAG, "dataReady() buffer=%s", LogUtils.dataToString(bArr, i));
        this.mPacketComposer.dataReady(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void fireEvent(TBUSEvent tBUSEvent) {
        if (this.mListener != null) {
            CareLog.v(TAG, "Firing event: %s", tBUSEvent.toString());
            this.mListener.onTBUSEventReceived(tBUSEvent);
        } else {
            CareLog.e(TAG, "TBUS Listener is null!!!!!", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWaitingForReply() {
        return this.mIsWaitingForReply;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWaitingForReply(boolean z) {
        this.mIsWaitingForReply = z;
    }

    private int getCommandTimeoutTime() {
        return COMMAND_TIMEOUT;
    }

    public static Integer getCommandID(byte[] bArr) {
        if (bArr.length >= 2) {
            return Integer.valueOf(bArr[1] & 255);
        }
        return null;
    }

    private class ProcessResponseMessageRunnable implements Runnable {
        private Message mRequestMessage;
        private Message mResponseMessage;

        ProcessResponseMessageRunnable(Message message, Message message2) {
            this.mRequestMessage = message;
            this.mResponseMessage = message2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mResponseMessage != null) {
                CareLog.d(TBUS.TAG, "Parsed message: %s", this.mResponseMessage);
                if (TBUS.this.mMessageTimeoutHandler != null && this.mResponseMessage.getStatus() != 255) {
                    TBUS.this.mMessageTimeoutHandler.unsubscribe(this.mResponseMessage);
                }
                int status = this.mResponseMessage.getStatus();
                if (status == 0) {
                    TBUSEvent tBUSEvent = new TBUSEvent(this, TBUSEvent.TBUSEventType.Message);
                    tBUSEvent.setRequestMessage(this.mRequestMessage);
                    tBUSEvent.setResponseMessage(this.mResponseMessage);
                    TBUS.this.fireEvent(tBUSEvent);
                    TBUS.this.setWaitingForReply(false);
                } else if (status == 255) {
                    TBUSEvent tBUSEvent2 = new TBUSEvent(this, TBUSEvent.TBUSEventType.Message);
                    tBUSEvent2.setRequestMessage(this.mRequestMessage);
                    tBUSEvent2.setResponseMessage(this.mResponseMessage);
                    TBUS.this.fireEvent(tBUSEvent2);
                } else {
                    TBUSEvent tBUSEvent3 = new TBUSEvent(this, TBUSEvent.TBUSEventType.Error);
                    tBUSEvent3.setError(TBUSEvent.TBUSEventError.ErrorStatus);
                    tBUSEvent3.setRequestMessage(this.mRequestMessage);
                    tBUSEvent3.setResponseMessage(this.mResponseMessage);
                    TBUS.this.fireEvent(tBUSEvent3);
                    TBUS.this.setWaitingForReply(false);
                }
            }
            if (TBUS.this.isWaitingForReply()) {
                return;
            }
            synchronized (this) {
            }
        }
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-carelib-communication-internal-TBUS, reason: not valid java name */
    public /* synthetic */ void m735lambda$new$0$comtexacarelibcommunicationinternalTBUS(int i, int i2, byte[] bArr, int i3, byte[] bArr2) {
        byte[] bArr3 = new byte[i3];
        System.arraycopy(bArr, 0, bArr3, 0, i3);
        this.mScheduledExecutorService.schedule(new ProcessResponseMessageRunnable(this.mLastMessage, new Message.Builder().setCommandID(i).setStatus(i2).setPayload(bArr3).build()), 0L, TimeUnit.MILLISECONDS);
    }
}
