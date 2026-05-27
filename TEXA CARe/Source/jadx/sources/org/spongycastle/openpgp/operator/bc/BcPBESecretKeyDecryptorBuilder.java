package org.spongycastle.openpgp.operator.bc;

import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBESecretKeyDecryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider;

/* JADX INFO: loaded from: classes3.dex */
public class BcPBESecretKeyDecryptorBuilder {
    private PGPDigestCalculatorProvider calculatorProvider;

    public BcPBESecretKeyDecryptorBuilder(PGPDigestCalculatorProvider pGPDigestCalculatorProvider) {
        this.calculatorProvider = pGPDigestCalculatorProvider;
    }

    public PBESecretKeyDecryptor build(char[] cArr) {
        return new PBESecretKeyDecryptor(cArr, this.calculatorProvider) { // from class: org.spongycastle.openpgp.operator.bc.BcPBESecretKeyDecryptorBuilder.1
            @Override // org.spongycastle.openpgp.operator.PBESecretKeyDecryptor
            public byte[] recoverKeyData(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3) throws PGPException {
                try {
                    BufferedBlockCipher bufferedBlockCipherCreateSymmetricKeyWrapper = BcUtil.createSymmetricKeyWrapper(false, BcImplProvider.createBlockCipher(i), bArr, bArr2);
                    byte[] bArr4 = new byte[i3];
                    bufferedBlockCipherCreateSymmetricKeyWrapper.doFinal(bArr4, bufferedBlockCipherCreateSymmetricKeyWrapper.processBytes(bArr3, i2, i3, bArr4, 0));
                    return bArr4;
                } catch (InvalidCipherTextException e) {
                    throw new PGPException("decryption failed: " + e.getMessage(), e);
                }
            }
        };
    }
}
