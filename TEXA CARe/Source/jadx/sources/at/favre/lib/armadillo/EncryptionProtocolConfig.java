package at.favre.lib.armadillo;

import at.favre.lib.armadillo.DataObfuscator;
import at.favre.lib.armadillo.HkdfXorObfuscator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class EncryptionProtocolConfig {
    public final AuthenticatedEncryption authenticatedEncryption;
    public final Compressor compressor;
    public final DataObfuscator.Factory dataObfuscatorFactory;
    public final int keyStrength;
    public final KeyStretchingFunction keyStretchingFunction;
    public final int protocolVersion;

    private EncryptionProtocolConfig(Builder builder) {
        this.protocolVersion = builder.protocolVersion;
        this.authenticatedEncryption = builder.authenticatedEncryption;
        this.keyStrength = builder.keyStrength;
        this.keyStretchingFunction = builder.keyStretchingFunction;
        this.dataObfuscatorFactory = builder.dataObfuscatorFactory;
        this.compressor = builder.compressor;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static Builder newBuilder(EncryptionProtocolConfig encryptionProtocolConfig) {
        Builder builder = new Builder();
        builder.protocolVersion = encryptionProtocolConfig.protocolVersion;
        builder.authenticatedEncryption = encryptionProtocolConfig.authenticatedEncryption;
        builder.keyStrength = encryptionProtocolConfig.keyStrength;
        builder.keyStretchingFunction = encryptionProtocolConfig.keyStretchingFunction;
        builder.dataObfuscatorFactory = encryptionProtocolConfig.dataObfuscatorFactory;
        builder.compressor = encryptionProtocolConfig.compressor;
        return builder;
    }

    public static Builder newDefaultConfig() {
        return newBuilder().protocolVersion(0).keyStretchingFunction(new ArmadilloBcryptKeyStretcher()).keyStrength(0).compressor(new DisabledCompressor()).dataObfuscatorFactory(new HkdfXorObfuscator.Factory());
    }

    public static final class Builder {
        private AuthenticatedEncryption authenticatedEncryption;
        private Compressor compressor;
        private DataObfuscator.Factory dataObfuscatorFactory;
        private int keyStrength;
        private KeyStretchingFunction keyStretchingFunction;
        private int protocolVersion;

        private Builder() {
            this.keyStrength = 0;
        }

        public Builder protocolVersion(int i) {
            this.protocolVersion = i;
            return this;
        }

        public Builder authenticatedEncryption(AuthenticatedEncryption authenticatedEncryption) {
            this.authenticatedEncryption = authenticatedEncryption;
            return this;
        }

        public Builder keyStrength(int i) {
            this.keyStrength = i;
            return this;
        }

        public Builder keyStretchingFunction(KeyStretchingFunction keyStretchingFunction) {
            this.keyStretchingFunction = keyStretchingFunction;
            return this;
        }

        public Builder dataObfuscatorFactory(DataObfuscator.Factory factory) {
            this.dataObfuscatorFactory = factory;
            return this;
        }

        public Builder compressor(Compressor compressor) {
            this.compressor = compressor;
            return this;
        }

        public EncryptionProtocolConfig build() {
            Objects.requireNonNull(this.keyStretchingFunction);
            Objects.requireNonNull(this.dataObfuscatorFactory);
            return new EncryptionProtocolConfig(this);
        }
    }
}
