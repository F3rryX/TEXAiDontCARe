package com.texa.carelib.profile.internal.filecarrier.internal;

import com.texa.carelib.core.logging.CareLog;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
class SerialInputStreamSplitter implements FileSplitter {
    private static final int BLOCK_SIZE = 512;
    private static final int MIN_FIELD_LENGTH = 4;
    public static final int OFFSET_SIZE = 4;
    private static final String TAG = "SerialInputStreamSplitter";
    public final int MAX_BLOCK_SIZE;
    public final int MAX_SEND_SIZE;
    private final InputStream mInputStream;
    private int mReadBytesCount;
    private int mTotalBytesCount;

    public SerialInputStreamSplitter(InputStream inputStream, int i) {
        this.mInputStream = inputStream;
        int i2 = i * 512;
        this.MAX_BLOCK_SIZE = i2;
        this.MAX_SEND_SIZE = i2 + 4;
        try {
            this.mTotalBytesCount = inputStream.available();
            CareLog.d(TAG, "Total bytes count: " + this.mTotalBytesCount, new Object[0]);
        } catch (IOException e) {
            CareLog.e(TAG, e, "Could not retrieve input stream size.", new Object[0]);
            this.mTotalBytesCount = 0;
        }
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.internal.FileSplitter
    public byte[] getChunkOfData() {
        try {
            if (this.mInputStream.available() == 0) {
                return null;
            }
            int iMin = Math.min(this.MAX_BLOCK_SIZE, this.mInputStream.available());
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iMin + 4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.putInt(this.mReadBytesCount);
            byte[] bArr = new byte[iMin];
            int i = this.mInputStream.read(bArr);
            byteBufferAllocate.put(bArr, 0, i);
            this.mReadBytesCount += i;
            CareLog.d(TAG, "Read chunk of %1$d bytes.(%2$d/%3$d)", Integer.valueOf(i), Integer.valueOf(this.mReadBytesCount), Integer.valueOf(this.mTotalBytesCount));
            byteBufferAllocate.position(0);
            return byteBufferAllocate.array();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.internal.FileSplitter
    public float getProgress() {
        int i = this.mTotalBytesCount;
        return (i > 0 ? this.mReadBytesCount / i : 0.0f) * 100.0f;
    }
}
