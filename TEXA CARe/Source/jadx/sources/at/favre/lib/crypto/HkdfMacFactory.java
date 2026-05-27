package at.favre.lib.crypto;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public interface HkdfMacFactory {
    Mac createInstance(SecretKey secretKey);

    SecretKey createSecretKey(byte[] bArr);

    int getMacLengthBytes();

    public static final class Default implements HkdfMacFactory {
        private final String macAlgorithmName;
        private final Provider provider;

        public static HkdfMacFactory hmacSha256() {
            return new Default("HmacSHA256", null);
        }

        public static HkdfMacFactory hmacSha512() {
            return new Default("HmacSHA512", null);
        }

        @Deprecated
        public static HkdfMacFactory hmacSha1() {
            return new Default("HmacSHA1", null);
        }

        public Default(String str) {
            this(str, null);
        }

        public Default(String str, Provider provider) {
            this.macAlgorithmName = str;
            this.provider = provider;
        }

        @Override // at.favre.lib.crypto.HkdfMacFactory
        public Mac createInstance(SecretKey secretKey) {
            try {
                Mac macCreateMacInstance = createMacInstance();
                macCreateMacInstance.init(secretKey);
                return macCreateMacInstance;
            } catch (Exception e) {
                throw new IllegalStateException("could not make hmac hasher in hkdf", e);
            }
        }

        private Mac createMacInstance() {
            try {
                Provider provider = this.provider;
                if (provider == null) {
                    return Mac.getInstance(this.macAlgorithmName);
                }
                return Mac.getInstance(this.macAlgorithmName, provider);
            } catch (NoSuchAlgorithmException e) {
                throw new IllegalStateException("defined mac algorithm was not found", e);
            } catch (Exception e2) {
                throw new IllegalStateException("could not create mac instance in hkdf", e2);
            }
        }

        @Override // at.favre.lib.crypto.HkdfMacFactory
        public int getMacLengthBytes() {
            return createMacInstance().getMacLength();
        }

        @Override // at.favre.lib.crypto.HkdfMacFactory
        public SecretKey createSecretKey(byte[] bArr) {
            if (bArr == null || bArr.length <= 0) {
                return null;
            }
            return new SecretKeySpec(bArr, this.macAlgorithmName);
        }
    }
}
