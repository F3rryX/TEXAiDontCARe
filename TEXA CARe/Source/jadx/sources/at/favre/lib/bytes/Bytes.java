package at.favre.lib.bytes;

import at.favre.lib.bytes.BinaryToTextEncoding;
import at.favre.lib.bytes.BytesTransformer;
import at.favre.lib.bytes.Util;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.IntBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.text.Normalizer;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.UUID;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class Bytes implements Comparable<Bytes>, Serializable, Iterable<Byte> {
    private static final Bytes EMPTY = wrap(new byte[0]);
    static final long serialVersionUID = 1;
    private final byte[] byteArray;
    private final ByteOrder byteOrder;
    private final BytesFactory factory;
    private transient int hashCodeCache;

    public boolean isMutable() {
        return false;
    }

    public boolean isReadOnly() {
        return false;
    }

    public static Bytes allocate(int i) {
        return allocate(i, (byte) 0);
    }

    public static Bytes allocate(int i, byte b) {
        if (i == 0) {
            return empty();
        }
        byte[] bArr = new byte[i];
        if (b != 0) {
            Arrays.fill(bArr, b);
        }
        return wrap(bArr);
    }

    public static Bytes empty() {
        return EMPTY;
    }

    public static Bytes wrap(Bytes bytes) {
        return wrap(bytes.internalArray(), bytes.byteOrder);
    }

    public static Bytes wrapNullSafe(byte[] bArr) {
        return bArr != null ? wrap(bArr) : empty();
    }

    public static Bytes wrap(byte[] bArr) {
        return wrap(bArr, ByteOrder.BIG_ENDIAN);
    }

    public static Bytes wrap(byte[] bArr, ByteOrder byteOrder) {
        Objects.requireNonNull(bArr, "passed array must not be null");
        return new Bytes(bArr, byteOrder);
    }

    public static Bytes from(byte[] bArr) {
        Objects.requireNonNull(bArr, "must at least pass a single byte");
        return wrap(Arrays.copyOf(bArr, bArr.length));
    }

    public static Bytes fromNullSafe(byte[] bArr) {
        return bArr != null ? from(bArr) : empty();
    }

    public static Bytes from(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "passed array must not be null");
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return wrap(bArr2);
    }

    public static Bytes from(byte[]... bArr) {
        return wrap(Util.Byte.concat(bArr));
    }

    public static Bytes from(Bytes... bytesArr) {
        Objects.requireNonNull(bytesArr, "bytes most not be null");
        byte[][] bArr = new byte[bytesArr.length][];
        for (int i = 0; i < bytesArr.length; i++) {
            bArr[i] = bytesArr[i].array();
        }
        return from(bArr);
    }

    public static Bytes from(Collection<Byte> collection) {
        return wrap(Util.Converter.toArray(collection));
    }

    public static Bytes from(Byte[] bArr) {
        return wrap(Util.Converter.toPrimitiveArray(bArr));
    }

    public static Bytes from(byte b) {
        return wrap(new byte[]{b});
    }

    public static Bytes from(byte b, byte... bArr) {
        return wrap(Util.Byte.concatVararg(b, bArr));
    }

    public static Bytes from(boolean z) {
        return wrap(new byte[]{z ? (byte) 1 : (byte) 0});
    }

    public static Bytes from(char c) {
        return wrap(ByteBuffer.allocate(2).putChar(c).array());
    }

    public static Bytes from(short s) {
        return wrap(ByteBuffer.allocate(2).putShort(s).array());
    }

    public static Bytes from(int i) {
        return wrap(ByteBuffer.allocate(4).putInt(i).array());
    }

    public static Bytes from(int... iArr) {
        Objects.requireNonNull(iArr, "must provide at least a single int");
        return wrap(Util.Converter.toByteArray(iArr));
    }

    public static Bytes from(long j) {
        return wrap(ByteBuffer.allocate(8).putLong(j).array());
    }

    public static Bytes from(long... jArr) {
        Objects.requireNonNull(jArr, "must provide at least a single long");
        return wrap(Util.Converter.toByteArray(jArr));
    }

    public static Bytes from(float f) {
        return wrap(ByteBuffer.allocate(4).putFloat(f).array());
    }

    public static Bytes from(double d) {
        return wrap(ByteBuffer.allocate(8).putDouble(d).array());
    }

    public static Bytes from(ByteBuffer byteBuffer) {
        Objects.requireNonNull(byteBuffer, "provided byte buffer must not be null");
        return wrap(byteBuffer.array(), byteBuffer.order());
    }

    public static Bytes from(CharBuffer charBuffer) {
        Objects.requireNonNull(charBuffer, "provided char buffer must not be null");
        return from(charBuffer.array());
    }

    public static Bytes from(IntBuffer intBuffer) {
        Objects.requireNonNull(intBuffer, "provided int buffer must not be null");
        return from(intBuffer.array());
    }

    public static Bytes from(BitSet bitSet) {
        return wrap(bitSet.toByteArray());
    }

    public static Bytes from(BigInteger bigInteger) {
        return wrap(bigInteger.toByteArray());
    }

    public static Bytes from(InputStream inputStream) {
        return wrap(Util.File.readFromStream(inputStream, -1));
    }

    public static Bytes from(InputStream inputStream, int i) {
        return wrap(Util.File.readFromStream(inputStream, i));
    }

    public static Bytes from(DataInput dataInput, int i) {
        return wrap(Util.File.readFromDataInput(dataInput, i));
    }

    public static Bytes from(File file) {
        return wrap(Util.File.readFromFile(file));
    }

    public static Bytes from(File file, int i, int i2) {
        return wrap(Util.File.readFromFile(file, i, i2));
    }

    public static Bytes from(CharSequence charSequence) {
        return from(charSequence, StandardCharsets.UTF_8);
    }

    public static Bytes from(CharSequence charSequence, Normalizer.Form form) {
        return from(Normalizer.normalize(charSequence, form), StandardCharsets.UTF_8);
    }

    public static Bytes from(CharSequence charSequence, Charset charset) {
        Objects.requireNonNull(charSequence, "provided string must not be null");
        String string = charSequence.toString();
        Objects.requireNonNull(charset, "provided charset must not be null");
        return wrap(string.getBytes(charset));
    }

    public static Bytes from(char[] cArr) {
        return from(cArr, StandardCharsets.UTF_8);
    }

    public static Bytes from(char[] cArr, Charset charset) {
        return from(cArr, charset, 0, cArr.length);
    }

    public static Bytes from(char[] cArr, Charset charset, int i, int i2) {
        return from(Util.Converter.charToByteArray(cArr, charset, i, i2));
    }

    public static Bytes from(UUID uuid) {
        Objects.requireNonNull(uuid);
        return wrap(Util.Converter.toBytesFromUUID(uuid).array());
    }

    public static Bytes parseBinary(CharSequence charSequence) {
        return parseRadix(charSequence, 2);
    }

    public static Bytes parseOctal(CharSequence charSequence) {
        return parseRadix(charSequence, 8);
    }

    public static Bytes parseDec(CharSequence charSequence) {
        return parseRadix(charSequence, 10);
    }

    public static Bytes parseRadix(CharSequence charSequence, int i) {
        return parse(charSequence, new BinaryToTextEncoding.BaseRadixNumber(i));
    }

    public static Bytes parseHex(CharSequence charSequence) {
        return parse(charSequence, new BinaryToTextEncoding.Hex());
    }

    public static Bytes parseBase32(CharSequence charSequence) {
        return parse(charSequence, new BaseEncoding(BaseEncoding.BASE32_RFC4848, '='));
    }

    @Deprecated
    public static Bytes parseBase36(CharSequence charSequence) {
        return parse(charSequence, new BinaryToTextEncoding.BaseRadixNumber(36));
    }

    public static Bytes parseBase64(CharSequence charSequence) {
        return parse(charSequence, new BinaryToTextEncoding.Base64Encoding());
    }

    public static Bytes parse(CharSequence charSequence, BinaryToTextEncoding.Decoder decoder) {
        Objects.requireNonNull(decoder, "passed decoder instance must no be null");
        Objects.requireNonNull(charSequence, "encoded data must not be null");
        return wrap(decoder.decode(charSequence));
    }

    public static Bytes random(int i) {
        return random(i, new SecureRandom());
    }

    public static Bytes unsecureRandom(int i) {
        return random(i, new Random());
    }

    public static Bytes unsecureRandom(int i, long j) {
        return random(i, new Random(j));
    }

    public static Bytes random(int i, Random random) {
        byte[] bArr = new byte[i];
        random.nextBytes(bArr);
        return wrap(bArr);
    }

    Bytes(byte[] bArr, ByteOrder byteOrder) {
        this(bArr, byteOrder, new Factory());
    }

    Bytes(byte[] bArr, ByteOrder byteOrder, BytesFactory bytesFactory) {
        this.byteArray = bArr;
        this.byteOrder = byteOrder;
        this.factory = bytesFactory;
    }

    public Bytes append(Bytes bytes) {
        return append(bytes.internalArray());
    }

    public Bytes append(byte b) {
        return append(from(b));
    }

    public Bytes append(char c) {
        return append(from(c));
    }

    public Bytes append(short s) {
        return append(from(s));
    }

    public Bytes append(int i) {
        return append(from(i));
    }

    public Bytes append(long j) {
        return append(from(j));
    }

    public Bytes append(byte[]... bArr) {
        return append(from(bArr));
    }

    public Bytes append(byte[] bArr) {
        return transform(new BytesTransformer.ConcatTransformer(bArr));
    }

    public Bytes appendNullSafe(byte[] bArr) {
        return bArr == null ? this : append(bArr);
    }

    public Bytes append(CharSequence charSequence) {
        return append(charSequence, StandardCharsets.UTF_8);
    }

    public Bytes append(CharSequence charSequence, Charset charset) {
        Objects.requireNonNull(charSequence);
        String string = charSequence.toString();
        Objects.requireNonNull(charset);
        return transform(new BytesTransformer.ConcatTransformer(string.getBytes(charset)));
    }

    public Bytes xor(Bytes bytes) {
        return xor(bytes.internalArray());
    }

    public Bytes xor(byte[] bArr) {
        return transform(new BytesTransformer.BitWiseOperatorTransformer(bArr, BytesTransformer.BitWiseOperatorTransformer.Mode.XOR));
    }

    public Bytes and(Bytes bytes) {
        return and(bytes.internalArray());
    }

    public Bytes and(byte[] bArr) {
        return transform(new BytesTransformer.BitWiseOperatorTransformer(bArr, BytesTransformer.BitWiseOperatorTransformer.Mode.AND));
    }

    public Bytes or(Bytes bytes) {
        return or(bytes.internalArray());
    }

    public Bytes or(byte[] bArr) {
        return transform(new BytesTransformer.BitWiseOperatorTransformer(bArr, BytesTransformer.BitWiseOperatorTransformer.Mode.OR));
    }

    public Bytes not() {
        return transform(new BytesTransformer.NegateTransformer());
    }

    public Bytes leftShift(int i) {
        return transform(new BytesTransformer.ShiftTransformer(i, BytesTransformer.ShiftTransformer.Type.LEFT_SHIFT));
    }

    public Bytes rightShift(int i) {
        return transform(new BytesTransformer.ShiftTransformer(i, BytesTransformer.ShiftTransformer.Type.RIGHT_SHIFT));
    }

    public Bytes switchBit(int i, boolean z) {
        return transform(new BytesTransformer.BitSwitchTransformer(i, Boolean.valueOf(z)));
    }

    public Bytes switchBit(int i) {
        return transform(new BytesTransformer.BitSwitchTransformer(i, null));
    }

    public Bytes copy() {
        return transform(new BytesTransformer.CopyTransformer(0, length()));
    }

    public Bytes copy(int i, int i2) {
        return transform(new BytesTransformer.CopyTransformer(i, i2));
    }

    public Bytes reverse() {
        return transform(new BytesTransformer.ReverseTransformer());
    }

    public Bytes resize(int i) {
        return resize(i, BytesTransformer.ResizeTransformer.Mode.RESIZE_KEEP_FROM_MAX_LENGTH);
    }

    public Bytes resize(int i, BytesTransformer.ResizeTransformer.Mode mode) {
        return transform(new BytesTransformer.ResizeTransformer(i, mode));
    }

    public Bytes hashMd5() {
        return hash("MD5");
    }

    public Bytes hashSha1() {
        return hash(McElieceCCA2KeyGenParameterSpec.SHA1);
    }

    public Bytes hashSha256() {
        return hash(McElieceCCA2KeyGenParameterSpec.SHA256);
    }

    public Bytes hash(String str) {
        return transform(new BytesTransformer.MessageDigestTransformer(str));
    }

    public Bytes transform(BytesTransformer bytesTransformer) {
        return this.factory.wrap(bytesTransformer.transform(internalArray(), isMutable()), this.byteOrder);
    }

    public boolean validateNotOnlyZeros() {
        return validate(BytesValidators.notOnlyOf((byte) 0));
    }

    public boolean validate(BytesValidator... bytesValidatorArr) {
        Objects.requireNonNull(bytesValidatorArr);
        return BytesValidators.and(bytesValidatorArr).validate(internalArray());
    }

    public int length() {
        return internalArray().length;
    }

    public int lengthBit() {
        return length() * 8;
    }

    public boolean isEmpty() {
        return length() == 0;
    }

    public ByteOrder byteOrder() {
        return this.byteOrder;
    }

    public boolean contains(byte b) {
        return indexOf(b) != -1;
    }

    public int indexOf(byte b) {
        return indexOf(b, 0);
    }

    public int indexOf(byte b, int i) {
        return indexOf(new byte[]{b}, i);
    }

    public int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public int indexOf(byte[] bArr, int i) {
        return Util.Byte.indexOf(internalArray(), bArr, i, length());
    }

    public boolean startsWith(byte[] bArr) {
        return Util.Byte.indexOf(internalArray(), bArr, 0, 1) == 0;
    }

    public int lastIndexOf(byte b) {
        return Util.Byte.lastIndexOf(internalArray(), b, 0, length());
    }

    public boolean endsWith(byte[] bArr) {
        int length = length() - bArr.length;
        return length >= 0 && Util.Byte.indexOf(internalArray(), bArr, length, length + 1) == length;
    }

    public boolean bitAt(int i) {
        Util.Validation.checkIndexBounds(lengthBit(), i, 1, "bit");
        return ((byteAt((length() - 1) - (i / 8)) >>> (i % 8)) & 1) != 0;
    }

    public byte byteAt(int i) {
        Util.Validation.checkIndexBounds(length(), i, 1, "byte");
        return internalArray()[i];
    }

    public int unsignedByteAt(int i) {
        Util.Validation.checkIndexBounds(length(), i, 1, "unsigned byte");
        return internalArray()[i] & 255;
    }

    public char charAt(int i) {
        Util.Validation.checkIndexBounds(length(), i, 2, "char");
        return ((ByteBuffer) internalBuffer().position(i)).getChar();
    }

    public short shortAt(int i) {
        Util.Validation.checkIndexBounds(length(), i, 2, "short");
        return ((ByteBuffer) internalBuffer().position(i)).getShort();
    }

    public int intAt(int i) {
        Util.Validation.checkIndexBounds(length(), i, 4, "int");
        return ((ByteBuffer) internalBuffer().position(i)).getInt();
    }

    public long longAt(int i) {
        Util.Validation.checkIndexBounds(length(), i, 8, "long");
        return ((ByteBuffer) internalBuffer().position(i)).getLong();
    }

    public int count(byte b) {
        return Util.Byte.countByte(internalArray(), b);
    }

    public int count(byte[] bArr) {
        return Util.Byte.countByteArray(internalArray(), bArr);
    }

    public double entropy() {
        return Util.Byte.entropy(internalArray());
    }

    public Bytes duplicate() {
        return this.factory.wrap(internalArray(), this.byteOrder);
    }

    public Bytes byteOrder(ByteOrder byteOrder) {
        return byteOrder != this.byteOrder ? wrap(internalArray(), byteOrder) : this;
    }

    public ReadOnlyBytes readOnly() {
        if (isReadOnly()) {
            return (ReadOnlyBytes) this;
        }
        return new ReadOnlyBytes(internalArray(), this.byteOrder);
    }

    public ByteBuffer buffer() {
        return ByteBuffer.wrap(array()).order(this.byteOrder);
    }

    private ByteBuffer internalBuffer() {
        return ByteBuffer.wrap(internalArray()).order(this.byteOrder);
    }

    public MutableBytes mutable() {
        if (this instanceof MutableBytes) {
            return (MutableBytes) this;
        }
        return new MutableBytes(array(), this.byteOrder);
    }

    public InputStream inputStream() {
        return new ByteArrayInputStream(array());
    }

    public byte[] array() {
        return internalArray();
    }

    byte[] internalArray() {
        return this.byteArray;
    }

    public String encodeBinary() {
        return encodeRadix(2);
    }

    public String encodeOctal() {
        return encodeRadix(8);
    }

    public String encodeDec() {
        return encodeRadix(10);
    }

    public String encodeRadix(int i) {
        return encode(new BinaryToTextEncoding.BaseRadixNumber(i));
    }

    public String encodeHex() {
        return encodeHex(false);
    }

    public String encodeHex(boolean z) {
        return encode(new BinaryToTextEncoding.Hex(z));
    }

    public String encodeBase32() {
        return encode(new BaseEncoding(BaseEncoding.BASE32_RFC4848, '='));
    }

    @Deprecated
    public String encodeBase36() {
        return encodeRadix(36);
    }

    public String encodeBase64() {
        return encodeBase64(false, true);
    }

    public String encodeBase64Url() {
        return encodeBase64(true, true);
    }

    public String encodeBase64(boolean z, boolean z2) {
        return encode(new BinaryToTextEncoding.Base64Encoding(z, z2));
    }

    public String encodeUtf8() {
        return encodeCharset(StandardCharsets.UTF_8);
    }

    public String encodeCharset(Charset charset) {
        byte[] bArrInternalArray = internalArray();
        Objects.requireNonNull(charset, "given charset must not be null");
        return new String(bArrInternalArray, charset);
    }

    public byte[] encodeUtf8ToBytes() {
        return encodeCharsetToBytes(StandardCharsets.UTF_8);
    }

    public byte[] encodeCharsetToBytes(Charset charset) {
        return encodeCharset(charset).getBytes(charset);
    }

    public String encode(BinaryToTextEncoding.Encoder encoder) {
        return encoder.encode(internalArray(), this.byteOrder);
    }

    public List<Byte> toList() {
        return Util.Converter.toList(internalArray());
    }

    public Byte[] toBoxedArray() {
        return Util.Converter.toBoxedArray(internalArray());
    }

    public BitSet toBitSet() {
        return BitSet.valueOf(internalArray());
    }

    public BigInteger toBigInteger() {
        if (this.byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return new BigInteger(new BytesTransformer.ReverseTransformer().transform(internalArray(), false));
        }
        return new BigInteger(internalArray());
    }

    public UUID toUUID() {
        if (length() != 16) {
            throw new IllegalStateException("creating UUID requires internal array to be exactly 16 bytes, was " + length());
        }
        ByteBuffer byteBufferBuffer = buffer();
        return new UUID(byteBufferBuffer.getLong(), byteBufferBuffer.getLong());
    }

    public byte toByte() {
        Util.Validation.checkExactLength(length(), 1, "byte");
        return internalArray()[0];
    }

    public int toUnsignedByte() {
        Util.Validation.checkExactLength(length(), 1, "unsigned byte");
        return unsignedByteAt(0);
    }

    public char toChar() {
        Util.Validation.checkExactLength(length(), 2, "char");
        return charAt(0);
    }

    public short toShort() {
        Util.Validation.checkExactLength(length(), 2, "short");
        return shortAt(0);
    }

    public int toInt() {
        Util.Validation.checkExactLength(length(), 4, "int");
        return intAt(0);
    }

    public int[] toIntArray() {
        Util.Validation.checkModLength(length(), 4, "creating an int array");
        return Util.Converter.toIntArray(internalArray(), this.byteOrder);
    }

    public long toLong() {
        Util.Validation.checkExactLength(length(), 8, "long");
        return longAt(0);
    }

    public long[] toLongArray() {
        Util.Validation.checkModLength(length(), 8, "creating an long array");
        return Util.Converter.toLongArray(internalArray(), this.byteOrder);
    }

    public float toFloat() {
        Util.Validation.checkExactLength(length(), 4, "float");
        return internalBuffer().getFloat();
    }

    public float[] toFloatArray() {
        Util.Validation.checkModLength(length(), 4, "creating an float array");
        return Util.Converter.toFloatArray(internalArray(), this.byteOrder);
    }

    public double toDouble() {
        Util.Validation.checkExactLength(length(), 8, "double");
        return internalBuffer().getDouble();
    }

    public double[] toDoubleArray() {
        Util.Validation.checkModLength(length(), 8, "creating an double array");
        return Util.Converter.toDoubleArray(internalArray(), this.byteOrder);
    }

    public char[] toCharArray() {
        return toCharArray(StandardCharsets.UTF_8);
    }

    public char[] toCharArray(Charset charset) {
        return Util.Converter.byteToCharArray(internalArray(), charset, this.byteOrder);
    }

    @Override // java.lang.Comparable
    public int compareTo(Bytes bytes) {
        return internalBuffer().compareTo(bytes.internalBuffer());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Bytes bytes = (Bytes) obj;
        if (Arrays.equals(this.byteArray, bytes.byteArray)) {
            return Objects.equals(this.byteOrder, bytes.byteOrder);
        }
        return false;
    }

    public boolean equals(byte[] bArr) {
        return bArr != null && Arrays.equals(internalArray(), bArr);
    }

    public boolean equalsConstantTime(byte[] bArr) {
        return bArr != null && Util.Byte.constantTimeEquals(internalArray(), bArr);
    }

    public boolean equals(Byte[] bArr) {
        return Util.Obj.equals(internalArray(), bArr);
    }

    public boolean equals(ByteBuffer byteBuffer) {
        return byteBuffer != null && this.byteOrder == byteBuffer.order() && internalBuffer().equals(byteBuffer);
    }

    public boolean equalsContent(Bytes bytes) {
        return bytes != null && Arrays.equals(internalArray(), bytes.internalArray());
    }

    public int hashCode() {
        if (this.hashCodeCache == 0) {
            this.hashCodeCache = Util.Obj.hashCode(internalArray(), byteOrder());
        }
        return this.hashCodeCache;
    }

    public String toString() {
        return Util.Obj.toString(this);
    }

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new Util.BytesIterator(internalArray());
    }

    private static class Factory implements BytesFactory {
        private Factory() {
        }

        @Override // at.favre.lib.bytes.BytesFactory
        public Bytes wrap(byte[] bArr, ByteOrder byteOrder) {
            return new Bytes(bArr, byteOrder);
        }
    }
}
