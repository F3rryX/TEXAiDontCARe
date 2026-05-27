package at.favre.lib.crypto;

import at.favre.lib.crypto.HkdfMacFactory;
import java.nio.ByteBuffer;
import javax.crypto.Mac;
import javax.crypto.SecretKey;

/* JADX INFO: loaded from: classes.dex */
public final class HKDF {
    private static HKDF hkdfHmacSha256;
    private static HKDF hkdfHmacSha512;
    private final HkdfMacFactory macFactory;

    private HKDF(HkdfMacFactory hkdfMacFactory) {
        this.macFactory = hkdfMacFactory;
    }

    public static HKDF fromHmacSha256() {
        if (hkdfHmacSha256 == null) {
            hkdfHmacSha256 = from(HkdfMacFactory.Default.hmacSha256());
        }
        return hkdfHmacSha256;
    }

    public static HKDF fromHmacSha512() {
        if (hkdfHmacSha512 == null) {
            hkdfHmacSha512 = from(HkdfMacFactory.Default.hmacSha512());
        }
        return hkdfHmacSha512;
    }

    public static HKDF from(HkdfMacFactory hkdfMacFactory) {
        return new HKDF(hkdfMacFactory);
    }

    public byte[] extract(byte[] bArr, byte[] bArr2) {
        return extract(this.macFactory.createSecretKey(bArr), bArr2);
    }

    public byte[] extract(SecretKey secretKey, byte[] bArr) {
        return new Extractor(this.macFactory).execute(secretKey, bArr);
    }

    public byte[] expand(byte[] bArr, byte[] bArr2, int i) {
        return expand(this.macFactory.createSecretKey(bArr), bArr2, i);
    }

    public byte[] expand(SecretKey secretKey, byte[] bArr, int i) {
        return new Expander(this.macFactory).execute(secretKey, bArr, i);
    }

    public byte[] extractAndExpand(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        return extractAndExpand(this.macFactory.createSecretKey(bArr), bArr2, bArr3, i);
    }

    public byte[] extractAndExpand(SecretKey secretKey, byte[] bArr, byte[] bArr2, int i) {
        Expander expander = new Expander(this.macFactory);
        HkdfMacFactory hkdfMacFactory = this.macFactory;
        return expander.execute(hkdfMacFactory.createSecretKey(new Extractor(hkdfMacFactory).execute(secretKey, bArr)), bArr2, i);
    }

    HkdfMacFactory getMacFactory() {
        return this.macFactory;
    }

    static final class Extractor {
        private final HkdfMacFactory macFactory;

        Extractor(HkdfMacFactory hkdfMacFactory) {
            this.macFactory = hkdfMacFactory;
        }

        byte[] execute(SecretKey secretKey, byte[] bArr) {
            if (secretKey == null) {
                HkdfMacFactory hkdfMacFactory = this.macFactory;
                secretKey = hkdfMacFactory.createSecretKey(new byte[hkdfMacFactory.getMacLengthBytes()]);
            }
            if (bArr == null || bArr.length <= 0) {
                throw new IllegalArgumentException("provided inputKeyingMaterial must be at least of size 1 and not null");
            }
            return this.macFactory.createInstance(secretKey).doFinal(bArr);
        }
    }

    static final class Expander {
        private final HkdfMacFactory macFactory;

        Expander(HkdfMacFactory hkdfMacFactory) {
            this.macFactory = hkdfMacFactory;
        }

        byte[] execute(SecretKey secretKey, byte[] bArr, int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("out length bytes must be at least 1");
            }
            if (secretKey == null) {
                throw new IllegalArgumentException("provided pseudoRandomKey must not be null");
            }
            Mac macCreateInstance = this.macFactory.createInstance(secretKey);
            if (bArr == null) {
                bArr = new byte[0];
            }
            byte[] bArrDoFinal = new byte[0];
            int iCeil = (int) Math.ceil(((double) i) / ((double) macCreateInstance.getMacLength()));
            if (iCeil > 255) {
                throw new IllegalArgumentException("out length must be maximal 255 * hash-length; requested: " + i + " bytes");
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
            int i2 = 0;
            while (i2 < iCeil) {
                macCreateInstance.update(bArrDoFinal);
                macCreateInstance.update(bArr);
                i2++;
                macCreateInstance.update((byte) i2);
                bArrDoFinal = macCreateInstance.doFinal();
                int iMin = Math.min(i, bArrDoFinal.length);
                byteBufferAllocate.put(bArrDoFinal, 0, iMin);
                i -= iMin;
            }
            return byteBufferAllocate.array();
        }
    }
}
