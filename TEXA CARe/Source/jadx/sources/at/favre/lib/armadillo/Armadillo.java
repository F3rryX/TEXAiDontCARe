package at.favre.lib.armadillo;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import at.favre.lib.armadillo.DataObfuscator;
import at.favre.lib.armadillo.DefaultEncryptionProtocol;
import at.favre.lib.armadillo.EncryptionFingerprint;
import at.favre.lib.armadillo.EncryptionProtocolConfig;
import at.favre.lib.armadillo.SimpleRecoveryPolicy;
import at.favre.lib.bytes.Bytes;
import java.security.Provider;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Armadillo {
    public static final int CONTENT_KEY_OUT_BYTE_LENGTH = 20;
    public static final int DEFAULT_PROTOCOL_VERSION = 0;
    public static final int KITKAT_PROTOCOL_VERSION = -19;

    private Armadillo() {
    }

    public static Builder create(SharedPreferences sharedPreferences) {
        return new Builder(sharedPreferences);
    }

    public static Builder create(Context context, String str) {
        return new Builder(context, str);
    }

    public static final class Builder {
        private List<EncryptionProtocolConfig> additionalDecryptionConfigs;
        private final Context context;
        private EncryptionProtocolConfig.Builder defaultConfig;
        private boolean enableDerivedPasswordCache;
        private boolean enableKitKatSupport;
        private EncryptionFingerprint fingerprint;
        private char[] password;
        private final String prefName;
        private Provider provider;
        private RecoveryPolicy recoveryPolicy;
        private SecureRandom secureRandom;
        private final SharedPreferences sharedPreferences;
        private StringMessageDigest stringMessageDigest;
        private boolean supportVerifyPassword;

        private Builder(SharedPreferences sharedPreferences) {
            this(sharedPreferences, (Context) null, (String) null);
        }

        private Builder(Context context, String str) {
            this((SharedPreferences) null, context, str);
        }

        private Builder(SharedPreferences sharedPreferences, Context context, String str) {
            this.stringMessageDigest = new HkdfMessageDigest(BuildConfig.PREF_SALT, 20);
            this.defaultConfig = EncryptionProtocolConfig.newDefaultConfig();
            this.additionalDecryptionConfigs = new ArrayList(2);
            this.secureRandom = new SecureRandom();
            this.recoveryPolicy = new SimpleRecoveryPolicy.Default(true, false);
            this.supportVerifyPassword = false;
            this.enableDerivedPasswordCache = false;
            this.enableKitKatSupport = false;
            this.sharedPreferences = sharedPreferences;
            this.context = context;
            this.prefName = str;
        }

        public Builder encryptionFingerprint(Context context) {
            return encryptionFingerprint(context, (String[]) null);
        }

        public Builder encryptionFingerprint(Context context, byte[] bArr) {
            return encryptionFingerprint(context, Bytes.wrap(bArr).encodeBase64());
        }

        public Builder encryptionFingerprint(Context context, String... strArr) {
            Objects.requireNonNull(context);
            StringBuilder sb = new StringBuilder();
            if (strArr != null) {
                for (String str : strArr) {
                    sb.append(str);
                }
            }
            this.fingerprint = EncryptionFingerprintFactory.create(context, sb.toString());
            return this;
        }

        public Builder encryptionFingerprint(EncryptionFingerprint encryptionFingerprint) {
            Objects.requireNonNull(encryptionFingerprint);
            this.fingerprint = encryptionFingerprint;
            return this;
        }

        public Builder encryptionFingerprint(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.fingerprint = new EncryptionFingerprint.Default(bArr);
            return this;
        }

        public Builder contentKeyDigest(byte[] bArr) {
            return contentKeyDigest(new HkdfMessageDigest(bArr, 20));
        }

        public Builder contentKeyDigest(int i) {
            return contentKeyDigest(new HkdfMessageDigest(BuildConfig.PREF_SALT, i));
        }

        public Builder contentKeyDigest(StringMessageDigest stringMessageDigest) {
            Objects.requireNonNull(stringMessageDigest);
            this.stringMessageDigest = stringMessageDigest;
            return this;
        }

        public Builder encryptionKeyStrength(int i) {
            this.defaultConfig.keyStrength(i);
            return this;
        }

        public Builder securityProvider(Provider provider) {
            this.provider = provider;
            return this;
        }

        public Builder symmetricEncryption(AuthenticatedEncryption authenticatedEncryption) {
            EncryptionProtocolConfig.Builder builder = this.defaultConfig;
            Objects.requireNonNull(authenticatedEncryption);
            builder.authenticatedEncryption(authenticatedEncryption);
            return this;
        }

        public Builder keyStretchingFunction(KeyStretchingFunction keyStretchingFunction) {
            EncryptionProtocolConfig.Builder builder = this.defaultConfig;
            Objects.requireNonNull(keyStretchingFunction);
            builder.keyStretchingFunction(keyStretchingFunction);
            return this;
        }

        public Builder dataObfuscatorFactory(DataObfuscator.Factory factory) {
            EncryptionProtocolConfig.Builder builder = this.defaultConfig;
            Objects.requireNonNull(factory);
            builder.dataObfuscatorFactory(factory);
            return this;
        }

        public Builder secureRandom(SecureRandom secureRandom) {
            Objects.requireNonNull(secureRandom);
            this.secureRandom = secureRandom;
            return this;
        }

        public Builder recoveryPolicy(boolean z, boolean z2) {
            this.recoveryPolicy = new SimpleRecoveryPolicy.Default(z, z2);
            return this;
        }

        public Builder recoveryPolicy(RecoveryPolicy recoveryPolicy) {
            Objects.requireNonNull(recoveryPolicy);
            this.recoveryPolicy = recoveryPolicy;
            return this;
        }

        public Builder password(char[] cArr) {
            if (cArr == null || cArr.length == 0) {
                cArr = null;
            }
            this.password = cArr;
            return this;
        }

        public Builder supportVerifyPassword(boolean z) {
            this.supportVerifyPassword = z;
            return this;
        }

        public Builder cryptoProtocolVersion(int i) {
            this.defaultConfig.protocolVersion(i);
            return this;
        }

        public Builder enableDerivedPasswordCache(boolean z) {
            this.enableDerivedPasswordCache = z;
            return this;
        }

        public Builder compress() {
            return compress(new GzipCompressor());
        }

        public Builder compress(Compressor compressor) {
            this.defaultConfig.compressor(compressor);
            return this;
        }

        public Builder addAdditionalDecryptionProtocolConfig(EncryptionProtocolConfig encryptionProtocolConfig) {
            this.additionalDecryptionConfigs.add(encryptionProtocolConfig);
            return this;
        }

        public Builder clearAdditionalDecryptionProtocolConfigs() {
            this.additionalDecryptionConfigs.clear();
            return this;
        }

        public Builder enableKitKatSupport(boolean z) {
            this.enableKitKatSupport = z;
            return this;
        }

        public ArmadilloSharedPreferences build() {
            if (this.fingerprint == null) {
                throw new IllegalArgumentException("No encryption fingerprint is set - see encryptionFingerprint() methods");
            }
            EncryptionProtocolConfig encryptionProtocolConfigBuild = this.defaultConfig.build();
            if (this.enableKitKatSupport) {
                if (encryptionProtocolConfigBuild.authenticatedEncryption != null) {
                    throw new IllegalStateException("enabling kitkat support will prevent using custom encryption implementation");
                }
                EncryptionProtocolConfig encryptionProtocolConfigBuild2 = EncryptionProtocolConfig.newBuilder(encryptionProtocolConfigBuild).authenticatedEncryption(new AesCbcEncryption(this.secureRandom, this.provider)).protocolVersion(-19).build();
                this.additionalDecryptionConfigs.add(encryptionProtocolConfigBuild2);
                if (Build.VERSION.SDK_INT < 21) {
                    encryptionProtocolConfigBuild = encryptionProtocolConfigBuild2;
                }
            }
            if (encryptionProtocolConfigBuild.authenticatedEncryption == null) {
                encryptionProtocolConfigBuild = EncryptionProtocolConfig.newBuilder(encryptionProtocolConfigBuild).authenticatedEncryption(new AesGcmEncryption(this.secureRandom, this.provider)).build();
            }
            DefaultEncryptionProtocol.Factory factory = new DefaultEncryptionProtocol.Factory(encryptionProtocolConfigBuild, this.fingerprint, this.stringMessageDigest, this.secureRandom, this.enableDerivedPasswordCache, Collections.unmodifiableList(this.additionalDecryptionConfigs));
            checkKitKatSupport(encryptionProtocolConfigBuild.authenticatedEncryption);
            SharedPreferences sharedPreferences = this.sharedPreferences;
            if (sharedPreferences != null) {
                return new SecureSharedPreferences(sharedPreferences, factory, this.recoveryPolicy, this.password, this.supportVerifyPassword);
            }
            return new SecureSharedPreferences(this.context, this.prefName, factory, this.recoveryPolicy, this.password, this.supportVerifyPassword);
        }

        private void checkKitKatSupport(AuthenticatedEncryption authenticatedEncryption) {
            if (Build.VERSION.SDK_INT == 19 && authenticatedEncryption.getClass().equals(AesGcmEncryption.class)) {
                throw new UnsupportedOperationException("aes gcm is not supported with KitKat, add support manually with Armadillo.Builder.enableKitKatSupport()");
            }
        }
    }
}
