package at.favre.lib.armadillo;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface AuthenticatedEncryption {
    public static final int STRENGTH_HIGH = 0;
    public static final int STRENGTH_VERY_HIGH = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface KeyStrength {
    }

    int byteSizeLength(int i);

    byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws AuthenticatedEncryptionException;

    byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) throws AuthenticatedEncryptionException;
}
