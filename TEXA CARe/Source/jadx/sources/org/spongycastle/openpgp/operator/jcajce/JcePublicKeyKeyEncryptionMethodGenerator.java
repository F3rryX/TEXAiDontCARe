package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyAgreement;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.jcajce.spec.UserKeyingMaterialSpec;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPPad;
import org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.RFC6637Utils;

/* JADX INFO: loaded from: classes3.dex */
public class JcePublicKeyKeyEncryptionMethodGenerator extends PublicKeyKeyEncryptionMethodGenerator {
    private JcaPGPDigestCalculatorProviderBuilder digestCalculatorProviderBuilder;
    private OperatorHelper helper;
    private JcaPGPKeyConverter keyConverter;
    private SecureRandom random;

    public JcePublicKeyKeyEncryptionMethodGenerator(PGPPublicKey pGPPublicKey) {
        super(pGPPublicKey);
        this.helper = new OperatorHelper(new DefaultJcaJceHelper());
        this.keyConverter = new JcaPGPKeyConverter();
        this.digestCalculatorProviderBuilder = new JcaPGPDigestCalculatorProviderBuilder();
    }

    public JcePublicKeyKeyEncryptionMethodGenerator setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        this.keyConverter.setProvider(provider);
        return this;
    }

    public JcePublicKeyKeyEncryptionMethodGenerator setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        this.keyConverter.setProvider(str);
        return this;
    }

    public JcePublicKeyKeyEncryptionMethodGenerator setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }

    @Override // org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator
    protected byte[] encryptSessionInfo(PGPPublicKey pGPPublicKey, byte[] bArr) throws PGPException {
        try {
            if (pGPPublicKey.getAlgorithm() == 18) {
                ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) pGPPublicKey.getPublicKeyPacket().getKey();
                X9ECParameters x9Parameters = PGPUtil.getX9Parameters(eCDHPublicBCPGKey.getCurveOID());
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.helper.createAlgorithmParameters("EC");
                algorithmParametersCreateAlgorithmParameters.init(new X962Parameters(eCDHPublicBCPGKey.getCurveOID()).getEncoded());
                KeyPairGenerator keyPairGeneratorCreateKeyPairGenerator = this.helper.createKeyPairGenerator("EC");
                keyPairGeneratorCreateKeyPairGenerator.initialize(algorithmParametersCreateAlgorithmParameters.getParameterSpec(AlgorithmParameterSpec.class));
                KeyPair keyPairGenerateKeyPair = keyPairGeneratorCreateKeyPairGenerator.generateKeyPair();
                KeyAgreement keyAgreementCreateKeyAgreement = this.helper.createKeyAgreement(RFC6637Utils.getAgreementAlgorithm(pGPPublicKey.getPublicKeyPacket()));
                keyAgreementCreateKeyAgreement.init(keyPairGenerateKeyPair.getPrivate(), new UserKeyingMaterialSpec(RFC6637Utils.createUserKeyingMaterial(pGPPublicKey.getPublicKeyPacket(), new JcaKeyFingerprintCalculator())));
                keyAgreementCreateKeyAgreement.doPhase(this.keyConverter.getPublicKey(pGPPublicKey), true);
                SecretKey secretKeyGenerateSecret = keyAgreementCreateKeyAgreement.generateSecret(RFC6637Utils.getKeyEncryptionOID(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm()).getId());
                Cipher cipherCreateKeyWrapper = this.helper.createKeyWrapper(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
                cipherCreateKeyWrapper.init(3, secretKeyGenerateSecret, this.random);
                byte[] bArrWrap = cipherCreateKeyWrapper.wrap(new SecretKeySpec(PGPPad.padSessionData(bArr), PGPUtil.getSymmetricCipherName(bArr[0])));
                byte[] encoded = new MPInteger(new BigInteger(1, new X9ECPoint(x9Parameters.getCurve(), SubjectPublicKeyInfo.getInstance(keyPairGenerateKeyPair.getPublic().getEncoded()).getPublicKeyData().getBytes()).getPoint().getEncoded(false))).getEncoded();
                byte[] bArr2 = new byte[encoded.length + 1 + bArrWrap.length];
                System.arraycopy(encoded, 0, bArr2, 0, encoded.length);
                bArr2[encoded.length] = (byte) bArrWrap.length;
                System.arraycopy(bArrWrap, 0, bArr2, encoded.length + 1, bArrWrap.length);
                return bArr2;
            }
            Cipher cipherCreatePublicKeyCipher = this.helper.createPublicKeyCipher(pGPPublicKey.getAlgorithm());
            cipherCreatePublicKeyCipher.init(1, this.keyConverter.getPublicKey(pGPPublicKey), this.random);
            return cipherCreatePublicKeyCipher.doFinal(bArr);
        } catch (IOException e) {
            throw new PGPException("unable to encode MPI: " + e.getMessage(), e);
        } catch (InvalidKeyException e2) {
            throw new PGPException("key invalid: " + e2.getMessage(), e2);
        } catch (BadPaddingException e3) {
            throw new PGPException("bad padding: " + e3.getMessage(), e3);
        } catch (IllegalBlockSizeException e4) {
            throw new PGPException("illegal block size: " + e4.getMessage(), e4);
        } catch (GeneralSecurityException e5) {
            throw new PGPException("unable to set up ephemeral keys: " + e5.getMessage(), e5);
        }
    }
}
