package org.spongycastle.openpgp.operator.bc;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.bcpg.ECDHPublicBCPGKey;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.EphemeralKeyPair;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.KeyEncoder;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPPad;
import org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.RFC6637Utils;

/* JADX INFO: loaded from: classes3.dex */
public class BcPublicKeyKeyEncryptionMethodGenerator extends PublicKeyKeyEncryptionMethodGenerator {
    private BcPGPKeyConverter keyConverter;
    private SecureRandom random;

    public BcPublicKeyKeyEncryptionMethodGenerator(PGPPublicKey pGPPublicKey) {
        super(pGPPublicKey);
        this.keyConverter = new BcPGPKeyConverter();
    }

    public BcPublicKeyKeyEncryptionMethodGenerator setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }

    @Override // org.spongycastle.openpgp.operator.PublicKeyKeyEncryptionMethodGenerator
    protected byte[] encryptSessionInfo(PGPPublicKey pGPPublicKey, byte[] bArr) throws PGPException {
        try {
            if (pGPPublicKey.getAlgorithm() != 18) {
                AsymmetricBlockCipher asymmetricBlockCipherCreatePublicKeyCipher = BcImplProvider.createPublicKeyCipher(pGPPublicKey.getAlgorithm());
                AsymmetricKeyParameter publicKey = this.keyConverter.getPublicKey(pGPPublicKey);
                if (this.random == null) {
                    this.random = new SecureRandom();
                }
                asymmetricBlockCipherCreatePublicKeyCipher.init(true, new ParametersWithRandom(publicKey, this.random));
                return asymmetricBlockCipherCreatePublicKeyCipher.processBlock(bArr, 0, bArr.length);
            }
            ECDHPublicBCPGKey eCDHPublicBCPGKey = (ECDHPublicBCPGKey) pGPPublicKey.getPublicKeyPacket().getKey();
            X9ECParameters x9Parameters = BcUtil.getX9Parameters(eCDHPublicBCPGKey.getCurveOID());
            ECDomainParameters eCDomainParameters = new ECDomainParameters(x9Parameters.getCurve(), x9Parameters.getG(), x9Parameters.getN());
            ECKeyPairGenerator eCKeyPairGenerator = new ECKeyPairGenerator();
            eCKeyPairGenerator.init(new ECKeyGenerationParameters(eCDomainParameters, this.random));
            EphemeralKeyPair ephemeralKeyPairGenerate = new EphemeralKeyPairGenerator(eCKeyPairGenerator, new KeyEncoder() { // from class: org.spongycastle.openpgp.operator.bc.BcPublicKeyKeyEncryptionMethodGenerator.1
                @Override // org.spongycastle.crypto.KeyEncoder
                public byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter) {
                    return ((ECPublicKeyParameters) asymmetricKeyParameter).getQ().getEncoded(false);
                }
            }).generate();
            KeyParameter keyParameter = new KeyParameter(new RFC6637KDFCalculator(new BcPGPDigestCalculatorProvider().get(eCDHPublicBCPGKey.getHashAlgorithm()), eCDHPublicBCPGKey.getSymmetricKeyAlgorithm()).createKey(BcUtil.decodePoint(eCDHPublicBCPGKey.getEncodedPoint(), x9Parameters.getCurve()).multiply(((ECPrivateKeyParameters) ephemeralKeyPairGenerate.getKeyPair().getPrivate()).getD()).normalize(), RFC6637Utils.createUserKeyingMaterial(pGPPublicKey.getPublicKeyPacket(), new BcKeyFingerprintCalculator())));
            Wrapper wrapperCreateWrapper = BcImplProvider.createWrapper(eCDHPublicBCPGKey.getSymmetricKeyAlgorithm());
            wrapperCreateWrapper.init(true, new ParametersWithRandom(keyParameter, this.random));
            byte[] bArrPadSessionData = PGPPad.padSessionData(bArr);
            byte[] bArrWrap = wrapperCreateWrapper.wrap(bArrPadSessionData, 0, bArrPadSessionData.length);
            byte[] encoded = new MPInteger(new BigInteger(1, ephemeralKeyPairGenerate.getEncodedPublicKey())).getEncoded();
            byte[] bArr2 = new byte[encoded.length + 1 + bArrWrap.length];
            System.arraycopy(encoded, 0, bArr2, 0, encoded.length);
            bArr2[encoded.length] = (byte) bArrWrap.length;
            System.arraycopy(bArrWrap, 0, bArr2, encoded.length + 1, bArrWrap.length);
            return bArr2;
        } catch (IOException e) {
            throw new PGPException("exception encrypting session info: " + e.getMessage(), e);
        } catch (InvalidCipherTextException e2) {
            throw new PGPException("exception encrypting session info: " + e2.getMessage(), e2);
        }
    }
}
