package at.favre.lib.bytes;

import java.math.BigInteger;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface BinaryToTextEncoding {

    public interface Decoder {
        byte[] decode(CharSequence charSequence);
    }

    public interface Encoder {
        String encode(byte[] bArr, ByteOrder byteOrder);
    }

    public interface EncoderDecoder extends Encoder, Decoder {
    }

    public static class Hex implements EncoderDecoder {
        private static final char[] LOOKUP_TABLE_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        private static final char[] LOOKUP_TABLE_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        private final boolean upperCase;

        public Hex() {
            this(true);
        }

        public Hex(boolean z) {
            this.upperCase = z;
        }

        @Override // at.favre.lib.bytes.BinaryToTextEncoding.Encoder
        public String encode(byte[] bArr, ByteOrder byteOrder) {
            char[] cArr = new char[bArr.length * 2];
            char[] cArr2 = this.upperCase ? LOOKUP_TABLE_UPPER : LOOKUP_TABLE_LOWER;
            for (int i = 0; i < bArr.length; i++) {
                int length = byteOrder == ByteOrder.BIG_ENDIAN ? i : (bArr.length - i) - 1;
                int i2 = i << 1;
                cArr[i2] = cArr2[(bArr[length] >> 4) & 15];
                cArr[i2 + 1] = cArr2[bArr[length] & 15];
            }
            return new String(cArr);
        }

        @Override // at.favre.lib.bytes.BinaryToTextEncoding.Decoder
        public byte[] decode(CharSequence charSequence) {
            Objects.requireNonNull(charSequence);
            int i = (charSequence.length() > 2 && charSequence.charAt(0) == '0' && charSequence.charAt(1) == 'x') ? 2 : 0;
            int length = charSequence.length();
            boolean z = length % 2 != 0;
            if (z) {
                i--;
            }
            byte[] bArr = new byte[(length - i) / 2];
            int i2 = i;
            while (i2 < length) {
                int iDigit = (i2 == i && z) ? 0 : Character.digit(charSequence.charAt(i2), 16);
                int i3 = i2 + 1;
                int iDigit2 = Character.digit(charSequence.charAt(i3), 16);
                if (iDigit == -1 || iDigit2 == -1) {
                    if (i2 == i && z) {
                        throw new IllegalArgumentException("'" + charSequence.charAt(i3) + "' at index " + i3 + " is not hex formatted");
                    }
                    throw new IllegalArgumentException("'" + charSequence.charAt(i2) + charSequence.charAt(i3) + "' at index " + i2 + " is not hex formatted");
                }
                bArr[(i2 - i) / 2] = (byte) ((iDigit << 4) + iDigit2);
                i2 += 2;
            }
            return bArr;
        }
    }

    public static class Base64Encoding implements EncoderDecoder {
        private final boolean padding;
        private final boolean urlSafe;

        Base64Encoding() {
            this(false, true);
        }

        Base64Encoding(boolean z, boolean z2) {
            this.urlSafe = z;
            this.padding = z2;
        }

        @Override // at.favre.lib.bytes.BinaryToTextEncoding.Encoder
        public String encode(byte[] bArr, ByteOrder byteOrder) {
            if (byteOrder != ByteOrder.BIG_ENDIAN) {
                bArr = Bytes.from(bArr).reverse().array();
            }
            return new String(Base64.encode(bArr, this.urlSafe, this.padding), StandardCharsets.US_ASCII);
        }

        @Override // at.favre.lib.bytes.BinaryToTextEncoding.Decoder
        public byte[] decode(CharSequence charSequence) {
            return Base64.decode(charSequence);
        }
    }

    public static class BaseRadixNumber implements EncoderDecoder {
        private final int radix;

        BaseRadixNumber(int i) {
            if (i < 2 || i > 36) {
                throw new IllegalArgumentException("supported radix is between 2 and 36");
            }
            this.radix = i;
        }

        @Override // at.favre.lib.bytes.BinaryToTextEncoding.Encoder
        public String encode(byte[] bArr, ByteOrder byteOrder) {
            if (byteOrder != ByteOrder.BIG_ENDIAN) {
                bArr = Bytes.from(bArr).reverse().array();
            }
            return new BigInteger(1, bArr).toString(this.radix);
        }

        @Override // at.favre.lib.bytes.BinaryToTextEncoding.Decoder
        public byte[] decode(CharSequence charSequence) {
            byte[] byteArray = new BigInteger(charSequence.toString(), this.radix).toByteArray();
            if (byteArray[0] != 0) {
                return byteArray;
            }
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            return bArr;
        }
    }
}
