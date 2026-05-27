package at.favre.lib.bytes;

import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
final class Util {

    static final class Byte {
        private Byte() {
        }

        static byte[] concat(byte[]... bArr) {
            int length = 0;
            for (byte[] bArr2 : bArr) {
                length += bArr2.length;
            }
            byte[] bArr3 = new byte[length];
            int length2 = 0;
            for (byte[] bArr4 : bArr) {
                System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
                length2 += bArr4.length;
            }
            return bArr3;
        }

        static byte[] concatVararg(byte b, byte[] bArr) {
            return bArr == null ? new byte[]{b} : concat(new byte[]{b}, bArr);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
        
            r6 = r6 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        static int indexOf(byte[] bArr, byte[] bArr2, int i, int i2) {
            Objects.requireNonNull(bArr, "array must not be null");
            Objects.requireNonNull(bArr2, "target must not be null");
            if (bArr2.length != 0 && i >= 0) {
                while (i < Math.min(i2, (bArr.length - bArr2.length) + 1)) {
                    for (int i3 = 0; i3 < bArr2.length; i3++) {
                        if (bArr[i + i3] != bArr2[i3]) {
                            break;
                        }
                    }
                    return i;
                }
            }
            return -1;
        }

        static int lastIndexOf(byte[] bArr, byte b, int i, int i2) {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                if (bArr[i3] == b) {
                    return i3;
                }
            }
            return -1;
        }

        static int countByte(byte[] bArr, byte b) {
            int i = 0;
            for (byte b2 : bArr) {
                if (b2 == b) {
                    i++;
                }
            }
            return i;
        }

        static int countByteArray(byte[] bArr, byte[] bArr2) {
            Objects.requireNonNull(bArr2, "pattern must not be null");
            if (bArr2.length == 0 || bArr.length == 0) {
                return 0;
            }
            int i = 0;
            for (int i2 = 0; i2 < (bArr.length - bArr2.length) + 1; i2++) {
                int i3 = 0;
                while (true) {
                    if (i3 >= bArr2.length) {
                        i++;
                        break;
                    }
                    if (bArr[i2 + i3] != bArr2[i3]) {
                        break;
                    }
                    i3++;
                }
            }
            return i;
        }

        static void shuffle(byte[] bArr, Random random) {
            for (int length = bArr.length - 1; length > 0; length--) {
                int iNextInt = random.nextInt(length + 1);
                byte b = bArr[iNextInt];
                bArr[iNextInt] = bArr[length];
                bArr[length] = b;
            }
        }

        static void reverse(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            for (int i3 = i2 - 1; i < i3; i3--) {
                byte b = bArr[i];
                bArr[i] = bArr[i3];
                bArr[i3] = b;
                i++;
            }
        }

        static byte[] shiftLeft(byte[] bArr, int i) {
            int i2 = i % 8;
            byte b = (byte) ((1 << i2) - 1);
            int i3 = i / 8;
            for (int i4 = 0; i4 < bArr.length; i4++) {
                int i5 = i4 + i3;
                if (i5 >= bArr.length) {
                    bArr[i4] = 0;
                } else {
                    byte b2 = (byte) (bArr[i5] << i2);
                    int i6 = i5 + 1;
                    if (i6 < bArr.length) {
                        b2 = (byte) (((bArr[i6] >>> (8 - i2)) & b) | b2);
                    }
                    bArr[i4] = b2;
                }
            }
            return bArr;
        }

        static byte[] shiftRight(byte[] bArr, int i) {
            int i2 = i % 8;
            int i3 = 8 - i2;
            byte b = (byte) (255 << i3);
            int i4 = i / 8;
            for (int length = bArr.length - 1; length >= 0; length--) {
                int i5 = length - i4;
                if (i5 < 0) {
                    bArr[length] = 0;
                } else {
                    byte b2 = (byte) ((bArr[i5] & 255) >>> i2);
                    int i6 = i5 - 1;
                    if (i6 >= 0) {
                        b2 = (byte) (((bArr[i6] << i3) & b) | b2);
                    }
                    bArr[length] = b2;
                }
            }
            return bArr;
        }

        static boolean constantTimeEquals(byte[] bArr, byte[] bArr2) {
            if (bArr2 == null || bArr.length != bArr2.length) {
                return false;
            }
            int i = 0;
            for (int i2 = 0; i2 < bArr.length; i2++) {
                i |= bArr[i2] ^ bArr2[i2];
            }
            return i == 0;
        }

        static double entropy(byte[] bArr) {
            int[] iArr = new int[256];
            Arrays.fill(iArr, -1);
            for (byte b : bArr) {
                int i = b & 255;
                if (iArr[i] == -1) {
                    iArr[i] = 0;
                }
                iArr[i] = iArr[i] + 1;
            }
            double dLog = 0.0d;
            for (int i2 = 0; i2 < 256; i2++) {
                int i3 = iArr[i2];
                if (i3 != -1) {
                    double length = ((double) i3) / ((double) bArr.length);
                    dLog -= length * (Math.log(length) / Math.log(2.0d));
                }
            }
            return dLog;
        }
    }

