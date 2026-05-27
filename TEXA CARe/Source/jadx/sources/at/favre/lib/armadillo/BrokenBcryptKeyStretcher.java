package at.favre.lib.armadillo;

import android.os.StrictMode;
import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.HKDF;
import at.favre.lib.crypto.bcrypt.BCrypt;
import at.favre.lib.crypto.bcrypt.BCryptFormatter;
import at.favre.lib.crypto.bcrypt.LongPasswordStrategy;
import at.favre.lib.crypto.bcrypt.Radix64Encoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
final class BrokenBcryptKeyStretcher implements KeyStretchingFunction {
    private static final int BCRYPT_DEFAULT_ROUNDS = 12;
    private static final int BCRYPT_MIN_ROUNDS = 8;
    private static final BCrypt.Version CUSTOM_LEGACY_VERSION = new BCrypt.Version(new byte[]{50, 97}, true, true, 71, new CustomFormatter(new Radix64Encoder.Default(), StandardCharsets.UTF_8), BCrypt.Version.VERSION_2A.parser);
    private final int iterations;

    public BrokenBcryptKeyStretcher() {
        this(12);
    }

    public BrokenBcryptKeyStretcher(int i) {
        this.iterations = Math.max(8, i);
    }

    @Override // at.favre.lib.armadillo.KeyStretchingFunction
    public byte[] stretch(byte[] bArr, char[] cArr, int i) {
        try {
            return HKDF.fromHmacSha256().expand(bcrypt(cArr, bArr, this.iterations), "bcrypt".getBytes(), i);
        } catch (Exception e) {
            throw new IllegalStateException("could not stretch with bcrypt", e);
        }
    }

    private static byte[] bcrypt(char[] cArr, byte[] bArr, int i) {
        StrictMode.noteSlowCall("bcrypt is a very expensive call and should not be done on the main thread");
        return BCrypt.with(CUSTOM_LEGACY_VERSION, new SecureRandom(), new LongPasswordStrategy() { // from class: at.favre.lib.armadillo.BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0
            @Override // at.favre.lib.crypto.bcrypt.LongPasswordStrategy
            public final byte[] derive(byte[] bArr2) {
                return Bytes.wrapNullSafe(bArr2).copy().array();
            }
        }).hash(i, createLegacySalt(bArr), createLegacyPassword(cArr, bArr));
    }

    private static byte[] createLegacyPassword(char[] cArr, byte[] bArr) {
        return Bytes.from(String.valueOf(cArr) + Bytes.wrap(bArr).encodeHex()).encodeUtf8().getBytes(StandardCharsets.UTF_8);
    }

    private static byte[] createLegacySalt(byte[] bArr) {
        return new Radix64Encoder.Default().decode(Bytes.wrap(HKDF.fromHmacSha256().expand(bArr, "bcrypt".getBytes(), 16)).encodeHex().substring(0, 22).getBytes(StandardCharsets.UTF_8));
    }

    private static final class CustomFormatter implements BCryptFormatter {
        private final Charset defaultCharset;
        private final Radix64Encoder encoder;

        private CustomFormatter(Radix64Encoder radix64Encoder, Charset charset) {
            this.encoder = radix64Encoder;
            this.defaultCharset = charset;
        }

        @Override // at.favre.lib.crypto.bcrypt.BCryptFormatter
        public byte[] createHashMessage(BCrypt.HashData hashData) {
            byte[] bArrEncode = this.encoder.encode(hashData.rawSalt);
            byte[] bArrEncode2 = this.encoder.encode(hashData.rawHash);
            byte[] bytes = String.format(Locale.US, "%02d", Integer.valueOf(hashData.cost)).getBytes(this.defaultCharset);
            try {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(hashData.version.versionIdentifier.length + bytes.length + 3 + bArrEncode.length + bArrEncode2.length);
                byteBufferAllocate.put((byte) 36);
                byteBufferAllocate.put(hashData.version.versionIdentifier);
                byteBufferAllocate.put((byte) 36);
                byteBufferAllocate.put(bytes);
                byteBufferAllocate.put((byte) 36);
                byteBufferAllocate.put(bArrEncode);
                byteBufferAllocate.put(bArrEncode2);
                return byteBufferAllocate.array();
            } finally {
                Bytes.wrapNullSafe(bArrEncode).mutable().secureWipe();
                Bytes.wrapNullSafe(bArrEncode2).mutable().secureWipe();
                Bytes.wrapNullSafe(bytes).mutable().secureWipe();
            }
        }
    }
}
