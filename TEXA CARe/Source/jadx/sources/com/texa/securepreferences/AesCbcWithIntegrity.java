package com.texa.securepreferences;

import android.os.Build;
import android.os.Process;
import android.util.Base64;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes2.dex */
public class AesCbcWithIntegrity {
    private static final int AES_KEY_LENGTH_BITS = 128;
    private static final boolean ALLOW_BROKEN_PRNG = true;
    public static final int BASE64_FLAGS = 2;
    private static final String CIPHER = "AES";
    private static final String CIPHER_TRANSFORMATION = "AES/CBC/PKCS5Padding";
    private static final String HMAC_ALGORITHM = "HmacSHA256";
    private static final int HMAC_KEY_LENGTH_BITS = 256;
    private static final int IV_LENGTH_BYTES = 16;
    private static final String PBE_ALGORITHM = "PBKDF2WithHmacSHA1";
    private static final int PBE_ITERATION_COUNT = 10000;
    private static final int PBE_SALT_LENGTH_BITS = 128;
    private static final String RANDOM_ALGORITHM = "SHA1PRNG";
    static final AtomicBoolean prngFixed = new AtomicBoolean(false);
    private static final Provider mSpongyProvider = new BouncyCastleProvider();

    static {
        Security.insertProviderAt(new BouncyCastleProvider(), 1);
    }

    public static String keyString(SecretKeys secretKeys) {
        return secretKeys.toString();
    }

