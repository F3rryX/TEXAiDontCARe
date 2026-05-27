package at.favre.lib.armadillo;

import at.favre.lib.armadillo.DataObfuscator;
import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HkdfXorObfuscator implements DataObfuscator {
    private static final int BLOCK_SIZE_BYTE = 128;
    private final byte[] key;

    HkdfXorObfuscator(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.key = bArr;
    }

    @Override // at.favre.lib.armadillo.DataObfuscator
    public void obfuscate(byte[] bArr) {
        Objects.requireNonNull(bArr);
        byte[] bArrExtract = HKDF.fromHmacSha512().extract(new byte[64], this.key);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        int i = 0;
        int i2 = 0;
        while (byteBufferWrap.hasRemaining()) {
            int iMin = Math.min(128, byteBufferWrap.remaining());
            byte[] bArr2 = new byte[iMin];
            int i3 = i + 1;
            byte[] bArrExpand = HKDF.fromHmacSha512().expand(bArrExtract, Bytes.from(i).array(), iMin);
            byteBufferWrap.get(bArr2);
            int i4 = 0;
            while (i4 < iMin) {
                bArr[i2] = (byte) (bArr2[i4] ^ bArrExpand[i4]);
                i4++;
                i2++;
            }
            Bytes.wrap(bArr2).mutable().fill((byte) 0);
            Bytes.wrap(bArrExpand).mutable().fill((byte) 0);
            i = i3;
        }
        Bytes.wrap(bArrExtract).mutable().fill((byte) 0);
    }

    @Override // at.favre.lib.armadillo.DataObfuscator
    public void deobfuscate(byte[] bArr) {
        obfuscate(bArr);
    }

    @Override // at.favre.lib.armadillo.DataObfuscator
    public void clearKey() {
        Bytes.wrap(this.key).mutable().secureWipe();
    }

    public static final class Factory implements DataObfuscator.Factory {
        @Override // at.favre.lib.armadillo.DataObfuscator.Factory
        public DataObfuscator create(byte[] bArr) {
            return new HkdfXorObfuscator(bArr);
        }
    }
}
