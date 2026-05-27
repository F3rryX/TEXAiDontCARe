package at.favre.lib.armadillo;

import at.favre.lib.bytes.Bytes;
import java.nio.ByteBuffer;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
final class AesGcmEncryption implements AuthenticatedEncryption {
    private static final String ALGORITHM = "AES/GCM/NoPadding";
    private static final int IV_LENGTH_BYTE = 12;
    private static final int TAG_LENGTH_BIT = 128;
    private ThreadLocal<Cipher> cipherWrapper;
    private final Provider provider;
    private final SecureRandom secureRandom;

    @Override // at.favre.lib.armadillo.AuthenticatedEncryption
    public int byteSizeLength(int i) {
        return i == 0 ? 16 : 32;
    }

    public AesGcmEncryption() {
        this(new SecureRandom(), null);
    }

    public AesGcmEncryption(SecureRandom secureRandom) {
        this(secureRandom, null);
    }

    public AesGcmEncryption(SecureRandom secureRandom, Provider provider) {
        this.cipherWrapper = new ThreadLocal<>();
        this.secureRandom = secureRandom;
        this.provider = provider;
    }

    @Override // at.favre.lib.armadillo.AuthenticatedEncryption
    public byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Throwable {
        byte[] bArr4;
        if (bArr.length < 16) {
            throw new IllegalArgumentException("key length must be longer than 16 bytes");
        }
        byte[] bArrDoFinal = null;
        try {
            byte[] bArr5 = new byte[12];
            try {
                this.secureRandom.nextBytes(bArr5);
                Cipher cipher = getCipher();
                cipher.init(1, new SecretKeySpec(bArr, "AES"), new GCMParameterSpec(128, bArr5));
                if (bArr3 != null) {
                    cipher.updateAAD(bArr3);
                }
                bArrDoFinal = cipher.doFinal(bArr2);
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(13 + bArrDoFinal.length);
                byteBufferAllocate.put((byte) 12);
                byteBufferAllocate.put(bArr5);
                byteBufferAllocate.put(bArrDoFinal);
                byte[] bArrArray = byteBufferAllocate.array();
                Bytes.wrapNullSafe(bArr5).mutable().secureWipe();
                Bytes.wrapNullSafe(bArrDoFinal).mutable().secureWipe();
                return bArrArray;
            } catch (Exception e) {
                e = e;
                bArr4 = bArrDoFinal;
                bArrDoFinal = bArr5;
                try {
                    throw new AuthenticatedEncryptionException("could not encrypt", e);
                } catch (Throwable th) {
                    th = th;
                    Bytes.wrapNullSafe(bArrDoFinal).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr4).mutable().secureWipe();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bArr4 = bArrDoFinal;
                bArrDoFinal = bArr5;
                Bytes.wrapNullSafe(bArrDoFinal).mutable().secureWipe();
                Bytes.wrapNullSafe(bArr4).mutable().secureWipe();
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            bArr4 = null;
        } catch (Throwable th3) {
            th = th3;
            bArr4 = null;
        }
    }

    @Override // at.favre.lib.armadillo.AuthenticatedEncryption
    public byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws AuthenticatedEncryptionException {
        try {
            byte b = bArr2[0];
            if (b != 12 && b != 16) {
                throw new IllegalStateException("Unexpected iv length");
            }
            Cipher cipher = getCipher();
            cipher.init(2, new SecretKeySpec(bArr, "AES"), new GCMParameterSpec(128, bArr2, 1, b));
            if (bArr3 != null) {
                cipher.updateAAD(bArr3);
            }
            int i = 1 + b;
            return cipher.doFinal(bArr2, i, bArr2.length - i);
        } catch (Exception e) {
            throw new AuthenticatedEncryptionException("could not decrypt", e);
        }
    }

    private Cipher getCipher() {
        Cipher cipher;
        Cipher cipher2 = this.cipherWrapper.get();
        if (cipher2 != null) {
            return cipher2;
        }
        try {
            Provider provider = this.provider;
            if (provider != null) {
                cipher = Cipher.getInstance(ALGORITHM, provider);
            } else {
                cipher = Cipher.getInstance(ALGORITHM);
            }
            this.cipherWrapper.set(cipher);
            return this.cipherWrapper.get();
        } catch (Exception e) {
            throw new IllegalStateException("could not get cipher instance", e);
        }
    }
}
