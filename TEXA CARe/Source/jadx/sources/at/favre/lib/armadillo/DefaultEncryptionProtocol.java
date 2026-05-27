package at.favre.lib.armadillo;

import at.favre.lib.armadillo.ByteArrayRuntimeObfuscator;
import at.favre.lib.armadillo.DerivedPasswordCache;
import at.favre.lib.armadillo.EncryptionProtocol;
import at.favre.lib.armadillo.EncryptionProtocolConfig;
import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.text.Normalizer;
import java.util.List;
import java.util.Objects;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
final class DefaultEncryptionProtocol implements EncryptionProtocol {
    private static final int CONTENT_SALT_LENGTH_BYTES = 16;
    private static final int CONTENT_SALT_SIZE_LENGTH_BYTES = 1;
    private static final int ENCRYPTED_CONTENT_SIZE_LENGTH_BYTES = 4;
    private static final int PROTOCOL_VERSION_LENGTH_BYTES = 4;
    private static final int STRETCHED_PASSWORD_LENGTH_BYTES = 32;
    private List<EncryptionProtocolConfig> additionalDecryptionConfigs;
    private EncryptionProtocolConfig defaultConfig;
    private final DerivedPasswordCache derivedPasswordCache;
    private final EncryptionFingerprint fingerprint;
    private final int keyLengthBit;
    private final byte[] preferenceSalt;
    private final SecureRandom secureRandom;
    private final StringMessageDigest stringMessageDigest;

