package at.favre.lib.bytes;

import at.favre.lib.bytes.Util;
import java.nio.ByteOrder;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MutableBytes extends Bytes implements AutoCloseable {
    @Override // at.favre.lib.bytes.Bytes
    public boolean isMutable() {
        return true;
    }

    MutableBytes(byte[] bArr, ByteOrder byteOrder) {
        super(bArr, byteOrder, new Factory());
    }

    public static MutableBytes allocate(int i) {
        return allocate(i, (byte) 0);
    }

    public static MutableBytes allocate(int i, byte b) {
        return Bytes.allocate(i, b).mutable();
    }

    public MutableBytes overwrite(byte[] bArr) {
        return overwrite(bArr, 0);
    }

    public MutableBytes overwrite(Bytes bytes) {
        return overwrite(bytes, 0);
    }

    public MutableBytes overwrite(byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "must provide non-null array as source");
        System.arraycopy(bArr, 0, internalArray(), i, bArr.length);
        return this;
    }

    public MutableBytes overwrite(Bytes bytes, int i) {
        Objects.requireNonNull(bytes, "must provide non-null array as source");
        return overwrite(bytes.array(), i);
    }

    public MutableBytes setByteAt(int i, byte b) {
        internalArray()[i] = b;
        return this;
    }

    public MutableBytes wipe() {
        return fill((byte) 0);
    }

    public MutableBytes fill(byte b) {
        Arrays.fill(internalArray(), b);
        return this;
    }

    public MutableBytes secureWipe() {
        return secureWipe(new SecureRandom());
    }

    public MutableBytes secureWipe(SecureRandom secureRandom) {
        Objects.requireNonNull(secureRandom, "random param must not be null");
        if (length() > 0) {
            secureRandom.nextBytes(internalArray());
        }
        return this;
    }

    public Bytes immutable() {
        return Bytes.wrap(internalArray(), byteOrder());
    }

    @Override // at.favre.lib.bytes.Bytes
    public int hashCode() {
        return Util.Obj.hashCode(internalArray(), byteOrder());
    }

    @Override // at.favre.lib.bytes.Bytes
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        secureWipe();
    }

    private static class Factory implements BytesFactory {
        private Factory() {
        }

        @Override // at.favre.lib.bytes.BytesFactory
        public Bytes wrap(byte[] bArr, ByteOrder byteOrder) {
            return new MutableBytes(bArr, byteOrder);
        }
    }
}