    static final class Converter {
        private Converter() {
        }

        static byte[] toArray(Collection<java.lang.Byte> collection) {
            byte[] bArr = new byte[collection.size()];
            Iterator<java.lang.Byte> it = collection.iterator();
            int i = 0;
            while (it.hasNext()) {
                bArr[i] = it.next().byteValue();
                i++;
            }
            return bArr;
        }

        static java.lang.Byte[] toBoxedArray(byte[] bArr) {
            java.lang.Byte[] bArr2 = new java.lang.Byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr2[i] = java.lang.Byte.valueOf(bArr[i]);
            }
            return bArr2;
        }

        static List<java.lang.Byte> toList(byte[] bArr) {
            ArrayList arrayList = new ArrayList(bArr.length);
            for (byte b : bArr) {
                arrayList.add(java.lang.Byte.valueOf(b));
            }
            return arrayList;
        }

        static byte[] toPrimitiveArray(java.lang.Byte[] bArr) {
            byte[] bArr2 = new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr2[i] = bArr[i].byteValue();
            }
            return bArr2;
        }

        static byte[] toByteArray(int[] iArr) {
            byte[] bArr = new byte[iArr.length * 4];
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            for (int i = 0; i < iArr.length; i++) {
                byteBufferAllocate.clear();
                byte[] bArrArray = byteBufferAllocate.putInt(iArr[i]).array();
                System.arraycopy(bArrArray, 0, bArr, i * 4, bArrArray.length);
            }
            return bArr;
        }

        static byte[] toByteArray(long[] jArr) {
            byte[] bArr = new byte[jArr.length * 8];
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            for (int i = 0; i < jArr.length; i++) {
                byteBufferAllocate.clear();
                byte[] bArrArray = byteBufferAllocate.putLong(jArr[i]).array();
                System.arraycopy(bArrArray, 0, bArr, i * 8, bArrArray.length);
            }
            return bArr;
        }

        static byte[] charToByteArray(char[] cArr, Charset charset, int i, int i2) {
            if (i < 0 || i > cArr.length) {
                throw new IllegalArgumentException("offset must be gt 0 and smaller than array length");
            }
            if (i2 < 0 || i2 > cArr.length) {
                throw new IllegalArgumentException("length must be at least 1 and less than array length");
            }
            int i3 = i + i2;
            if (i3 > cArr.length) {
                throw new IllegalArgumentException("length + offset must be smaller than array length");
            }
            if (i2 == 0) {
                return new byte[0];
            }
            CharBuffer charBufferWrap = CharBuffer.wrap(cArr);
            if (i != 0 || i2 != charBufferWrap.remaining()) {
                charBufferWrap = charBufferWrap.subSequence(i, i3);
            }
            ByteBuffer byteBufferEncode = charset.encode(charBufferWrap);
            if (byteBufferEncode.capacity() != byteBufferEncode.limit()) {
                byte[] bArr = new byte[byteBufferEncode.remaining()];
                byteBufferEncode.get(bArr);
                return bArr;
            }
            return byteBufferEncode.array();
        }

        static char[] byteToCharArray(byte[] bArr, Charset charset, ByteOrder byteOrder) {
            Objects.requireNonNull(bArr, "bytes must not be null");
            Objects.requireNonNull(charset, "charset must not be null");
            try {
                CharBuffer charBufferDecode = charset.newDecoder().decode(ByteBuffer.wrap(bArr).order(byteOrder));
                if (charBufferDecode.capacity() != charBufferDecode.limit()) {
                    char[] cArr = new char[charBufferDecode.remaining()];
                    charBufferDecode.get(cArr);
                    return cArr;
                }
                return charBufferDecode.array();
            } catch (CharacterCodingException e) {
                throw new IllegalStateException(e);
            }
        }

        static int[] toIntArray(byte[] bArr, ByteOrder byteOrder) {
            IntBuffer intBufferAsIntBuffer = ByteBuffer.wrap(bArr).order(byteOrder).asIntBuffer();
            int[] iArr = new int[intBufferAsIntBuffer.remaining()];
            intBufferAsIntBuffer.get(iArr);
            return iArr;
        }

        static long[] toLongArray(byte[] bArr, ByteOrder byteOrder) {
            LongBuffer longBufferAsLongBuffer = ByteBuffer.wrap(bArr).order(byteOrder).asLongBuffer();
            long[] jArr = new long[longBufferAsLongBuffer.remaining()];
            longBufferAsLongBuffer.get(jArr);
            return jArr;
        }

        static float[] toFloatArray(byte[] bArr, ByteOrder byteOrder) {
            FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.wrap(bArr).order(byteOrder).asFloatBuffer();
            float[] fArr = new float[floatBufferAsFloatBuffer.remaining()];
            floatBufferAsFloatBuffer.get(fArr);
            return fArr;
        }

        static double[] toDoubleArray(byte[] bArr, ByteOrder byteOrder) {
            DoubleBuffer doubleBufferAsDoubleBuffer = ByteBuffer.wrap(bArr).order(byteOrder).asDoubleBuffer();
            double[] dArr = new double[doubleBufferAsDoubleBuffer.remaining()];
            doubleBufferAsDoubleBuffer.get(dArr);
            return dArr;
        }

        static ByteBuffer toBytesFromUUID(UUID uuid) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            byteBufferAllocate.putLong(uuid.getMostSignificantBits());
            byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
            return byteBufferAllocate;
        }
    }

    static final class Obj {
        private Obj() {
        }

        static boolean equals(byte[] bArr, java.lang.Byte[] bArr2) {
            if (bArr2 == null || bArr.length != bArr2.length) {
                return false;
            }
            for (int i = 0; i < bArr.length; i++) {
                if (bArr2[i] == null || bArr[i] != bArr2[i].byteValue()) {
                    return false;
                }
            }
            return true;
        }

        static int hashCode(byte[] bArr, ByteOrder byteOrder) {
            return (Arrays.hashCode(bArr) * 31) + (byteOrder != null ? byteOrder.hashCode() : 0);
        }

        static String toString(Bytes bytes) {
            String str;
            if (bytes.isEmpty()) {
                str = "";
            } else if (bytes.length() > 8) {
                str = "(0x" + bytes.copy(0, 4).encodeHex() + "..." + bytes.copy(bytes.length() - 4, 4).encodeHex() + ")";
            } else {
                str = "(0x" + bytes.encodeHex() + ")";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(bytes.length());
            sb.append(" ");
            sb.append(bytes.length() == 1 ? "byte" : "bytes");
            sb.append(" ");
            sb.append(str);
            return sb.toString();
        }
    }

    static final class Validation {
        private Validation() {
        }

        static void checkIndexBounds(int i, int i2, int i3, String str) {
            if (i2 < 0 || i3 + i2 > i) {
                throw new IndexOutOfBoundsException("cannot get " + str + " from index out of bounds: " + i2);
            }
        }

        static void checkExactLength(int i, int i2, String str) {
            if (i == i2) {
                return;
            }
            throw new IllegalArgumentException("cannot convert to " + str + " if length != " + i2 + " bytes (was " + i + ")");
        }

        static void checkModLength(int i, int i2, String str) {
            if (i % i2 == 0) {
                return;
            }
            throw new IllegalArgumentException("Illegal length for " + str + ". Byte array length must be multiple of " + i2 + ", length was " + i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void checkFileExists(java.io.File file) {
            if (file != null && file.exists() && file.isFile()) {
                return;
            }
            throw new IllegalArgumentException("file must not be null, has to exist and must be a file (not a directory) " + file);
        }
    }

    static final class File {
        private static final int BUF_SIZE = 4096;

        private File() {
        }

        static byte[] readFromStream(InputStream inputStream, int i) {
            boolean z = i == -1;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(z ? 32 : i);
                byte[] bArr = new byte[0];
                while (true) {
                    if (!z && i <= 0) {
                        break;
                    }
                    int iMin = Math.min(4096, z ? 4096 : i);
                    if (bArr.length != iMin) {
                        bArr = new byte[iMin];
                    }
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    i -= i2;
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
                return byteArrayOutputStream.toByteArray();
            } catch (Exception e) {
                throw new IllegalStateException("could not read from input stream", e);
            }
        }

        static byte[] readFromDataInput(DataInput dataInput, int i) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i);
            int i2 = i;
            for (int i3 = 0; i3 < i; i3++) {
                try {
                    int iMin = Math.min(i2, 4096);
                    byte[] bArr = new byte[iMin];
                    dataInput.readFully(bArr);
                    byteArrayOutputStream.write(bArr);
                    i2 -= iMin;
                } catch (Exception e) {
                    throw new IllegalStateException("could not read from data input", e);
                }
            }
            return byteArrayOutputStream.toByteArray();
        }

        static byte[] readFromFile(java.io.File file) {
            Validation.checkFileExists(file);
            try {
                return Files.readAllBytes(file.toPath());
            } catch (IOException e) {
                throw new IllegalStateException("could not read from file", e);
            }
        }

        static byte[] readFromFile(java.io.File file, int i, int i2) {
            Validation.checkFileExists(file);
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    randomAccessFile.seek(i);
                    byte[] fromDataInput = readFromDataInput(randomAccessFile, i2);
                    randomAccessFile.close();
                    return fromDataInput;
                } finally {
                }
            } catch (Exception e) {
                throw new IllegalStateException("could not read from random access file", e);
            }
        }
    }

    private Util() {
    }

    static final class BytesIterator implements Iterator<java.lang.Byte> {
        private final byte[] array;
        private int cursor = 0;

        BytesIterator(byte[] bArr) {
            this.array = bArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.cursor != this.array.length;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public java.lang.Byte next() {
            try {
                int i = this.cursor;
                java.lang.Byte bValueOf = java.lang.Byte.valueOf(this.array[i]);
                this.cursor = i + 1;
                return bValueOf;
            } catch (IndexOutOfBoundsException unused) {
                throw new NoSuchElementException();
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("The Bytes iterator does not support removing");
        }
    }
}
