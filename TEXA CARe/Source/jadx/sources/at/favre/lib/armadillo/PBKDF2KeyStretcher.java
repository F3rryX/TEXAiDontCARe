package at.favre.lib.armadillo;

import android.os.StrictMode;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class PBKDF2KeyStretcher implements KeyStretchingFunction {
    private static final String PBKDF2_ALGORITHM = "PBKDF2WithHmacSHA1";
    private static final int PBKDF2_DEFAULT_ITERATIONS = 10000;
    private static final int PBKDF2_MIN_ITERATIONS = 1000;
    private final int iterations;
    private final Provider provider;

    public PBKDF2KeyStretcher() {
        this(10000, null);
    }

    public PBKDF2KeyStretcher(int i, Provider provider) {
        this.iterations = Math.max(1000, i);
        this.provider = provider;
    }

    @Override // at.favre.lib.armadillo.KeyStretchingFunction
    public byte[] stretch(byte[] bArr, char[] cArr, int i) {
        try {
            return pbkdf2(this.provider, cArr, bArr, this.iterations, i);
        } catch (Exception e) {
            throw new IllegalStateException("could not stretch with pbkdf2", e);
        }
    }

    private static byte[] pbkdf2(Provider provider, char[] cArr, byte[] bArr, int i, int i2) throws InvalidKeySpecException, NoSuchAlgorithmException {
        StrictMode.noteSlowCall("pbkdf2 is a very expensive call and should not be done on the main thread");
        return (provider != null ? SecretKeyFactory.getInstance(PBKDF2_ALGORITHM, provider) : SecretKeyFactory.getInstance(PBKDF2_ALGORITHM)).generateSecret(new PBEKeySpec(cArr, bArr, i, i2 * 8)).getEncoded();
    }
}
