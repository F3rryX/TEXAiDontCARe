package at.favre.lib.armadillo;

import android.os.StrictMode;
import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import at.favre.lib.crypto.bcrypt.BCrypt;

/* JADX INFO: loaded from: classes.dex */
final class ArmadilloBcryptKeyStretcher implements KeyStretchingFunction {
    private static final int BCRYPT_DEFAULT_ROUNDS = 12;
    private static final int BCRYPT_MIN_ROUNDS = 8;
    private final int iterations;

    public ArmadilloBcryptKeyStretcher() {
        this(12);
    }

    public ArmadilloBcryptKeyStretcher(int i) {
        this.iterations = Math.max(8, i);
    }

    @Override // at.favre.lib.armadillo.KeyStretchingFunction
    public byte[] stretch(byte[] bArr, char[] cArr, int i) {
        try {
            return HKDF.fromHmacSha256().expand(bcrypt(bArr, cArr, this.iterations), "bcrypt".getBytes(), i);
        } catch (Exception e) {
            throw new IllegalStateException("could not stretch with bcrypt", e);
        }
    }

    private static byte[] bcrypt(byte[] bArr, char[] cArr, int i) {
        StrictMode.noteSlowCall("bcrypt is a very expensive call and should not be done on the main thread");
        Bytes bytesEmpty = Bytes.empty();
        try {
            bytesEmpty = Bytes.from(cArr);
            return BCrypt.with(BCrypt.Version.VERSION_2A).hashRaw(i, HKDF.fromHmacSha256().expand(bArr, "bcrypt-salt".getBytes(), 16), HKDF.fromHmacSha256().expand(bytesEmpty.array(), "bcrypt-pw".getBytes(), 71)).rawHash;
        } finally {
            bytesEmpty.mutable().secureWipe();
        }
    }
}
