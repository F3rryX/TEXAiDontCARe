package at.favre.lib.crypto.bcrypt;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.bcrypt.BCrypt;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public interface BCryptParser {
    BCrypt.HashData parse(byte[] bArr) throws IllegalBCryptFormatException;

    public static final class Default implements BCryptParser {
        private final Charset defaultCharset;
        private final Radix64Encoder encoder;

        Default(Radix64Encoder radix64Encoder, Charset charset) {
            this.defaultCharset = charset;
            this.encoder = radix64Encoder;
        }

        @Override // at.favre.lib.crypto.bcrypt.BCryptParser
        public BCrypt.HashData parse(byte[] bArr) throws IllegalBCryptFormatException {
            if (bArr == null || bArr.length == 0) {
                throw new IllegalArgumentException("must provide non-null, non-empty hash");
            }
            if (bArr.length < 7) {
                throw new IllegalBCryptFormatException("hash prefix meta must be at least 7 bytes long e.g. '$2a$10$'");
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            if (byteBufferWrap.get() != 36) {
                throw new IllegalBCryptFormatException("hash must start with " + Bytes.from((byte) 36).encodeUtf8());
            }
            BCrypt.Version version = null;
            for (BCrypt.Version version2 : BCrypt.Version.SUPPORTED_VERSIONS) {
                int i = 0;
                while (true) {
                    if (i >= version2.versionIdentifier.length) {
                        break;
                    }
                    if (byteBufferWrap.get() != version2.versionIdentifier[i]) {
                        byteBufferWrap.position(byteBufferWrap.position() - (i + 1));
                        break;
                    }
                    if (i == version2.versionIdentifier.length - 1) {
                        version = version2;
                    }
                    i++;
                }
                if (version != null) {
                    break;
                }
            }
            if (version == null) {
                throw new IllegalBCryptFormatException("unknown bcrypt version");
            }
            if (byteBufferWrap.get() != 36) {
                throw new IllegalBCryptFormatException("expected separator " + Bytes.from((byte) 36).encodeUtf8() + " after version identifier and before cost factor");
            }
            byte[] bArr2 = {byteBufferWrap.get(), byteBufferWrap.get()};
            try {
                int i2 = Integer.parseInt(new String(bArr2, this.defaultCharset));
                if (byteBufferWrap.get() != 36) {
                    throw new IllegalBCryptFormatException("expected separator " + Bytes.from((byte) 36).encodeUtf8() + " after cost factor");
                }
                if (bArr.length != 60) {
                    throw new IllegalBCryptFormatException("hash expected to be exactly 60 bytes");
                }
                byte[] bArr3 = new byte[22];
                byte[] bArr4 = new byte[31];
                byteBufferWrap.get(bArr3);
                byteBufferWrap.get(bArr4);
                return new BCrypt.HashData(i2, version, this.encoder.decode(bArr3), this.encoder.decode(bArr4));
            } catch (NumberFormatException unused) {
                throw new IllegalBCryptFormatException("cannot parse cost factor '" + new String(bArr2, this.defaultCharset) + "'");
            }
        }
    }
}
