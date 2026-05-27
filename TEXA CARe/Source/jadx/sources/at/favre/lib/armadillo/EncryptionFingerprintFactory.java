package at.favre.lib.armadillo;

import android.content.Context;
import android.content.pm.Signature;
import android.os.Build;
import android.provider.Settings;
import at.favre.lib.armadillo.EncryptionFingerprint;
import at.favre.lib.bytes.Bytes;
import java.io.ByteArrayOutputStream;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public final class EncryptionFingerprintFactory {
    private EncryptionFingerprintFactory() {
    }

    public static EncryptionFingerprint create(Context context, String str) {
        byte[][] bArr = new byte[6][];
        bArr[0] = getApkSignatureHash(context);
        bArr[1] = Bytes.from(getAndroidId(context)).array();
        bArr[2] = Bytes.from(getApplicationPackage(context)).array();
        bArr[3] = Bytes.from(getBuildDetails()).array();
        bArr[4] = BuildConfig.STATIC_RANDOM;
        bArr[5] = (str != null ? Bytes.from(str) : Bytes.empty()).array();
        return new EncryptionFingerprint.Default(Bytes.from(bArr).array());
    }

    private static String getBuildDetails() {
        return Build.DEVICE + Build.MODEL + Build.MANUFACTURER;
    }

    private static String getApplicationPackage(Context context) {
        return String.valueOf(context.getApplicationContext().getPackageName());
    }

    private static String getAndroidId(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null) {
            return string;
        }
        Timber.w("This devices returned null as ANDROID_ID, using fallback. This is not expected and may be a device bug. If this behaviour is non-deterministic, it may disrupt the possibility of decrypting the content.", new Object[0]);
        return BuildConfig.ANDROID_ID_FALLBACK;
    }

    private static byte[] getApkSignatureHash(Context context) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                for (Signature signature : context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures) {
                    byteArrayOutputStream.write(signature.toByteArray());
                }
                byte[] bArrArray = Bytes.wrap(byteArrayOutputStream.toByteArray()).hashSha256().array();
                byteArrayOutputStream.close();
                return bArrArray;
            } finally {
            }
        } catch (Exception e) {
            throw new IllegalStateException("could not get apk signature hash", e);
        }
    }
}
