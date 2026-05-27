package org.spongycastle.openpgp.operator.bc;

import java.io.IOException;
import org.spongycastle.bcpg.BCPGKey;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.RSAPublicBCPGKey;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;

/* JADX INFO: loaded from: classes3.dex */
public class BcKeyFingerprintCalculator implements KeyFingerPrintCalculator {
    @Override // org.spongycastle.openpgp.operator.KeyFingerPrintCalculator
    public byte[] calculateFingerprint(PublicKeyPacket publicKeyPacket) throws PGPException {
        Digest mD5Digest;
        BCPGKey key = publicKeyPacket.getKey();
        if (publicKeyPacket.getVersion() <= 3) {
            RSAPublicBCPGKey rSAPublicBCPGKey = (RSAPublicBCPGKey) key;
            try {
                mD5Digest = new MD5Digest();
                byte[] encoded = new MPInteger(rSAPublicBCPGKey.getModulus()).getEncoded();
                mD5Digest.update(encoded, 2, encoded.length - 2);
                byte[] encoded2 = new MPInteger(rSAPublicBCPGKey.getPublicExponent()).getEncoded();
                mD5Digest.update(encoded2, 2, encoded2.length - 2);
            } catch (IOException e) {
                throw new PGPException("can't encode key components: " + e.getMessage(), e);
            }
        } else {
            try {
                byte[] encodedContents = publicKeyPacket.getEncodedContents();
                SHA1Digest sHA1Digest = new SHA1Digest();
                sHA1Digest.update((byte) -103);
                sHA1Digest.update((byte) (encodedContents.length >> 8));
                sHA1Digest.update((byte) encodedContents.length);
                sHA1Digest.update(encodedContents, 0, encodedContents.length);
                mD5Digest = sHA1Digest;
            } catch (IOException e2) {
                throw new PGPException("can't encode key components: " + e2.getMessage(), e2);
            }
        }
        byte[] bArr = new byte[mD5Digest.getDigestSize()];
        mD5Digest.doFinal(bArr, 0);
        return bArr;
    }
}