    public static SecretKeys keys(String str) throws InvalidKeyException {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Cannot parse aesKey:hmacKey");
        }
        byte[] bArrDecode = Base64.decode(strArrSplit[0], 2);
        if (bArrDecode.length != 16) {
            throw new InvalidKeyException("Base64 decoded key is not 128 bytes");
        }
        byte[] bArrDecode2 = Base64.decode(strArrSplit[1], 2);
        if (bArrDecode2.length != 32) {
            throw new InvalidKeyException("Base64 decoded key is not 256 bytes");
        }
        return new SecretKeys(new SecretKeySpec(bArrDecode, 0, bArrDecode.length, CIPHER), new SecretKeySpec(bArrDecode2, HMAC_ALGORITHM));
    }

    public static SecretKeys generateKey() throws GeneralSecurityException {
        fixPrng();
        KeyGenerator keyGenerator = KeyGenerator.getInstance(CIPHER);
        keyGenerator.init(128);
        return new SecretKeys(keyGenerator.generateKey(), new SecretKeySpec(randomBytes(32), HMAC_ALGORITHM));
    }

    public static SecretKeys generateKeyFromPassword(String str, byte[] bArr) throws GeneralSecurityException {
        SecretKeyFactory secretKeyFactory;
        fixPrng();
        PBEKeySpec pBEKeySpec = new PBEKeySpec(str.toCharArray(), bArr, 10000, 384);
        try {
            secretKeyFactory = SecretKeyFactory.getInstance(PBE_ALGORITHM);
        } catch (NoSuchAlgorithmException unused) {
            secretKeyFactory = SecretKeyFactory.getInstance(PBE_ALGORITHM, mSpongyProvider);
        }
        byte[] encoded = secretKeyFactory.generateSecret(pBEKeySpec).getEncoded();
        return new SecretKeys(new SecretKeySpec(copyOfRange(encoded, 0, 16), CIPHER), new SecretKeySpec(copyOfRange(encoded, 16, 48), HMAC_ALGORITHM));
    }

    public static SecretKeys generateKeyFromPassword(String str, String str2) throws GeneralSecurityException {
        return generateKeyFromPassword(str, Base64.decode(str2, 2));
    }

    public static byte[] generateSalt() throws GeneralSecurityException {
        return randomBytes(128);
    }

    public static String saltString(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    public static byte[] generateIv() throws GeneralSecurityException {
        return randomBytes(16);
    }

    private static byte[] randomBytes(int i) throws GeneralSecurityException {
        fixPrng();
        byte[] bArr = new byte[i];
        SecureRandom.getInstance(RANDOM_ALGORITHM).nextBytes(bArr);
        return bArr;
    }

    public static CipherTextIvMac encrypt(String str, SecretKeys secretKeys) throws GeneralSecurityException, UnsupportedEncodingException {
        return encrypt(str, secretKeys, "UTF-8");
    }

    public static CipherTextIvMac encrypt(String str, SecretKeys secretKeys, String str2) throws GeneralSecurityException, UnsupportedEncodingException {
        return encrypt(str.getBytes(str2), secretKeys);
    }

    public static CipherTextIvMac encrypt(byte[] bArr, SecretKeys secretKeys) throws GeneralSecurityException {
        byte[] bArrGenerateIv = generateIv();
        Cipher cipher = Cipher.getInstance(CIPHER_TRANSFORMATION);
        cipher.init(1, secretKeys.getConfidentialityKey(), new IvParameterSpec(bArrGenerateIv));
        byte[] iv = cipher.getIV();
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        return new CipherTextIvMac(bArrDoFinal, iv, generateMac(CipherTextIvMac.ivCipherConcat(iv, bArrDoFinal), secretKeys.getIntegrityKey()));
    }

    private static void fixPrng() {
        AtomicBoolean atomicBoolean = prngFixed;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (PrngFixes.class) {
            if (!atomicBoolean.get()) {
                PrngFixes.apply();
                atomicBoolean.set(true);
            }
        }
    }

    public static String decryptString(CipherTextIvMac cipherTextIvMac, SecretKeys secretKeys, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        return new String(decrypt(cipherTextIvMac, secretKeys), str);
    }

    public static String decryptString(CipherTextIvMac cipherTextIvMac, SecretKeys secretKeys) throws GeneralSecurityException, UnsupportedEncodingException {
        return decryptString(cipherTextIvMac, secretKeys, "UTF-8");
    }

    public static byte[] decrypt(CipherTextIvMac cipherTextIvMac, SecretKeys secretKeys) throws GeneralSecurityException {
        if (constantTimeEq(generateMac(CipherTextIvMac.ivCipherConcat(cipherTextIvMac.getIv(), cipherTextIvMac.getCipherText()), secretKeys.getIntegrityKey()), cipherTextIvMac.getMac())) {
            Cipher cipher = Cipher.getInstance(CIPHER_TRANSFORMATION);
            cipher.init(2, secretKeys.getConfidentialityKey(), new IvParameterSpec(cipherTextIvMac.getIv()));
            return cipher.doFinal(cipherTextIvMac.getCipherText());
        }
        throw new GeneralSecurityException("MAC stored in civ does not match computed MAC.");
    }

    public static byte[] generateMac(byte[] bArr, SecretKey secretKey) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance(HMAC_ALGORITHM);
        mac.init(secretKey);
        return mac.doFinal(bArr);
    }

    public static boolean constantTimeEq(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0;
    }

    private static byte[] copyOfRange(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }

    public static class SecretKeys {
        private SecretKey confidentialityKey;
        private SecretKey integrityKey;

        public SecretKeys(SecretKey secretKey, SecretKey secretKey2) {
            setConfidentialityKey(secretKey);
            setIntegrityKey(secretKey2);
        }

        public SecretKey getConfidentialityKey() {
            return this.confidentialityKey;
        }

        public void setConfidentialityKey(SecretKey secretKey) {
            this.confidentialityKey = secretKey;
        }

        public SecretKey getIntegrityKey() {
            return this.integrityKey;
        }

        public void setIntegrityKey(SecretKey secretKey) {
            this.integrityKey = secretKey;
        }

        public String toString() {
            return Base64.encodeToString(getConfidentialityKey().getEncoded(), 2) + ":" + Base64.encodeToString(getIntegrityKey().getEncoded(), 2);
        }

        public int hashCode() {
            return ((this.confidentialityKey.hashCode() + 31) * 31) + this.integrityKey.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SecretKeys secretKeys = (SecretKeys) obj;
            return this.integrityKey.equals(secretKeys.integrityKey) && this.confidentialityKey.equals(secretKeys.confidentialityKey);
        }
    }

    public static class CipherTextIvMac {
        private final byte[] cipherText;
        private final byte[] iv;
        private final byte[] mac;

        public CipherTextIvMac(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            byte[] bArr4 = new byte[bArr.length];
            this.cipherText = bArr4;
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            byte[] bArr5 = new byte[bArr2.length];
            this.iv = bArr5;
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
            byte[] bArr6 = new byte[bArr3.length];
            this.mac = bArr6;
            System.arraycopy(bArr3, 0, bArr6, 0, bArr3.length);
        }

        public CipherTextIvMac(String str) {
            String[] strArrSplit = str.split(":");
            if (strArrSplit.length != 3) {
                throw new IllegalArgumentException("Cannot parse iv:ciphertext:mac");
            }
            this.iv = Base64.decode(strArrSplit[0], 2);
            this.mac = Base64.decode(strArrSplit[1], 2);
            this.cipherText = Base64.decode(strArrSplit[2], 2);
        }

        public static byte[] ivCipherConcat(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }

        public byte[] getCipherText() {
            return this.cipherText;
        }

        public byte[] getIv() {
            return this.iv;
        }

        public byte[] getMac() {
            return this.mac;
        }

        public String toString() {
            String strEncodeToString = Base64.encodeToString(this.iv, 2);
            String strEncodeToString2 = Base64.encodeToString(this.cipherText, 2);
            return String.format(strEncodeToString + ":" + Base64.encodeToString(this.mac, 2) + ":" + strEncodeToString2, new Object[0]);
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.cipherText) + 31) * 31) + Arrays.hashCode(this.iv)) * 31) + Arrays.hashCode(this.mac);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            CipherTextIvMac cipherTextIvMac = (CipherTextIvMac) obj;
            return Arrays.equals(this.cipherText, cipherTextIvMac.cipherText) && Arrays.equals(this.iv, cipherTextIvMac.iv) && Arrays.equals(this.mac, cipherTextIvMac.mac);
        }
    }

    public static final class PrngFixes {
        private static final byte[] BUILD_FINGERPRINT_AND_DEVICE_SERIAL = getBuildFingerprintAndDeviceSerial();
        private static final int VERSION_CODE_JELLY_BEAN = 16;
        private static final int VERSION_CODE_JELLY_BEAN_MR2 = 18;

        private PrngFixes() {
        }

        public static void apply() {
            applyOpenSSLFix();
            installLinuxPRNGSecureRandom();
        }

        private static void applyOpenSSLFix() throws SecurityException {
            if (Build.VERSION.SDK_INT < 16 || Build.VERSION.SDK_INT > 18) {
                return;
            }
            try {
                Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", byte[].class).invoke(null, generateSeed());
                int iIntValue = ((Integer) Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", String.class, Long.TYPE).invoke(null, "/dev/urandom", 1024)).intValue();
                if (iIntValue == 1024) {
                    return;
                }
                throw new IOException("Unexpected number of bytes read from Linux PRNG: " + iIntValue);
            } catch (Exception e) {
                Log.w(PrngFixes.class.getSimpleName(), "Failed to seed OpenSSL PRNG", e);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[Catch: all -> 0x00b6, TryCatch #0 {, blocks: (B:9:0x0015, B:11:0x0018, B:14:0x0033, B:16:0x004c, B:17:0x006c, B:19:0x006e, B:20:0x0074, B:22:0x0088, B:23:0x00a8, B:26:0x00ab, B:27:0x00b4, B:13:0x002b), top: B:32:0x0015, inners: #1 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private static void installLinuxPRNGSecureRandom() throws SecurityException {
            if (Build.VERSION.SDK_INT > 18) {
                return;
            }
            Provider[] providers = Security.getProviders("SecureRandom.SHA1PRNG");
            synchronized (Security.class) {
                if (providers != null) {
                    if (providers.length < 1 || !providers[0].getClass().getSimpleName().equals("LinuxPRNGSecureRandomProvider")) {
                        Security.insertProviderAt(new LinuxPRNGSecureRandomProvider(), 1);
                    }
                    SecureRandom secureRandom = new SecureRandom();
                    if (!secureRandom.getProvider().getClass().getSimpleName().equals("LinuxPRNGSecureRandomProvider")) {
                        Log.w(PrngFixes.class.getSimpleName(), "new SecureRandom() backed by wrong Provider: " + secureRandom.getProvider().getClass());
                        return;
                    }
                    try {
                        SecureRandom secureRandom2 = SecureRandom.getInstance(AesCbcWithIntegrity.RANDOM_ALGORITHM);
                        if (!secureRandom2.getProvider().getClass().getSimpleName().equals("LinuxPRNGSecureRandomProvider")) {
                            Log.w(PrngFixes.class.getSimpleName(), "SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: " + secureRandom2.getProvider().getClass());
                        }
                        return;
                    } catch (NoSuchAlgorithmException e) {
                        Log.w(PrngFixes.class.getSimpleName(), "SHA1PRNG not available", e);
                        return;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] generateSeed() {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeLong(System.currentTimeMillis());
                dataOutputStream.writeLong(System.nanoTime());
                dataOutputStream.writeInt(Process.myPid());
                dataOutputStream.writeInt(Process.myUid());
                dataOutputStream.write(BUILD_FINGERPRINT_AND_DEVICE_SERIAL);
                dataOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new SecurityException("Failed to generate seed", e);
            }
        }

        private static String getDeviceSerialNumber() {
            try {
                return (String) Build.class.getField("SERIAL").get(null);
            } catch (Exception unused) {
                return null;
            }
        }

        private static byte[] getBuildFingerprintAndDeviceSerial() {
            StringBuilder sb = new StringBuilder();
            String str = Build.FINGERPRINT;
            if (str != null) {
                sb.append(str);
            }
            String deviceSerialNumber = getDeviceSerialNumber();
            if (deviceSerialNumber != null) {
                sb.append(deviceSerialNumber);
            }
            try {
                return sb.toString().getBytes("UTF-8");
            } catch (UnsupportedEncodingException unused) {
                throw new RuntimeException("UTF-8 encoding not supported");
            }
        }

        private static class LinuxPRNGSecureRandomProvider extends Provider {
            public LinuxPRNGSecureRandomProvider() {
                super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
                put("SecureRandom.SHA1PRNG", LinuxPRNGSecureRandom.class.getName());
                put("SecureRandom.SHA1PRNG ImplementedIn", ExifInterface.TAG_SOFTWARE);
            }
        }

        public static class LinuxPRNGSecureRandom extends SecureRandomSpi {
            private static final File URANDOM_FILE = new File("/dev/urandom");
            private static final Object sLock = new Object();
            private static DataInputStream sUrandomIn;
            private static OutputStream sUrandomOut;
            private boolean mSeeded;

            @Override // java.security.SecureRandomSpi
            protected void engineSetSeed(byte[] bArr) {
                OutputStream urandomOutputStream;
                try {
                    try {
                        synchronized (sLock) {
                            urandomOutputStream = getUrandomOutputStream();
                        }
                        urandomOutputStream.write(bArr);
                        urandomOutputStream.flush();
                    } catch (IOException unused) {
                        Log.w(PrngFixes.class.getSimpleName(), "Failed to mix seed into " + URANDOM_FILE);
                    }
                } finally {
                    this.mSeeded = true;
                }
            }

            @Override // java.security.SecureRandomSpi
            protected void engineNextBytes(byte[] bArr) {
                DataInputStream urandomInputStream;
                if (!this.mSeeded) {
                    engineSetSeed(PrngFixes.generateSeed());
                }
                try {
                    synchronized (sLock) {
                        urandomInputStream = getUrandomInputStream();
                    }
                    synchronized (urandomInputStream) {
                        urandomInputStream.readFully(bArr);
                    }
                } catch (IOException e) {
                    throw new SecurityException("Failed to read from " + URANDOM_FILE, e);
                }
            }

            @Override // java.security.SecureRandomSpi
            protected byte[] engineGenerateSeed(int i) {
                byte[] bArr = new byte[i];
                engineNextBytes(bArr);
                return bArr;
            }

            private DataInputStream getUrandomInputStream() {
                DataInputStream dataInputStream;
                synchronized (sLock) {
                    if (sUrandomIn == null) {
                        try {
                            sUrandomIn = new DataInputStream(new FileInputStream(URANDOM_FILE));
                        } catch (IOException e) {
                            throw new SecurityException("Failed to open " + URANDOM_FILE + " for reading", e);
                        }
                    }
                    dataInputStream = sUrandomIn;
                }
                return dataInputStream;
            }

            private OutputStream getUrandomOutputStream() throws IOException {
                OutputStream outputStream;
                synchronized (sLock) {
                    if (sUrandomOut == null) {
                        sUrandomOut = new FileOutputStream(URANDOM_FILE);
                    }
                    outputStream = sUrandomOut;
                }
                return outputStream;
            }
        }
    }
}
