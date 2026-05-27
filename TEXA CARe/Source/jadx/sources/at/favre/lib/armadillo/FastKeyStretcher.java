package at.favre.lib.armadillo;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import java.text.Normalizer;

/* JADX INFO: loaded from: classes.dex */
public final class FastKeyStretcher implements KeyStretchingFunction {
    @Override // at.favre.lib.armadillo.KeyStretchingFunction
    public byte[] stretch(byte[] bArr, char[] cArr, int i) {
        return HKDF.fromHmacSha256().extractAndExpand(bArr, Bytes.from(String.valueOf(cArr), Normalizer.Form.NFKD).array(), "FastKeyStretcher".getBytes(), i);
    }
}
