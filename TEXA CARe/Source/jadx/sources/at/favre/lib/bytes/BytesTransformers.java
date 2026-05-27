package at.favre.lib.bytes;

import at.favre.lib.bytes.Util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.Random;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class BytesTransformers {
    private BytesTransformers() {
    }

    public static BytesTransformer shuffle() {
        return new ShuffleTransformer(new SecureRandom());
    }

    public static BytesTransformer shuffle(Random random) {
        return new ShuffleTransformer(random);
    }

    public static BytesTransformer sort() {
        return new SortTransformer();
    }

    public static BytesTransformer sortUnsigned() {
        return new SortTransformer(new SortTransformer.UnsignedByteComparator());
    }

    public static BytesTransformer sort(Comparator<Byte> comparator) {
        return new SortTransformer(comparator);
    }

    public static BytesTransformer checksumAppendCrc32() {
        return new ChecksumTransformer(new CRC32(), ChecksumTransformer.Mode.APPEND, 4);
    }

    public static BytesTransformer checksumCrc32() {
        return new ChecksumTransformer(new CRC32(), ChecksumTransformer.Mode.TRANSFORM, 4);
    }

    public static BytesTransformer checksum(Checksum checksum, ChecksumTransformer.Mode mode, int i) {
        return new ChecksumTransformer(checksum, mode, i);
    }

    public static BytesTransformer compressGzip() {
        return new GzipCompressor(true);
    }

    public static BytesTransformer decompressGzip() {
        return new GzipCompressor(false);
    }

    public static BytesTransformer hmacSha1(byte[] bArr) {
        return new HmacTransformer(bArr, "HmacSHA1");
    }

    public static BytesTransformer hmacSha256(byte[] bArr) {
        return new HmacTransformer(bArr, "HmacSHA256");
    }

    public static BytesTransformer hmac(byte[] bArr, String str) {
        return new HmacTransformer(bArr, str);
    }

    public static final class ShuffleTransformer implements BytesTransformer {
        private final Random random;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return true;
        }

        ShuffleTransformer(Random random) {
            Objects.requireNonNull(random, "passed random must not be null");
            this.random = random;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            if (!z) {
                bArr = Bytes.from(bArr).array();
            }
            Util.Byte.shuffle(bArr, this.random);
            return bArr;
        }
    }

    public static final class SortTransformer implements BytesTransformer {
        private final Comparator comparator;

        SortTransformer() {
            this(null);
        }

        SortTransformer(Comparator<Byte> comparator) {
            this.comparator = comparator;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            if (this.comparator == null) {
                if (!z) {
                    bArr = Bytes.from(bArr).array();
                }
                Arrays.sort(bArr);
                return bArr;
            }
            Byte[] boxedArray = Bytes.wrap(bArr).toBoxedArray();
            Arrays.sort(boxedArray, this.comparator);
            return Bytes.from(boxedArray).array();
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return this.comparator == null;
        }

        static final class UnsignedByteComparator implements Comparator<Byte> {
            UnsignedByteComparator() {
            }

            @Override // java.util.Comparator
            public int compare(Byte b, Byte b2) {
                int iByteValue = b.byteValue() & 255;
                int iByteValue2 = b2.byteValue() & 255;
                if (iByteValue == iByteValue2) {
                    return 0;
                }
                return iByteValue < iByteValue2 ? -1 : 1;
            }
        }
    }

    public static final class ChecksumTransformer implements BytesTransformer {
        private final Checksum checksum;
        private final int checksumLengthByte;
        private final Mode mode;

        public enum Mode {
            APPEND,
            TRANSFORM
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        ChecksumTransformer(Checksum checksum, Mode mode, int i) {
            if (i <= 0 || i > 8) {
                throw new IllegalArgumentException("checksum length must be between 1 and 8 bytes");
            }
            Objects.requireNonNull(checksum, "checksum instance must not be null");
            this.checksum = checksum;
            this.mode = mode;
            this.checksumLengthByte = i;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            this.checksum.update(bArr, 0, bArr.length);
            byte[] bArrArray = Bytes.from(this.checksum.getValue()).resize(this.checksumLengthByte).array();
            return this.mode == Mode.TRANSFORM ? bArrArray : Bytes.from(bArr, bArrArray).array();
        }
    }

    public static final class GzipCompressor implements BytesTransformer {
        private final boolean compress;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        GzipCompressor(boolean z) {
            this.compress = z;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            return this.compress ? compress(bArr) : decompress(bArr);
        }

        private byte[] decompress(byte[] bArr) throws Throwable {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPInputStream gZIPInputStream = null;
            try {
                try {
                    byte[] bArr2 = new byte[4096];
                    GZIPInputStream gZIPInputStream2 = new GZIPInputStream(new ByteArrayInputStream(bArr));
                    while (true) {
                        try {
                            int i = gZIPInputStream2.read(bArr2);
                            if (i <= 0) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr2, 0, i);
                        } catch (Exception e) {
                            e = e;
                            throw new IllegalStateException("could not decompress gzip", e);
                        } catch (Throwable th) {
                            th = th;
                            gZIPInputStream = gZIPInputStream2;
                            try {
                                byteArrayOutputStream.close();
                            } catch (IOException unused) {
                            }
                            if (gZIPInputStream != null) {
                                try {
                                    gZIPInputStream.close();
                                    throw th;
                                } catch (IOException unused2) {
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    }
                    gZIPInputStream2.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException unused3) {
                    }
                    try {
                        gZIPInputStream2.close();
                    } catch (IOException unused4) {
                    }
                    return byteArray;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
        }

        private byte[] compress(byte[] bArr) throws Throwable {
            GZIPOutputStream gZIPOutputStream;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            GZIPOutputStream gZIPOutputStream2 = null;
            try {
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
                try {
                    gZIPOutputStream.close();
                } catch (IOException unused2) {
                }
                return byteArray;
            } catch (Exception e2) {
                e = e2;
                throw new IllegalStateException("could not compress gzip", e);
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream2 = gZIPOutputStream;
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused3) {
                }
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                        throw th;
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
                throw th;
            }
        }
    }

    public static final class HmacTransformer implements BytesTransformer {
        static final String HMAC_SHA1 = "HmacSHA1";
        static final String HMAC_SHA256 = "HmacSHA256";
        private final String macAlgorithmName;
        private final byte[] secretKey;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        HmacTransformer(byte[] bArr, String str) {
            this.macAlgorithmName = str;
            this.secretKey = bArr;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            try {
                Mac mac = Mac.getInstance(this.macAlgorithmName);
                mac.init(new SecretKeySpec(this.secretKey, this.macAlgorithmName));
                return mac.doFinal(bArr);
            } catch (Exception e) {
                throw new IllegalArgumentException(e);
            }
        }
    }
}
