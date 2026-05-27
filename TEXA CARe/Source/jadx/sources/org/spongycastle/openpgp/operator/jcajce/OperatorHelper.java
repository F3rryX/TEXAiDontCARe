package org.spongycastle.openpgp.operator.jcajce;

import java.io.InputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;

/* JADX INFO: loaded from: classes3.dex */
class OperatorHelper {
    private JcaJceHelper helper;

    OperatorHelper(JcaJceHelper jcaJceHelper) {
        this.helper = jcaJceHelper;
    }

    MessageDigest createDigest(int i) throws GeneralSecurityException, PGPException {
        return this.helper.createDigest(PGPUtil.getDigestName(i));
    }

    KeyFactory createKeyFactory(String str) throws GeneralSecurityException, PGPException {
        return this.helper.createKeyFactory(str);
    }

    public KeyAgreement createKeyAgreement(String str) throws GeneralSecurityException {
        return this.helper.createKeyAgreement(str);
    }

    public KeyPairGenerator createKeyPairGenerator(String str) throws GeneralSecurityException {
        return this.helper.createKeyPairGenerator(str);
    }

    PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, PGPUtil.getSymmetricCipherName(i));
            final Cipher cipherCreateStreamCipher = createStreamCipher(i, z);
            if (z) {
                cipherCreateStreamCipher.init(2, secretKeySpec, new IvParameterSpec(new byte[cipherCreateStreamCipher.getBlockSize()]));
            } else {
                cipherCreateStreamCipher.init(2, secretKeySpec);
            }
            return new PGPDataDecryptor() { // from class: org.spongycastle.openpgp.operator.jcajce.OperatorHelper.1
                @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
                public InputStream getInputStream(InputStream inputStream) {
                    return new CipherInputStream(inputStream, cipherCreateStreamCipher);
                }

                @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
                public int getBlockSize() {
                    return cipherCreateStreamCipher.getBlockSize();
                }

                @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
                public PGPDigestCalculator getIntegrityCalculator() {
                    return new SHA1PGPDigestCalculator();
                }
            };
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception creating cipher", e2);
        }
    }

    Cipher createStreamCipher(int i, boolean z) throws PGPException {
        return createCipher(PGPUtil.getSymmetricCipherName(i) + "/" + (z ? "CFB" : "OpenPGPCFB") + "/NoPadding");
    }

    Cipher createCipher(String str) throws PGPException {
        try {
            return this.helper.createCipher(str);
        } catch (GeneralSecurityException e) {
            throw new PGPException("cannot create cipher: " + e.getMessage(), e);
        }
    }

    Cipher createPublicKeyCipher(int i) throws PGPException {
        if (i == 1 || i == 2) {
            return createCipher("RSA/ECB/PKCS1Padding");
        }
        if (i != 16) {
            if (i == 17) {
                throw new PGPException("Can't use DSA for encryption.");
            }
            if (i == 19) {
                throw new PGPException("Can't use ECDSA for encryption.");
            }
            if (i != 20) {
                throw new PGPException("unknown asymmetric algorithm: " + i);
            }
        }
        return createCipher("ElGamal/ECB/PKCS1Padding");
    }

    Cipher createKeyWrapper(int i) throws PGPException {
        try {
            switch (i) {
                case 7:
                case 8:
                case 9:
                    return this.helper.createCipher("AESWrap");
                case 10:
                default:
                    throw new PGPException("unknown wrap algorithm: " + i);
                case 11:
                case 12:
                case 13:
                    return this.helper.createCipher("CamelliaWrap");
            }
        } catch (GeneralSecurityException e) {
            throw new PGPException("cannot create cipher: " + e.getMessage(), e);
        }
    }

    private Signature createSignature(String str) throws PGPException {
        try {
            return this.helper.createSignature(str);
        } catch (GeneralSecurityException e) {
            throw new PGPException("cannot create signature: " + e.getMessage(), e);
        }
    }

    public Signature createSignature(int i, int i2) throws PGPException {
        String str;
        if (i == 1 || i == 3) {
            str = "RSA";
        } else if (i == 16) {
            str = "ElGamal";
        } else if (i == 17) {
            str = "DSA";
        } else if (i != 19) {
            if (i != 20) {
                throw new PGPException("unknown algorithm tag in signature:" + i);
            }
            str = "ElGamal";
        } else {
            str = "ECDSA";
        }
        return createSignature(PGPUtil.getDigestName(i2) + "with" + str);
    }

    public AlgorithmParameters createAlgorithmParameters(String str) throws NoSuchAlgorithmException, NoSuchProviderException {
        return this.helper.createAlgorithmParameters(str);
    }
}
