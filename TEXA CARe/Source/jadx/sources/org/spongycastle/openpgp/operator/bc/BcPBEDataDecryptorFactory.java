package org.spongycastle.openpgp.operator.bc;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PBEDataDecryptorFactory;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;

/* JADX INFO: loaded from: classes3.dex */
public class BcPBEDataDecryptorFactory extends PBEDataDecryptorFactory {
    public BcPBEDataDecryptorFactory(char[] cArr, BcPGPDigestCalculatorProvider bcPGPDigestCalculatorProvider) {
        super(cArr, bcPGPDigestCalculatorProvider);
    }

    @Override // org.spongycastle.openpgp.operator.PBEDataDecryptorFactory
    public byte[] recoverSessionData(int i, byte[] bArr, byte[] bArr2) throws PGPException {
        if (bArr2 != null) {
            try {
                if (bArr2.length > 0) {
                    BlockCipher blockCipherCreateBlockCipher = BcImplProvider.createBlockCipher(i);
                    BufferedBlockCipher bufferedBlockCipherCreateSymmetricKeyWrapper = BcUtil.createSymmetricKeyWrapper(false, blockCipherCreateBlockCipher, bArr, new byte[blockCipherCreateBlockCipher.getBlockSize()]);
                    byte[] bArr3 = new byte[bArr2.length];
                    bufferedBlockCipherCreateSymmetricKeyWrapper.doFinal(bArr3, bufferedBlockCipherCreateSymmetricKeyWrapper.processBytes(bArr2, 0, bArr2.length, bArr3, 0));
                    return bArr3;
                }
            } catch (Exception e) {
                throw new PGPException("Exception recovering session info", e);
            }
        }
        byte[] bArr4 = new byte[bArr.length + 1];
        bArr4[0] = (byte) i;
        System.arraycopy(bArr, 0, bArr4, 1, bArr.length);
        return bArr4;
    }

    @Override // org.spongycastle.openpgp.operator.PGPDataDecryptorFactory
    public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
        return BcUtil.createDataDecryptor(z, BcImplProvider.createBlockCipher(i), bArr);
    }
}
