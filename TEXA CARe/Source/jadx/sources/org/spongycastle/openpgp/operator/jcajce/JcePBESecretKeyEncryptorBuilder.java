package org.spongycastle.openpgp.operator.jcajce;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Provider;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBESecretKeyEncryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;

/* JADX INFO: loaded from: classes3.dex */
public class JcePBESecretKeyEncryptorBuilder {
    private int encAlgorithm;
    private OperatorHelper helper;
    private SecureRandom random;
    private int s2kCount;
    private PGPDigestCalculator s2kDigestCalculator;

    public JcePBESecretKeyEncryptorBuilder(int i) {
        this(i, new SHA1PGPDigestCalculator());
    }

    public JcePBESecretKeyEncryptorBuilder(int i, int i2) {
        this(i, new SHA1PGPDigestCalculator(), i2);
    }

    public JcePBESecretKeyEncryptorBuilder(int i, PGPDigestCalculator pGPDigestCalculator) {
        this(i, pGPDigestCalculator, 96);
    }

    public JcePBESecretKeyEncryptorBuilder(int i, PGPDigestCalculator pGPDigestCalculator, int i2) {
        this.helper = new OperatorHelper(new DefaultJcaJceHelper());
        this.s2kCount = 96;
        this.encAlgorithm = i;
        this.s2kDigestCalculator = pGPDigestCalculator;
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("s2KCount value outside of range 0 to 255.");
        }
        this.s2kCount = i2;
    }

    public JcePBESecretKeyEncryptorBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JcePBESecretKeyEncryptorBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JcePBESecretKeyEncryptorBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }

    public PBESecretKeyEncryptor build(char[] cArr) {
        if (this.random == null) {
            this.random = new SecureRandom();
        }
        return new PBESecretKeyEncryptor(this.encAlgorithm, this.s2kDigestCalculator, this.s2kCount, this.random, cArr) { // from class: org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyEncryptorBuilder.1
            private Cipher c;
            private byte[] iv;

            @Override // org.spongycastle.openpgp.operator.PBESecretKeyEncryptor
            public byte[] encryptKeyData(byte[] bArr, byte[] bArr2, int i, int i2) throws PGPException {
                try {
                    Cipher cipherCreateCipher = JcePBESecretKeyEncryptorBuilder.this.helper.createCipher(PGPUtil.getSymmetricCipherName(this.encAlgorithm) + "/CFB/NoPadding");
                    this.c = cipherCreateCipher;
                    cipherCreateCipher.init(1, PGPUtil.makeSymmetricKey(this.encAlgorithm, bArr), this.random);
                    this.iv = this.c.getIV();
                    return this.c.doFinal(bArr2, i, i2);
                } catch (InvalidKeyException e) {
                    throw new PGPException("invalid key: " + e.getMessage(), e);
                } catch (BadPaddingException e2) {
                    throw new PGPException("bad padding: " + e2.getMessage(), e2);
                } catch (IllegalBlockSizeException e3) {
                    throw new PGPException("illegal block size: " + e3.getMessage(), e3);
                }
            }

            @Override // org.spongycastle.openpgp.operator.PBESecretKeyEncryptor
            public byte[] encryptKeyData(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) throws PGPException {
                try {
                    Cipher cipherCreateCipher = JcePBESecretKeyEncryptorBuilder.this.helper.createCipher(PGPUtil.getSymmetricCipherName(this.encAlgorithm) + "/CFB/NoPadding");
                    this.c = cipherCreateCipher;
                    cipherCreateCipher.init(1, PGPUtil.makeSymmetricKey(this.encAlgorithm, bArr), new IvParameterSpec(bArr2));
                    this.iv = bArr2;
                    return this.c.doFinal(bArr3, i, i2);
                } catch (InvalidAlgorithmParameterException e) {
                    throw new PGPException("invalid iv: " + e.getMessage(), e);
                } catch (InvalidKeyException e2) {
                    throw new PGPException("invalid key: " + e2.getMessage(), e2);
                } catch (BadPaddingException e3) {
                    throw new PGPException("bad padding: " + e3.getMessage(), e3);
                } catch (IllegalBlockSizeException e4) {
                    throw new PGPException("illegal block size: " + e4.getMessage(), e4);
                }
            }

            @Override // org.spongycastle.openpgp.operator.PBESecretKeyEncryptor
            public byte[] getCipherIV() {
                return this.iv;
            }
        };
    }
}
