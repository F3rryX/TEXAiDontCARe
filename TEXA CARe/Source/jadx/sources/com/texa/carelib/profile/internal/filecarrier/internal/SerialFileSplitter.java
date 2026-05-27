package com.texa.carelib.profile.internal.filecarrier.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
class SerialFileSplitter implements FileSplitter {
    public static final int BLOCK_SIZE = 512;
    private static final int MIN_FIELD_LENGTH = 4;
    public static final int OFFSET_SIZE = 4;
    public final int DATA_SIZE;
    public final int FULL_DATA_SIZE;
    private final ByteBuffer mBuffer;

    public SerialFileSplitter(byte[] bArr, int i) {
        this.mBuffer = ByteBuffer.wrap(bArr);
        int i2 = i * 512;
        this.DATA_SIZE = i2;
        this.FULL_DATA_SIZE = i2 + 4;
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.internal.FileSplitter
    public byte[] getChunkOfData() {
        if (this.mBuffer.remaining() == 0) {
            return null;
        }
        int iMin = Math.min(this.DATA_SIZE, this.mBuffer.remaining());
        byte[] bArr = new byte[iMin + 4];
        System.arraycopy(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(this.mBuffer.position()).array(), 0, bArr, 0, 4);
        this.mBuffer.get(bArr, 4, iMin);
        return bArr;
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.internal.FileSplitter
    public float getProgress() {
        int iLimit = this.mBuffer.limit();
        return (iLimit > 0 ? this.mBuffer.position() / iLimit : 0.0f) * 100.0f;
    }
}
