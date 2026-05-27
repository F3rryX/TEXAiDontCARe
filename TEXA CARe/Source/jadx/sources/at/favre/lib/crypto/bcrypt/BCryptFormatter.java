package at.favre.lib.crypto.bcrypt;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.bcrypt.BCrypt;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public interface BCryptFormatter {
    byte[] createHashMessage(BCrypt.HashData hashData);

    public static final class Default implements BCryptFormatter {
        private final Charset defaultCharset;
        private final Radix64Encoder encoder;

        public Default(Radix64Encoder radix64Encoder, Charset charset) {
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
