package at.favre.lib.armadillo;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
final class AesCbcEncryption implements AuthenticatedEncryption {
    private static final String ALGORITHM = "AES/CBC/PKCS5Padding";
    private static final String HMAC_ALGORITHM = "HmacSHA256";
    private static final int IV_LENGTH_BYTE = 16;
    private ThreadLocal<Cipher> cipherWrapper;
    private Mac hmac;
    private final Provider provider;
    private final SecureRandom secureRandom;

    @Override // at.favre.lib.armadillo.AuthenticatedEncryption
    public int byteSizeLength(int i) {
        return i == 0 ? 16 : 32;
    }

    public AesCbcEncryption() {
        this(new SecureRandom(), null);
    }

    public AesCbcEncryption(SecureRandom secureRandom) {
        this(secureRandom, null);
    }

    public AesCbcEncryption(SecureRandom secureRandom, Provider provider) {
        this.cipherWrapper = new ThreadLocal<>();
        this.secureRandom = secureRandom;
        this.provider = provider;
    }

    @Override // at.favre.lib.armadillo.AuthenticatedEncryption
    public byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Throwable {
        byte[] bArrDoFinal;
        byte[] bArr4;
        checkAesKey(bArr);
        byte[] bArrMacCipherText = null;
        try {
            byte[] bArr5 = new byte[16];
            try {
                this.secureRandom.nextBytes(bArr5);
                Cipher cipher = getCipher();
                cipher.init(1, createEncryptionKey(bArr), new IvParameterSpec(bArr5));
                bArrDoFinal = cipher.doFinal(bArr2);
                try {
                    bArrMacCipherText = macCipherText(bArr, bArrDoFinal, bArr5, bArr3);
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(18 + bArrMacCipherText.length + bArrDoFinal.length);
                    byteBufferAllocate.put((byte) 16);
                    byteBufferAllocate.put(bArr5);
                    byteBufferAllocate.put((byte) bArrMacCipherText.length);
                    byteBufferAllocate.put(bArrMacCipherText);
                    byteBufferAllocate.put(bArrDoFinal);
                    byte[] bArrArray = byteBufferAllocate.array();
                    Bytes.wrapNullSafe(bArr5).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArrDoFinal).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArrMacCipherText).mutable().secureWipe();
                    return bArrArray;
                } catch (Exception e) {
                    e = e;
                    bArr4 = bArrMacCipherText;
                    bArrMacCipherText = bArr5;
                    try {
                        throw new AuthenticatedEncryptionException("could not encrypt", e);
                    } catch (Throwable th) {
                        th = th;
                        Bytes.wrapNullSafe(bArrMacCipherText).mutable().secureWipe();
                        Bytes.wrapNullSafe(bArrDoFinal).mutable().secureWipe();
                        Bytes.wrapNullSafe(bArr4).mutable().secureWipe();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bArr4 = bArrMacCipherText;
                    bArrMacCipherText = bArr5;
                    Bytes.wrapNullSafe(bArrMacCipherText).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArrDoFinal).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr4).mutable().secureWipe();
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                bArrDoFinal = null;
                bArr4 = null;
            } catch (Throwable th3) {
                th = th3;
                bArrDoFinal = null;
                bArr4 = null;
            }
        } catch (Exception e3) {
            e = e3;
            bArrDoFinal = null;
            bArr4 = null;
        } catch (Throwable th4) {
            th = th4;
            bArrDoFinal = null;
            bArr4 = null;
        }
    }

    private SecretKeySpec createEncryptionKey(byte[] bArr) {
        return new SecretKeySpec(HKDF.fromHmacSha256().expand(bArr, Bytes.from("encKey").array(), bArr.length), "AES");
    }

    private byte[] macCipherText(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        SecretKey secretKeyCreateMacKey = createMacKey(bArr);
        try {
            createHmacInstance();
            this.hmac.init(secretKeyCreateMacKey);
            this.hmac.update(bArr3);
            this.hmac.update(bArr2);
            if (bArr4 != null) {
                this.hmac.update(bArr4);
            }
            return this.hmac.doFinal();
        } catch (InvalidKeyException unused) {
            throw new IllegalStateException("error during HMAC calculation");
        }
    }

    private SecretKey createMacKey(byte[] bArr) {
        return new SecretKeySpec(HKDF.fromHmacSha256().expand(bArr, Bytes.from("macKey").array(), 32), HMAC_ALGORITHM);
    }

    private synchronized Mac createHmacInstance() {
        if (this.hmac == null) {
            try {
                this.hmac = Mac.getInstance(HMAC_ALGORITHM);
            } catch (Exception e) {
                throw new IllegalStateException("could not get cipher instance", e);
            }
        }
        return this.hmac;
    }

    @Override // at.favre.lib.armadillo.AuthenticatedEncryption
    public byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Throwable {
        byte[] bArr4;
        byte[] bArr5;
        checkAesKey(bArr);
        byte[] bArr6 = null;
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
            byte[] bArr7 = new byte[byteBufferWrap.get() & 255];
            try {
                byteBufferWrap.get(bArr7);
                bArr5 = new byte[byteBufferWrap.get() & 255];
                try {
                    byteBufferWrap.get(bArr5);
                    bArr6 = new byte[byteBufferWrap.remaining()];
                    byteBufferWrap.get(bArr6);
                    verifyMac(bArr, bArr6, bArr7, bArr5, bArr3);
                    Cipher cipher = getCipher();
                    cipher.init(2, createEncryptionKey(bArr), new IvParameterSpec(bArr7));
                    byte[] bArrDoFinal = cipher.doFinal(bArr6);
                    Bytes.wrapNullSafe(bArr7).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr6).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr5).mutable().secureWipe();
                    return bArrDoFinal;
                } catch (Exception e) {
                    e = e;
                    bArr4 = bArr6;
                    bArr6 = bArr7;
                    try {
                        throw new AuthenticatedEncryptionException("could not decrypt", e);
                    } catch (Throwable th) {
                        th = th;
                        Bytes.wrapNullSafe(bArr6).mutable().secureWipe();
                        Bytes.wrapNullSafe(bArr4).mutable().secureWipe();
                        Bytes.wrapNullSafe(bArr5).mutable().secureWipe();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bArr4 = bArr6;
                    bArr6 = bArr7;
                    Bytes.wrapNullSafe(bArr6).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr4).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr5).mutable().secureWipe();
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                bArr4 = null;
                bArr5 = null;
            } catch (Throwable th3) {
                th = th3;
                bArr4 = null;
                bArr5 = null;
            }
        } catch (Exception e3) {
            e = e3;
            bArr4 = null;
            bArr5 = null;
        } catch (Throwable th4) {
            th = th4;
            bArr4 = null;
            bArr5 = null;
        }
    }

    private void verifyMac(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws AuthenticatedEncryptionException {
        if (!Bytes.wrap(bArr4).equalsConstantTime(macCipherText(bArr, bArr2, bArr3, bArr5))) {
            throw new AuthenticatedEncryptionException("encryption integrity exception: mac does not match");
        }
    }

    private void checkAesKey(byte[] bArr) throws IllegalArgumentException {
        int length = bArr.length;
        if (length != 16 && length != 32) {
            throw new IllegalArgumentException("AES key length must be 16, 24, or 32 bytes");
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
