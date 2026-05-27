package at.favre.lib.bytes;

import at.favre.lib.bytes.BinaryToTextEncoding;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class BaseEncoding implements BinaryToTextEncoding.EncoderDecoder {
    private static final char ASCII_MAX = 127;
    static final Alphabet BASE32_RFC4848 = new Alphabet("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567".toCharArray());
    static final char BASE32_RFC4848_PADDING = '=';
    private final Alphabet alphabet;
    private final Character paddingChar;

    public BaseEncoding(Alphabet alphabet, Character ch) {
        Objects.requireNonNull(alphabet);
        this.alphabet = alphabet;
        this.paddingChar = ch;
    }

    private int maxEncodedSize(int i) {
        return this.alphabet.charsPerChunk * divide(i, this.alphabet.bytesPerChunk);
    }

    @Override // at.favre.lib.bytes.BinaryToTextEncoding.Encoder
    public String encode(byte[] bArr, ByteOrder byteOrder) {
        return encode(bArr, 0, bArr.length);
    }

    private String encode(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder(maxEncodedSize(i2));
        try {
            encodeTo(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    private void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(appendable);
        int i3 = 0;
        while (i3 < i2) {
            encodeChunkTo(appendable, bArr, i + i3, Math.min(this.alphabet.bytesPerChunk, i2 - i3));
            i3 += this.alphabet.bytesPerChunk;
        }
    }

    private void encodeChunkTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(appendable);
        int i3 = 0;
        long j = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            j = (j | ((long) (bArr[i + i4] & 255))) << 8;
        }
        int i5 = ((i2 + 1) * 8) - this.alphabet.bitsPerChar;
        while (i3 < i2 * 8) {
            appendable.append(this.alphabet.encode(((int) (j >>> (i5 - i3))) & this.alphabet.mask));
            i3 += this.alphabet.bitsPerChar;
        }
        if (this.paddingChar != null) {
            while (i3 < this.alphabet.bytesPerChunk * 8) {
                appendable.append(this.paddingChar.charValue());
                i3 += this.alphabet.bitsPerChar;
            }
        }
    }

    private int maxDecodedSize(int i) {
        return (int) (((((long) this.alphabet.bitsPerChar) * ((long) i)) + 7) / 8);
    }

    private String trimTrailingPadding(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        if (this.paddingChar == null) {
            return charSequence.toString();
        }
        int length = charSequence.length() - 1;
        while (length >= 0 && charSequence.charAt(length) == this.paddingChar.charValue()) {
            length--;
        }
        return charSequence.subSequence(0, length + 1).toString();
    }

    @Override // at.favre.lib.bytes.BinaryToTextEncoding.Decoder
    public byte[] decode(CharSequence charSequence) {
        String strTrimTrailingPadding = trimTrailingPadding(charSequence);
        byte[] bArr = new byte[maxDecodedSize(strTrimTrailingPadding.length())];
        return extract(bArr, decodeTo(bArr, strTrimTrailingPadding));
    }

    private static byte[] extract(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    private int decodeTo(byte[] bArr, CharSequence charSequence) {
        Objects.requireNonNull(bArr);
        String strTrimTrailingPadding = trimTrailingPadding(charSequence);
        int i = 0;
        int i2 = 0;
        while (i < strTrimTrailingPadding.length()) {
            long jDecode = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.alphabet.charsPerChunk; i4++) {
                jDecode <<= this.alphabet.bitsPerChar;
                if (i + i4 < strTrimTrailingPadding.length()) {
                    jDecode |= (long) this.alphabet.decode(strTrimTrailingPadding.charAt(i3 + i));
                    i3++;
                }
            }
            int i5 = (this.alphabet.bytesPerChunk * 8) - (i3 * this.alphabet.bitsPerChar);
            int i6 = (this.alphabet.bytesPerChunk - 1) * 8;
            while (i6 >= i5) {
                bArr[i2] = (byte) ((jDecode >>> i6) & 255);
                i6 -= 8;
                i2++;
            }
            i += this.alphabet.charsPerChunk;
        }
        return i2;
    }

    static final class Alphabet {
        final int bitsPerChar;
        final int bytesPerChunk;
        private final char[] chars;
        final int charsPerChunk;
        private final byte[] decodabet;
        final int mask;

        Alphabet(char[] cArr) {
            Objects.requireNonNull(cArr);
            this.chars = cArr;
            int iLog2 = BaseEncoding.log2(cArr.length);
            this.bitsPerChar = iLog2;
            int iMin = Math.min(8, Integer.lowestOneBit(iLog2));
            this.charsPerChunk = 8 / iMin;
            this.bytesPerChunk = iLog2 / iMin;
            this.mask = cArr.length - 1;
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i < cArr.length; i++) {
                bArr[cArr[i]] = (byte) i;
            }
            this.decodabet = bArr;
        }

        char encode(int i) {
            return this.chars[i];
        }

        int decode(char c) {
            return this.decodabet[c];
        }
    }

    private static int divide(int i, int i2) {
        int i3;
        int i4 = i / i2;
        return (i - (i2 * i4) != 0 && (i3 = ((i ^ i2) >> 31) | 1) > 0) ? i4 + i3 : i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int log2(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }
}
