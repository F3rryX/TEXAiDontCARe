package at.favre.lib.armadillo;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import java.text.Normalizer;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class HkdfMessageDigest implements StringMessageDigest {
    private final int outLength;
    private final byte[] salt;

    HkdfMessageDigest(byte[] bArr, int i) {
        Objects.requireNonNull(bArr);
        this.salt = bArr;
        this.outLength = i;
    }

    @Override // at.favre.lib.armadillo.StringMessageDigest
    public String derive(String str, String str2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        return Bytes.wrap(HKDF.fromHmacSha512().extractAndExpand(this.salt, Bytes.from(str, Normalizer.Form.NFKD).array(), Bytes.from(str2, Normalizer.Form.NFKD).array(), this.outLength)).encodeHex();
    }
}
