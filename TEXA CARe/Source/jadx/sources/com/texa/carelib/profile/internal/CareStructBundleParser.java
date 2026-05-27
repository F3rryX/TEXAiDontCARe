package com.texa.carelib.profile.internal;

import com.texa.carelib.core.internal.CareStructID;
import com.texa.carelib.core.logging.CareLog;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
abstract class CareStructBundleParser {
    private static final String TAG = "CareStructBundleParser";

    protected abstract void onDataBlockFound(CareStructInfo careStructInfo);

    CareStructBundleParser() {
    }

    public void parse(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.position(0);
        parse(byteBufferWrap);
    }

    public void parse(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        do {
            try {
                CareLog.v(TAG, "Position: %d/%d. Remaining:%d", Integer.valueOf(byteBuffer.position()), Integer.valueOf(byteBuffer.capacity()), Integer.valueOf(byteBuffer.remaining()));
                int blockID = getBlockID(byteBuffer);
                int blockSize = getBlockSize(byteBuffer);
                if (blockSize == 0) {
                    int iFindNextBlock = findNextBlock(byteBuffer);
                    if (iFindNextBlock < byteBuffer.position()) {
                        return;
                    }
                    byteBuffer.position(iFindNextBlock);
                    blockID = getBlockID(byteBuffer);
                    blockSize = getBlockSize(byteBuffer);
                }
                if (byteBuffer.remaining() < blockSize) {
                    return;
                }
                byte[] bArr = new byte[Math.min(blockSize, byteBuffer.remaining())];
                byteBuffer.get(bArr);
                onDataBlockFound(new CareStructInfo(blockID, bArr));
            } catch (Exception e) {
                CareLog.e(TAG, "An error is occurred while parsing block data.", e);
                return;
            }
        } while (byteBuffer.hasRemaining());
    }

    protected int getBlockID(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 2) {
            return 0;
        }
        return (byteBuffer.get(byteBuffer.position() + 0) & 255) + 0 + ((byteBuffer.get(byteBuffer.position() + 1) << 8) & 65280);
    }

    protected int getBlockSize(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            return 0;
        }
        return (byteBuffer.get(byteBuffer.position() + 2) & 255) + 0 + ((byteBuffer.get(byteBuffer.position() + 3) << 8) & 65280);
    }

    protected int findNextBlock(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 2) {
            return byteBuffer.position();
        }
        int iPosition = byteBuffer.position();
        while (byteBuffer.remaining() > 2) {
            byteBuffer.position(iPosition);
            int blockID = getBlockID(byteBuffer);
            int blockSize = getBlockSize(byteBuffer);
            if (CareStructID.isValidBlockID(blockID) && blockSize > 0) {
                byteBuffer.position(iPosition);
                return iPosition;
            }
            iPosition++;
        }
        return -1;
    }

    class CareStructInfo {
        private byte[] mData;
        private int mID;

        public CareStructInfo(int i, byte[] bArr) {
            this.mID = i;
            this.mData = bArr;
        }

        public int getID() {
            return this.mID;
        }

        public byte[] getData() {
            return this.mData;
        }
    }
}
