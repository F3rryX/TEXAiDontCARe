package at.favre.lib.crypto.bcrypt;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.bytes.BytesTransformer;
import at.favre.lib.bytes.BytesValidators;
import at.favre.lib.bytes.MutableBytes;
import at.favre.lib.crypto.bcrypt.BCryptFormatter;
import at.favre.lib.crypto.bcrypt.BCryptParser;
import at.favre.lib.crypto.bcrypt.Radix64Encoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class BCrypt {
    private static final Charset DEFAULT_CHARSET = StandardCharsets.UTF_8;
    static final int HASH_OUT_LENGTH = 23;
    static final byte MAJOR_VERSION = 50;
    public static final int MAX_COST = 31;
    public static final int MIN_COST = 4;
    public static final int SALT_LENGTH = 16;
    static final byte SEPARATOR = 36;

    private BCrypt() {
    }

    public static Hasher withDefaults() {
        return new Hasher(Version.VERSION_2A, new SecureRandom(), LongPasswordStrategies.strict(Version.VERSION_2A));
    }

    public static Hasher with(Version version) {
        return new Hasher(version, new SecureRandom(), LongPasswordStrategies.strict(version));
    }

    public static Hasher with(SecureRandom secureRandom) {
        return new Hasher(Version.VERSION_2A, secureRandom, LongPasswordStrategies.strict(Version.VERSION_2A));
    }

    public static Hasher with(LongPasswordStrategy longPasswordStrategy) {
        return new Hasher(Version.VERSION_2A, new SecureRandom(), longPasswordStrategy);
    }

    public static Hasher with(Version version, LongPasswordStrategy longPasswordStrategy) {
        return new Hasher(version, new SecureRandom(), longPasswordStrategy);
    }

    public static Hasher with(Version version, SecureRandom secureRandom, LongPasswordStrategy longPasswordStrategy) {
        return new Hasher(version, secureRandom, longPasswordStrategy);
    }

    public static Verifyer verifyer() {
        return verifyer(null, null);
    }

    public static Verifyer verifyer(Version version) {
        return new Verifyer(version, LongPasswordStrategies.strict(version));
    }

    public static Verifyer verifyer(Version version, LongPasswordStrategy longPasswordStrategy) {
        return new Verifyer(version, longPasswordStrategy);
    }

    public static final class Hasher {
        private final Charset defaultCharset;
        private final LongPasswordStrategy longPasswordStrategy;
        private final SecureRandom secureRandom;
        private final Version version;

        private Hasher(Version version, SecureRandom secureRandom, LongPasswordStrategy longPasswordStrategy) {
            this.defaultCharset = BCrypt.DEFAULT_CHARSET;
            this.version = version;
            this.secureRandom = secureRandom;
            this.longPasswordStrategy = longPasswordStrategy;
        }

        public char[] hashToChar(int i, char[] cArr) {
            return this.defaultCharset.decode(ByteBuffer.wrap(hash(i, cArr))).array();
        }

        public String hashToString(int i, char[] cArr) {
            return new String(hash(i, cArr), this.defaultCharset);
        }

        public byte[] hash(int i, char[] cArr) {
            if (cArr == null) {
                throw new IllegalArgumentException("provided password must not be null");
            }
            byte[] bArrArray = null;
            try {
                bArrArray = Bytes.from(cArr, this.defaultCharset).array();
                return hash(i, Bytes.random(16, this.secureRandom).array(), bArrArray);
            } finally {
                Bytes.wrapNullSafe(bArrArray).mutable().secureWipe();
            }
        }

        public byte[] hash(int i, byte[] bArr) {
            return hash(i, Bytes.random(16, this.secureRandom).array(), bArr);
        }

        public byte[] hash(int i, byte[] bArr, byte[] bArr2) {
            return this.version.formatter.createHashMessage(hashRaw(i, bArr, bArr2));
        }

        public HashData hashRaw(int i, byte[] bArr, byte[] bArr2) {
            if (i > 31 || i < 4) {
                throw new IllegalArgumentException("cost factor must be between 4 and 31, was " + i);
            }
            if (bArr == null) {
                throw new IllegalArgumentException("salt must not be null");
            }
            if (bArr.length != 16) {
                throw new IllegalArgumentException("salt must be exactly 16 bytes, was " + bArr.length);
            }
            if (bArr2 == null) {
                throw new IllegalArgumentException("provided password must not be null");
            }
            if (!this.version.appendNullTerminator && bArr2.length == 0) {
                throw new IllegalArgumentException("provided password must at least be length 1 if no null terminator is appended");
            }
            if (bArr2.length > this.version.allowedMaxPwLength + (!this.version.appendNullTerminator ? 1 : 0)) {
                bArr2 = this.longPasswordStrategy.derive(bArr2);
            }
            boolean z = this.version.appendNullTerminator;
            Bytes bytesWrap = Bytes.wrap(bArr2);
            byte[] bArrArray = (z ? bytesWrap.append((byte) 0) : bytesWrap.copy()).array();
            try {
                byte[] bArrCryptRaw = new BCryptOpenBSDProtocol().cryptRaw(1 << i, bArr, bArrArray);
                Version version = this.version;
                if (version.useOnly23bytesForHash) {
                    bArrCryptRaw = Bytes.wrap(bArrCryptRaw).resize(23, BytesTransformer.ResizeTransformer.Mode.RESIZE_KEEP_FROM_ZERO_INDEX).array();
                }
                return new HashData(i, version, bArr, bArrCryptRaw);
            } finally {
                Bytes.wrapNullSafe(bArrArray).mutable().secureWipe();
            }
        }
    }

    public static final class HashData {
        public final int cost;
        public final byte[] rawHash;
        public final byte[] rawSalt;
        public final Version version;

        public HashData(int i, Version version, byte[] bArr, byte[] bArr2) {
            Objects.requireNonNull(bArr2);
            Objects.requireNonNull(bArr);
            Objects.requireNonNull(version);
            if (!Bytes.wrap(bArr).validate(BytesValidators.exactLength(16)) || !Bytes.wrap(bArr2).validate(BytesValidators.or(BytesValidators.exactLength(23), BytesValidators.exactLength(24)))) {
                throw new IllegalArgumentException("salt must be exactly 16 bytes and hash 23 bytes long");
            }
            this.cost = i;
            this.version = version;
            this.rawSalt = bArr;
            this.rawHash = bArr2;
        }

        public void wipe() {
            Bytes.wrapNullSafe(this.rawSalt).mutable().secureWipe();
            Bytes.wrapNullSafe(this.rawHash).mutable().secureWipe();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            HashData hashData = (HashData) obj;
            return this.cost == hashData.cost && this.version == hashData.version && Bytes.wrap(this.rawSalt).equalsConstantTime(hashData.rawSalt) && Bytes.wrap(this.rawHash).equalsConstantTime(hashData.rawHash);
        }

        public int hashCode() {
            return (((Objects.hash(Integer.valueOf(this.cost), this.version) * 31) + Arrays.hashCode(this.rawSalt)) * 31) + Arrays.hashCode(this.rawHash);
        }

        public String toString() {
            return "HashData{cost=" + this.cost + ", version=" + this.version + ", rawSalt=" + Bytes.wrap(this.rawSalt).encodeHex() + ", rawHash=" + Bytes.wrap(this.rawHash).encodeHex() + '}';
        }
    }

    public static final class Verifyer {
        private final Charset defaultCharset;
        private final LongPasswordStrategy longPasswordStrategy;
        private final Version version;

        private Verifyer(Version version, LongPasswordStrategy longPasswordStrategy) {
            this.defaultCharset = BCrypt.DEFAULT_CHARSET;
            this.version = version;
            this.longPasswordStrategy = longPasswordStrategy;
        }

        public Result verifyStrict(byte[] bArr, byte[] bArr2) {
            return innerVerifyBytes(bArr, bArr2, true);
        }

        public Result verify(byte[] bArr, byte[] bArr2) {
            return innerVerifyBytes(bArr, bArr2, false);
        }

        public Result verifyStrict(char[] cArr, char[] cArr2) {
            return innerVerifyChar(cArr, cArr2, true);
        }

        public Result verify(char[] cArr, char[] cArr2) {
            return innerVerifyChar(cArr, cArr2, false);
        }

        public Result verify(char[] cArr, CharSequence charSequence) {
            return innerVerifyChar(cArr, toCharArray(charSequence), false);
        }

        public Result verify(char[] cArr, byte[] bArr) {
            MutableBytes mutableBytesMutable = Bytes.from(cArr, this.defaultCharset).mutable();
            try {
                Result resultInnerVerifyBytes = innerVerifyBytes(mutableBytesMutable.array(), bArr, false);
                if (mutableBytesMutable != null) {
                    mutableBytesMutable.close();
                }
                return resultInnerVerifyBytes;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (mutableBytesMutable != null) {
                        try {
                            mutableBytesMutable.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        private static char[] toCharArray(CharSequence charSequence) {
            if (charSequence instanceof String) {
                return charSequence.toString().toCharArray();
            }
            char[] cArr = new char[charSequence.length()];
            for (int i = 0; i < charSequence.length(); i++) {
                cArr[i] = charSequence.charAt(i);
            }
            return cArr;
        }

        private Result innerVerifyChar(char[] cArr, char[] cArr2, boolean z) throws Throwable {
            byte[] bArr;
            byte[] bArrArray = null;
            try {
                byte[] bArrArray2 = Bytes.from(cArr, this.defaultCharset).array();
                try {
                    bArrArray = Bytes.from(cArr2, this.defaultCharset).array();
                    Result resultInnerVerifyBytes = innerVerifyBytes(bArrArray2, bArrArray, z);
                    Bytes.wrapNullSafe(bArrArray2).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArrArray).mutable().secureWipe();
                    return resultInnerVerifyBytes;
                } catch (Throwable th) {
                    th = th;
                    byte[] bArr2 = bArrArray;
                    bArrArray = bArrArray2;
                    bArr = bArr2;
                    Bytes.wrapNullSafe(bArrArray).mutable().secureWipe();
                    Bytes.wrapNullSafe(bArr).mutable().secureWipe();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bArr = null;
            }
        }

        private Result innerVerifyBytes(byte[] bArr, byte[] bArr2, boolean z) {
            HashData hashData;
            Objects.requireNonNull(bArr2);
            try {
                Version version = this.version;
                if (version == null) {
                    hashData = Version.VERSION_2A.parser.parse(bArr2);
                    version = hashData.version;
                } else {
                    hashData = version.parser.parse(bArr2);
                }
                if (z) {
                    if (this.version == null) {
                        throw new IllegalArgumentException("Using strict requires to define a Version. Try 'BCrypt.verifier(Version.VERSION_2A)'.");
                    }
                    if (hashData.version != this.version) {
                        return new Result(hashData, false);
                    }
                }
                return verifyBCrypt(version, determinePasswordStrategy(version), bArr, hashData.cost, hashData.rawSalt, hashData.rawHash);
            } catch (IllegalBCryptFormatException e) {
                return new Result(e);
            }
        }

        private LongPasswordStrategy determinePasswordStrategy(Version version) {
            LongPasswordStrategy longPasswordStrategy = this.longPasswordStrategy;
            return longPasswordStrategy == null ? LongPasswordStrategies.strict(version) : longPasswordStrategy;
        }

        public Result verify(byte[] bArr, HashData hashData) {
            return verify(bArr, hashData.cost, hashData.rawSalt, hashData.rawHash);
        }

        public Result verify(byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
            Version version = this.version;
            if (version == null) {
                version = Version.VERSION_2A;
            }
            Version version2 = version;
            return verifyBCrypt(version2, determinePasswordStrategy(version2), bArr, i, bArr2, bArr3);
        }

        private static Result verifyBCrypt(Version version, LongPasswordStrategy longPasswordStrategy, byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
            Objects.requireNonNull(version);
            Objects.requireNonNull(longPasswordStrategy);
            Hasher hasherWith = BCrypt.with(version, longPasswordStrategy);
            Objects.requireNonNull(bArr2);
            Objects.requireNonNull(bArr);
            HashData hashDataHashRaw = hasherWith.hashRaw(i, bArr2, bArr);
            Bytes bytesWrap = Bytes.wrap(hashDataHashRaw.rawHash);
            Objects.requireNonNull(bArr3);
            return new Result(hashDataHashRaw, bytesWrap.equalsConstantTime(bArr3));
        }
    }

    public static final class Result {
        public final HashData details;
        public final String formatErrorMessage;
        public final boolean validFormat;
        public final boolean verified;

        Result(IllegalBCryptFormatException illegalBCryptFormatException) {
            this(null, false, false, illegalBCryptFormatException.getMessage());
        }

        Result(HashData hashData, boolean z) {
            this(hashData, true, z, null);
        }

        private Result(HashData hashData, boolean z, boolean z2, String str) {
            this.details = hashData;
            this.validFormat = z;
            this.verified = z2;
            this.formatErrorMessage = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Result result = (Result) obj;
            return this.validFormat == result.validFormat && this.verified == result.verified && Objects.equals(this.details, result.details) && Objects.equals(this.formatErrorMessage, result.formatErrorMessage);
        }

        public int hashCode() {
            return Objects.hash(this.details, Boolean.valueOf(this.validFormat), Boolean.valueOf(this.verified), this.formatErrorMessage);
        }

        public String toString() {
            return "Result{details=" + this.details + ", validFormat=" + this.validFormat + ", verified=" + this.verified + ", formatErrorMessage='" + this.formatErrorMessage + "'}";
        }
    }

    public static final class Version {
        private static final BCryptFormatter DEFAULT_FORMATTER;
        public static final int DEFAULT_MAX_PW_LENGTH_BYTE = 71;
        private static final BCryptParser DEFAULT_PARSER;
        public static final int MAX_PW_LENGTH_BYTE = 72;
        public static final List<Version> SUPPORTED_VERSIONS;
        public static final Version VERSION_2A;
        public static final Version VERSION_2B;
        public static final Version VERSION_2X;
        public static final Version VERSION_2Y;
        public static final Version VERSION_2Y_NO_NULL_TERMINATOR;
        public static final Version VERSION_BC;
        public final int allowedMaxPwLength;
        public final boolean appendNullTerminator;
        public final BCryptFormatter formatter;
        public final BCryptParser parser;
        public final boolean useOnly23bytesForHash;
        public final byte[] versionIdentifier;

        static {
            BCryptFormatter.Default r7 = new BCryptFormatter.Default(new Radix64Encoder.Default(), BCrypt.DEFAULT_CHARSET);
            DEFAULT_FORMATTER = r7;
            BCryptParser.Default r8 = new BCryptParser.Default(new Radix64Encoder.Default(), BCrypt.DEFAULT_CHARSET);
            DEFAULT_PARSER = r8;
            Version version = new Version(new byte[]{BCrypt.MAJOR_VERSION, 97}, r7, r8);
            VERSION_2A = version;
            Version version2 = new Version(new byte[]{BCrypt.MAJOR_VERSION, 98}, r7, r8);
            VERSION_2B = version2;
            Version version3 = new Version(new byte[]{BCrypt.MAJOR_VERSION, 120}, r7, r8);
            VERSION_2X = version3;
            Version version4 = new Version(new byte[]{BCrypt.MAJOR_VERSION, 121}, r7, r8);
            VERSION_2Y = version4;
            VERSION_2Y_NO_NULL_TERMINATOR = new Version(new byte[]{BCrypt.MAJOR_VERSION, 121}, true, false, 72, r7, r8);
            VERSION_BC = new Version(new byte[]{BCrypt.MAJOR_VERSION, 99}, false, false, 71, r7, r8);
            SUPPORTED_VERSIONS = Collections.unmodifiableList(Arrays.asList(version, version2, version3, version4));
        }

        private Version(byte[] bArr, BCryptFormatter bCryptFormatter, BCryptParser bCryptParser) {
            this(bArr, true, true, 71, bCryptFormatter, bCryptParser);
        }

        public Version(byte[] bArr, boolean z, boolean z2, int i, BCryptFormatter bCryptFormatter, BCryptParser bCryptParser) {
            this.versionIdentifier = bArr;
            this.useOnly23bytesForHash = z;
            this.appendNullTerminator = z2;
            this.allowedMaxPwLength = i;
            this.formatter = bCryptFormatter;
            this.parser = bCryptParser;
            if (i > 72) {
                throw new IllegalArgumentException("allowed max pw length cannot be gt 72");
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Version version = (Version) obj;
            return this.useOnly23bytesForHash == version.useOnly23bytesForHash && this.appendNullTerminator == version.appendNullTerminator && this.allowedMaxPwLength == version.allowedMaxPwLength && Arrays.equals(this.versionIdentifier, version.versionIdentifier);
        }

        public int hashCode() {
            return (Objects.hash(Boolean.valueOf(this.useOnly23bytesForHash), Boolean.valueOf(this.appendNullTerminator), Integer.valueOf(this.allowedMaxPwLength)) * 31) + Arrays.hashCode(this.versionIdentifier);
        }

        public String toString() {
            return "$" + new String(this.versionIdentifier) + "$";
        }
    }
}
