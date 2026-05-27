package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.util.Date;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.DHKey;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.jcajce.spec.UserKeyingMaterialSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PGPPad;
import org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory;
import org.spongycastle.openpgp.operator.RFC6637Utils;

/* JADX INFO: loaded from: classes3.dex */
public class JcePublicKeyDataDecryptorFactoryBuilder {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private OperatorHelper contentHelper = new OperatorHelper(new DefaultJcaJceHelper());
    private JcaPGPKeyConverter keyConverter = new JcaPGPKeyConverter();
    private JcaKeyFingerprintCalculator fingerprintCalculator = new JcaKeyFingerprintCalculator();

    public JcePublicKeyDataDecryptorFactoryBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        this.keyConverter.setProvider(provider);
        this.contentHelper = this.helper;
        return this;
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        this.keyConverter.setProvider(str);
        this.contentHelper = this.helper;
        return this;
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setContentProvider(Provider provider) {
        this.contentHelper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JcePublicKeyDataDecryptorFactoryBuilder setContentProvider(String str) {
        this.contentHelper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public PublicKeyDataDecryptorFactory build(final PrivateKey privateKey) {
        return new PublicKeyDataDecryptorFactory() { // from class: org.spongycastle.openpgp.operator.jcajce.JcePublicKeyDataDecryptorFactoryBuilder.1
            @Override // org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory
            public byte[] recoverSessionData(int i, byte[][] bArr) throws PGPException {
                if (i != 18) {
                    return JcePublicKeyDataDecryptorFactoryBuilder.this.decryptSessionData(i, privateKey, bArr);
                }
                throw new PGPException("ECDH requires use of PGPPrivateKey for decryption");
            }

            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
            public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
                return JcePublicKeyDataDecryptorFactoryBuilder.this.contentHelper.createDataDecryptor(z, i, bArr);
            }
        };
    }

    public PublicKeyDataDecryptorFactory build(final PGPPrivateKey pGPPrivateKey) {
        return new PublicKeyDataDecryptorFactory() { // from class: org.spongycastle.openpgp.operator.jcajce.JcePublicKeyDataDecryptorFactoryBuilder.2
            @Override // org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory
            public byte[] recoverSessionData(int i, byte[][] bArr) throws PGPException {
                if (i == 18) {
                    JcePublicKeyDataDecryptorFactoryBuilder jcePublicKeyDataDecryptorFactoryBuilder = JcePublicKeyDataDecryptorFactoryBuilder.this;
                    return jcePublicKeyDataDecryptorFactoryBuilder.decryptSessionData(jcePublicKeyDataDecryptorFactoryBuilder.keyConverter, pGPPrivateKey, bArr);
                }
                JcePublicKeyDataDecryptorFactoryBuilder jcePublicKeyDataDecryptorFactoryBuilder2 = JcePublicKeyDataDecryptorFactoryBuilder.this;
                return jcePublicKeyDataDecryptorFactoryBuilder2.decryptSessionData(i, jcePublicKeyDataDecryptorFactoryBuilder2.keyConverter.getPrivateKey(pGPPrivateKey), bArr);
            }

            @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
            public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
                return JcePublicKeyDataDecryptorFactoryBuilder.this.contentHelper.createDataDecryptor(z, i, bArr);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] decryptSessionData(JcaPGPKeyConverter jcaPGPKeyConverter, PGPPrivateKey pGPPrivateKey, byte[][] bArr) throws PGPException {
        PublicKeyPacket publicKeyPacket = pGPPrivateKey.getPublicKeyPacket();
        ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) publicKeyPacket.getKey();
        X9ECParameters byOID = NISTNamedCurves.getByOID(eCDHPublicBCPGKey.getCurveOID());
        byte[] bArr2 = bArr[0];
        int i = ((((bArr2[0] & 255) << 8) + (bArr2[1] & 255)) + 7) / 8;
        byte[] bArr3 = new byte[i];
        System.arraycopy(bArr2, 2, bArr3, 0, i);
        int i2 = i + 2;
        int i3 = bArr2[i2];
        byte[] bArr4 = new byte[i3];
        System.arraycopy(bArr2, i2 + 1, bArr4, 0, i3);
        ECPoint eCPointDecodePoint = byOID.getCurve().decodePoint(bArr3);
        try {
            byte[] bArrCreateUserKeyingMaterial = RFC6637Utils.createUserKeyingMaterial(publicKeyPacket, this.fingerprintCalculator);
            KeyAgreement keyAgreementCreateKeyAgreement = this.helper.createKeyAgreement(RFC6637Utils.getAgreementAlgorithm(publicKeyPacket));
            keyAgreementCreateKeyAgreement.init(jcaPGPKeyConverter.getPrivateKey(pGPPrivateKey), new UserKeyingMaterialSpec(bArrCreateUserKeyingMaterial));
            keyAgreementCreateKeyAgreement.doPhase(jcaPGPKeyConverter.getPublicKey(new PGPPublicKey(new PublicKeyPacket(18, new Date(), new ECDHPublicBCPGKey(eCDHPublicBCPGKey.getCurveOID(), eCPointDecodePoint, eCDHPublicBCPGKey.getHashAlgorithm(), eCDHPublicBCPGKey.getSymmetricKeyAlgorithm())), this.fingerprintCalculator)), true);
            SecretKey secretKeyGenerateSecret = keyAgreementCreateKeyAgreement.generateSecret(RFC6637Utils.getKeyEncryptionOID(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm()).getId());
            Cipher cipherCreateKeyWrapper = this.helper.createKeyWrapper(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
            cipherCreateKeyWrapper.init(4, secretKeyGenerateSecret);
            return PGPPad.unpadSessionData(cipherCreateKeyWrapper.unwrap(bArr4, "Session", 3).getEncoded());
        } catch (IOException e) {
            throw new PGPException("error setting asymmetric cipher", e);
        } catch (InvalidAlgorithmParameterException e2) {
            throw new PGPException("error setting asymmetric cipher", e2);
        } catch (InvalidKeyException e3) {
            throw new PGPException("error setting asymmetric cipher", e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new PGPException("error setting asymmetric cipher", e4);
        } catch (GeneralSecurityException e5) {
            throw new PGPException("error setting asymmetric cipher", e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] decryptSessionData(int i, PrivateKey privateKey, byte[][] bArr) throws PGPException {
        Cipher cipherCreatePublicKeyCipher = this.helper.createPublicKeyCipher(i);
        try {
            cipherCreatePublicKeyCipher.init(2, privateKey);
            if (i == 2 || i == 1) {
                byte[] bArr2 = bArr[0];
                cipherCreatePublicKeyCipher.update(bArr2, 2, bArr2.length - 2);
            } else {
                int iBitLength = (((DHKey) privateKey).getParams().getP().bitLength() + 7) / 8;
                byte[] bArr3 = new byte[iBitLength];
                byte[] bArr4 = bArr[0];
                if (bArr4.length - 2 > iBitLength) {
                    cipherCreatePublicKeyCipher.update(bArr4, 3, bArr4.length - 3);
                } else {
                    System.arraycopy(bArr4, 2, bArr3, iBitLength - (bArr4.length - 2), bArr4.length - 2);
                    cipherCreatePublicKeyCipher.update(bArr3);
                }
                byte[] bArr5 = bArr[1];
                for (int i2 = 0; i2 != iBitLength; i2++) {
                    bArr3[i2] = 0;
                }
                if (bArr5.length - 2 > iBitLength) {
                    cipherCreatePublicKeyCipher.update(bArr5, 3, bArr5.length - 3);
                } else {
                    System.arraycopy(bArr5, 2, bArr3, iBitLength - (bArr5.length - 2), bArr5.length - 2);
                    cipherCreatePublicKeyCipher.update(bArr3);
                }
            }
            try {
                return cipherCreatePublicKeyCipher.doFinal();
            } catch (Exception e) {
                throw new PGPException("exception decrypting session data", e);
            }
        } catch (InvalidKeyException e2) {
            throw new PGPException("error setting asymmetric cipher", e2);
        }
    }
}