    private DefaultEncryptionProtocol(EncryptionProtocolConfig encryptionProtocolConfig, byte[] bArr, EncryptionFingerprint encryptionFingerprint, StringMessageDigest stringMessageDigest, SecureRandom secureRandom, boolean z, List<EncryptionProtocolConfig> list) {
        this.defaultConfig = encryptionProtocolConfig;
        this.preferenceSalt = bArr;
        this.fingerprint = encryptionFingerprint;
        this.stringMessageDigest = stringMessageDigest;
        this.keyLengthBit = encryptionProtocolConfig.authenticatedEncryption.byteSizeLength(encryptionProtocolConfig.keyStrength) * 8;
        this.secureRandom = secureRandom;
        this.derivedPasswordCache = new DerivedPasswordCache.Default(z, secureRandom);
        this.additionalDecryptionConfigs = list;
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public String deriveContentKey(String str) {
        return this.stringMessageDigest.derive(Bytes.from(str).append(this.preferenceSalt).encodeUtf8(), "contentKey");
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public byte[] encrypt(String str, byte[] bArr) throws EncryptionProtocolException {
        return encrypt(str, null, bArr);
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public byte[] encrypt(String str, char[] cArr, byte[] bArr) throws Throwable {
        byte[] bArrArray;
        byte[] bytes;
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bArr2 = new byte[0];
        byte[] bArrKeyDerivationFunction = new byte[0];
        try {
            try {
                bArrArray = Bytes.random(16, this.secureRandom).array();
                bytes = this.fingerprint.getBytes();
            } catch (AuthenticatedEncryptionException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArrKeyDerivationFunction = keyDerivationFunction(str, bytes, bArrArray, this.preferenceSalt, cArr);
            byte[] bArrEncrypt = this.defaultConfig.authenticatedEncryption.encrypt(bArrKeyDerivationFunction, this.defaultConfig.compressor.compress(bArr), Bytes.from(this.defaultConfig.protocolVersion).array());
            DataObfuscator dataObfuscatorCreate = this.defaultConfig.dataObfuscatorFactory.create(Bytes.from(str).append(bytes).array());
            try {
                dataObfuscatorCreate.obfuscate(bArrEncrypt);
                dataObfuscatorCreate.clearKey();
                byte[] bArrEncode = encode(bArrArray, bArrEncrypt);
                Bytes.wrap(bytes).mutable().secureWipe();
                Bytes.wrap(bArrKeyDerivationFunction).mutable().secureWipe();
                Timber.v("encrypt took %d ms", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                return bArrEncode;
            } catch (Throwable th2) {
                dataObfuscatorCreate.clearKey();
                throw th2;
            }
        } catch (AuthenticatedEncryptionException e2) {
            e = e2;
            bArr2 = bytes;
            throw new EncryptionProtocolException(e);
        } catch (Throwable th3) {
            th = th3;
            bArr2 = bytes;
            Bytes.wrap(bArr2).mutable().secureWipe();
            Bytes.wrap(bArrKeyDerivationFunction).mutable().secureWipe();
            Timber.v("encrypt took %d ms", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
            throw th;
        }
    }

    private byte[] encode(byte[] bArr, byte[] bArr2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 5 + 4 + bArr2.length);
        byteBufferAllocate.putInt(this.defaultConfig.protocolVersion);
        byteBufferAllocate.put((byte) bArr.length);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.putInt(bArr2.length);
        byteBufferAllocate.put(bArr2);
        return byteBufferAllocate.array();
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public byte[] decrypt(String str, byte[] bArr) throws EncryptionProtocolException {
        return decrypt(str, null, bArr);
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public byte[] decrypt(String str, char[] cArr, byte[] bArr) throws Throwable {
        byte[] bytes;
        long jCurrentTimeMillis = System.currentTimeMillis();
        byte[] bArr2 = new byte[0];
        byte[] bArr3 = new byte[0];
        try {
            try {
                bytes = this.fingerprint.getBytes();
            } catch (Throwable th) {
                th = th;
            }
        } catch (AuthenticatedEncryptionException e) {
            e = e;
        }
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            EncryptionProtocolConfig configForDecryption = getConfigForDecryption(byteBufferWrap.getInt());
            byte[] bArr4 = new byte[byteBufferWrap.get()];
            byteBufferWrap.get(bArr4);
            byte[] bArr5 = new byte[byteBufferWrap.getInt()];
            byteBufferWrap.get(bArr5);
            DataObfuscator dataObfuscatorCreate = configForDecryption.dataObfuscatorFactory.create(Bytes.from(str).append(bytes).array());
            try {
                dataObfuscatorCreate.deobfuscate(bArr5);
                dataObfuscatorCreate.clearKey();
                byte[] bArrKeyDerivationFunction = keyDerivationFunction(str, bytes, bArr4, this.preferenceSalt, cArr);
                byte[] bArrDecompress = configForDecryption.compressor.decompress(configForDecryption.authenticatedEncryption.decrypt(bArrKeyDerivationFunction, bArr5, Bytes.from(configForDecryption.protocolVersion).array()));
                Bytes.wrap(bytes).mutable().secureWipe();
                Bytes.wrap(bArrKeyDerivationFunction).mutable().secureWipe();
                Timber.v("decrypt took %d ms", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                return bArrDecompress;
            } catch (Throwable th2) {
                dataObfuscatorCreate.clearKey();
                throw th2;
            }
        } catch (AuthenticatedEncryptionException e2) {
            e = e2;
            throw new EncryptionProtocolException(e);
        } catch (Throwable th3) {
            th = th3;
            bArr2 = bytes;
            Bytes.wrap(bArr2).mutable().secureWipe();
            Bytes.wrap(bArr3).mutable().secureWipe();
            Timber.v("decrypt took %d ms", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
            throw th;
        }
    }

    private EncryptionProtocolConfig getConfigForDecryption(int i) throws EncryptionProtocolException {
        if (i == this.defaultConfig.protocolVersion) {
            return this.defaultConfig;
        }
        for (EncryptionProtocolConfig encryptionProtocolConfig : this.additionalDecryptionConfigs) {
            if (i == encryptionProtocolConfig.protocolVersion) {
                return encryptionProtocolConfig;
            }
        }
        throw new EncryptionProtocolException("illegal protocol version (" + i + ")");
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public void setKeyStretchingFunction(KeyStretchingFunction keyStretchingFunction) {
        EncryptionProtocolConfig.Builder builderNewBuilder = EncryptionProtocolConfig.newBuilder(this.defaultConfig);
        Objects.requireNonNull(keyStretchingFunction);
        this.defaultConfig = builderNewBuilder.keyStretchingFunction(keyStretchingFunction).build();
        this.derivedPasswordCache.wipe();
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public KeyStretchingFunction getKeyStretchingFunction() {
        return this.defaultConfig.keyStretchingFunction;
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public ByteArrayRuntimeObfuscator obfuscatePassword(char[] cArr) {
        return obfuscatePasswordInternal(cArr, this.secureRandom);
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public char[] deobfuscatePassword(ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator) {
        if (byteArrayRuntimeObfuscator == null) {
            return null;
        }
        CharBuffer charBufferDecode = StandardCharsets.UTF_8.decode(ByteBuffer.wrap(byteArrayRuntimeObfuscator.getBytes()));
        if (charBufferDecode.capacity() != charBufferDecode.limit()) {
            char[] cArr = new char[charBufferDecode.remaining()];
            charBufferDecode.get(cArr);
            return cArr;
        }
        return charBufferDecode.array();
    }

    @Override // at.favre.lib.armadillo.EncryptionProtocol
    public void wipeDerivedPasswordCache() {
        this.derivedPasswordCache.wipe();
    }

    private byte[] keyDerivationFunction(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, char[] cArr) {
        Bytes bytesFrom = Bytes.from(bArr, bArr2, Bytes.from(str, Normalizer.Form.NFKD).array());
        if (cArr != null) {
            byte[] bArrStretch = this.derivedPasswordCache.get(bArr2, cArr);
            if (bArrStretch == null) {
                bArrStretch = this.defaultConfig.keyStretchingFunction.stretch(bArr2, cArr, 32);
                this.derivedPasswordCache.put(bArr2, cArr, bArrStretch);
            }
            bytesFrom = bytesFrom.append(bArrStretch);
        }
        return HKDF.fromHmacSha512().extractAndExpand(bArr3, bytesFrom.array(), Bytes.from("DefaultEncryptionProtocol").array(), this.keyLengthBit / 8);
    }

    public static final class Factory implements EncryptionProtocol.Factory {
        private final List<EncryptionProtocolConfig> additionalDecryptionConfigs;
        private EncryptionProtocolConfig defaultConfig;
        private final boolean enableDerivedPasswordCaching;
        private final EncryptionFingerprint fingerprint;
        private final SecureRandom secureRandom;
        private final StringMessageDigest stringMessageDigest;

        Factory(EncryptionProtocolConfig encryptionProtocolConfig, EncryptionFingerprint encryptionFingerprint, StringMessageDigest stringMessageDigest, SecureRandom secureRandom, boolean z, List<EncryptionProtocolConfig> list) {
            this.defaultConfig = encryptionProtocolConfig;
            this.fingerprint = encryptionFingerprint;
            this.stringMessageDigest = stringMessageDigest;
            this.secureRandom = secureRandom;
            this.enableDerivedPasswordCaching = z;
            this.additionalDecryptionConfigs = list;
        }

        @Override // at.favre.lib.armadillo.EncryptionProtocol.Factory
        public EncryptionProtocol create(byte[] bArr) {
            return new DefaultEncryptionProtocol(this.defaultConfig, bArr, this.fingerprint, this.stringMessageDigest, this.secureRandom, this.enableDerivedPasswordCaching, this.additionalDecryptionConfigs);
        }

        @Override // at.favre.lib.armadillo.EncryptionProtocol.Factory
        public StringMessageDigest getStringMessageDigest() {
            return this.stringMessageDigest;
        }

        @Override // at.favre.lib.armadillo.EncryptionProtocol.Factory
        public DataObfuscator createDataObfuscator() {
            return this.defaultConfig.dataObfuscatorFactory.create(this.fingerprint.getBytes());
        }

        @Override // at.favre.lib.armadillo.EncryptionProtocol.Factory
        public SecureRandom getSecureRandom() {
            return this.secureRandom;
        }

        @Override // at.favre.lib.armadillo.EncryptionProtocol.Factory
        public ByteArrayRuntimeObfuscator obfuscatePassword(char[] cArr) {
            return DefaultEncryptionProtocol.obfuscatePasswordInternal(cArr, this.secureRandom);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteArrayRuntimeObfuscator obfuscatePasswordInternal(char[] cArr, SecureRandom secureRandom) {
        if (cArr == null) {
            return null;
        }
        return new ByteArrayRuntimeObfuscator.Default(Bytes.from(cArr).array(), secureRandom);
    }
}
