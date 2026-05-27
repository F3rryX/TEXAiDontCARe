package at.favre.lib.bytes;

import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* JADX INFO: loaded from: classes.dex */
public final class ReadOnlyBytes extends Bytes {
    @Override // at.favre.lib.bytes.Bytes
    public boolean isReadOnly() {
        return true;
    }

    ReadOnlyBytes(byte[] bArr, ByteOrder byteOrder) {
        super(bArr, byteOrder, new Factory());
    }

    @Override // at.favre.lib.bytes.Bytes
    public byte[] array() {
        throw new ReadOnlyBufferException();
    }

    private static class Factory implements BytesFactory {
        private Factory() {
        }

        @Override // at.favre.lib.bytes.BytesFactory
        public Bytes wrap(byte[] bArr, ByteOrder byteOrder) {
            return new ReadOnlyBytes(bArr, byteOrder);
        }
    }
}
