package com.texa.carelib.profile.internal.filecarrier.internal;

import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.ConversionUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
class SerialFileComposer {
    public static final String TAG = "SerialFileComposer";
    private int mActualSize = 0;
    private final int mExpectedFileSize;
    private final File mFile;

    SerialFileComposer(File file, int i) {
        this.mFile = file;
        this.mExpectedFileSize = i;
    }

    public File getData() {
        if (isCompleted()) {
            return this.mFile;
        }
        return null;
    }

    public int getOffset() {
        return this.mActualSize;
    }

    public float getProgress() {
        int i = this.mExpectedFileSize;
        return (i > 0 ? this.mActualSize / i : 0.0f) * 100.0f;
    }

    public boolean isCompleted() {
        return this.mExpectedFileSize - this.mActualSize <= 0;
    }

    public long processChunk(char[] cArr) throws IOException {
        if (cArr == null || cArr.length == 0) {
            return this.mActualSize;
        }
        return processChunk(ConversionUtils.toByteArray(cArr));
    }

    public long processChunk(byte[] bArr) throws IOException {
        int i;
        if (bArr == null || bArr.length == 0) {
            i = this.mActualSize;
        } else {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            if (byteBufferWrap.getInt() == this.mActualSize) {
                int length = bArr.length - 4;
                if (!this.mFile.exists() && !this.mFile.createNewFile()) {
                    CareLog.e(TAG, "Could not create the file!!.", new Object[0]);
                }
                FileChannel channel = new RandomAccessFile(this.mFile, "rw").getChannel();
                channel.map(FileChannel.MapMode.READ_WRITE, this.mActualSize, length).put(byteBufferWrap);
                channel.close();
                this.mActualSize += length;
            }
            i = this.mActualSize;
        }
        return i;
    }
}
