package com.texa.carelib.communication.internal;

import com.texa.carelib.core.logging.CareLog;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class PacketComposer {
    private static final boolean D = false;
    private static final String TAG = "PacketComposer";
    private Callback mCallback;
    private int mChecksum;
    private int mCommandId;
    private int mCommandStatus;
    private int mDataToReceive;
    private int mPayloadIndex;
    private int mPayloadLength;
    private final Object mLock = new Object();
    private PacketComposerState mState = PacketComposerState.WaitStx;
    private ByteBuffer mBuffer = ByteBuffer.allocate(2150);
    private volatile long mLastReadTimeNanos = System.nanoTime();
    private final byte[] mPayload = new byte[2150];
    private final byte[] mRawData = new byte[2150];

    public interface Callback {
        void onMessageReady(int i, int i2, byte[] bArr, int i3, byte[] bArr2);
    }

    enum PacketComposerState {
        WaitStx,
        WaitCommandId,
        WaitMaxIndex,
        WaitCurrentIndex,
        WaitLengthLsb,
        WaitLengthMsb,
        WaitData,
        WaitChecksum,
        WaitStop
    }

    private void cancelResetIfScheduled() {
    }

    public void dataReady(byte[] bArr, int i) {
        if (bArr == null || i <= 0) {
            return;
        }
        this.mLastReadTimeNanos = System.nanoTime();
        cancelResetIfScheduled();
        for (int i2 = 0; i2 < i; i2++) {
            processByte(bArr[i2] & 255);
        }
        if (this.mState != PacketComposerState.WaitStx) {
            this.mLastReadTimeNanos = System.nanoTime();
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.communication.internal.PacketComposer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState;

        static {
            int[] iArr = new int[PacketComposerState.values().length];
            $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState = iArr;
            try {
                iArr[PacketComposerState.WaitStx.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitCommandId.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitMaxIndex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitCurrentIndex.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitLengthLsb.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitLengthMsb.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitData.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitChecksum.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[PacketComposerState.WaitStop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected void processByte(int i) {
        boolean z = true;
        switch (AnonymousClass1.$SwitchMap$com$texa$carelib$communication$internal$PacketComposer$PacketComposerState[this.mState.ordinal()]) {
            case 1:
                this.mPayloadLength = 0;
                this.mDataToReceive = 0;
                this.mChecksum = 0;
                this.mCommandId = 0;
                this.mCommandStatus = 0;
                this.mPayloadIndex = 0;
                if (2 == i) {
                    this.mBuffer.put((byte) i);
                    this.mState = PacketComposerState.WaitCommandId;
                }
                z = false;
                break;
            case 2:
                byte b = (byte) i;
                addToChecksum(b);
                this.mBuffer.put(b);
                this.mCommandId = i;
                this.mState = PacketComposerState.WaitMaxIndex;
                z = false;
                break;
            case 3:
                byte b2 = (byte) i;
                addToChecksum(b2);
                this.mBuffer.put(b2);
                this.mState = PacketComposerState.WaitCurrentIndex;
                z = false;
                break;
            case 4:
                byte b3 = (byte) i;
                addToChecksum(b3);
                this.mBuffer.put(b3);
                this.mState = PacketComposerState.WaitLengthLsb;
                z = false;
                break;
            case 5:
                byte b4 = (byte) i;
                addToChecksum(b4);
                this.mPayloadLength = i;
                this.mBuffer.put(b4);
                this.mState = PacketComposerState.WaitLengthMsb;
                z = false;
                break;
            case 6:
                byte b5 = (byte) i;
                addToChecksum(b5);
                int i2 = this.mPayloadLength + ((i << 8) & 65280);
                this.mPayloadLength = i2;
                if (i2 == 0) {
                    this.mBuffer.put(b5);
                    this.mState = PacketComposerState.WaitChecksum;
                } else if (i2 > 0 && i2 < (this.mBuffer.capacity() - 6) - 2) {
                    this.mBuffer.put(b5);
                    this.mState = PacketComposerState.WaitData;
                    this.mDataToReceive = this.mPayloadLength;
                    this.mPayloadIndex = 0;
                } else {
                    CareLog.e(TAG, "Packet length too long!", new Object[0]);
                }
                z = false;
                break;
            case 7:
                byte b6 = (byte) i;
                addToChecksum(b6);
                int i3 = this.mPayloadIndex;
                if (i3 == 0) {
                    this.mCommandStatus = i;
                } else if (i3 > 0) {
                    this.mPayload[i3 - 1] = b6;
                }
                this.mPayloadIndex = i3 + 1;
                this.mDataToReceive--;
                this.mBuffer.put(b6);
                if (this.mDataToReceive <= 0) {
                    this.mState = PacketComposerState.WaitChecksum;
                }
                z = false;
                break;
            case 8:
                int i4 = this.mChecksum;
                if (i4 == i) {
                    this.mState = PacketComposerState.WaitStop;
                    z = false;
                } else {
                    onInvalidPacketChecksum(i, i4);
                }
                this.mState = PacketComposerState.WaitStop;
                break;
            case 9:
                if (3 == i && this.mCallback != null) {
                    int iPosition = this.mBuffer.position();
                    this.mBuffer.position(0);
                    this.mBuffer.get(this.mRawData, 0, iPosition);
                    this.mCallback.onMessageReady(this.mCommandId, this.mCommandStatus, this.mPayload, this.mPayloadLength - 1, this.mRawData);
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            resetState();
        }
    }

    protected void onInvalidPacketChecksum(int i, int i2) {
        CareLog.e(TAG, "Invalid packet checksum[actual=%d,expected=%d]", Integer.valueOf(i), Integer.valueOf(i2));
    }

    void resetState() {
        if (this.mState != PacketComposerState.WaitStop) {
            CareLog.e(TAG, "Reset state", new Object[0]);
        }
        cancelResetIfScheduled();
        this.mState = PacketComposerState.WaitStx;
        this.mBuffer.clear();
        this.mPayloadLength = 0;
        this.mPayloadIndex = 0;
        this.mDataToReceive = 0;
        this.mChecksum = 0;
        this.mCommandId = 0;
        this.mCommandStatus = 0;
    }

    protected int getChecksum() {
        return this.mChecksum;
    }

    protected int getCommandId() {
        return this.mCommandId;
    }

    protected int getPayloadActualLength() {
        return this.mPayloadIndex;
    }

    protected int getPayloadTotalLength() {
        return this.mPayloadLength;
    }

    protected PacketComposerState getState() {
        return this.mState;
    }

    public int size() {
        return this.mBuffer.position();
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    protected void onIntraPacketTimeout() {
        resetState();
    }

    protected void addToChecksum(byte b) {
        int i = this.mChecksum + (b & 255);
        this.mChecksum = i;
        this.mChecksum = i & 255;
    }
}
