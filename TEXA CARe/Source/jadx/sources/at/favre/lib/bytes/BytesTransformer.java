package at.favre.lib.bytes;

import at.favre.lib.bytes.Util;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface BytesTransformer {
    boolean supportInPlaceTransformation();

    byte[] transform(byte[] bArr, boolean z);

    public static final class BitWiseOperatorTransformer implements BytesTransformer {
        private final Mode mode;
        private final byte[] secondArray;

        public enum Mode {
            AND,
            OR,
            XOR
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return true;
        }

        BitWiseOperatorTransformer(byte[] bArr, Mode mode) {
            Objects.requireNonNull(bArr, "the second byte array must not be null");
            this.secondArray = bArr;
            Objects.requireNonNull(mode, "passed bitwise mode must not be null");
            this.mode = mode;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            if (bArr.length != this.secondArray.length) {
                throw new IllegalArgumentException("all byte array must be of same length doing bit wise operation");
            }
            byte[] bArr2 = z ? bArr : new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = AnonymousClass1.$SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode[this.mode.ordinal()];
                if (i2 == 1) {
                    bArr2[i] = (byte) (bArr[i] & this.secondArray[i]);
                } else if (i2 == 2) {
                    bArr2[i] = (byte) (bArr[i] ^ this.secondArray[i]);
                } else {
                    bArr2[i] = (byte) (bArr[i] | this.secondArray[i]);
                }
            }
            return bArr2;
        }
    }

    public static final class NegateTransformer implements BytesTransformer {
        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return true;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            if (!z) {
                bArr = Bytes.from(bArr).array();
            }
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = (byte) (~bArr[i]);
            }
            return bArr;
        }
    }

    public static final class ShiftTransformer implements BytesTransformer {
        private final int shiftCount;
        private final Type type;

        public enum Type {
            LEFT_SHIFT,
            RIGHT_SHIFT
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return true;
        }

        ShiftTransformer(int i, Type type) {
            this.shiftCount = i;
            Objects.requireNonNull(type, "passed shift type must not be null");
            this.type = type;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            if (!z) {
                bArr = Bytes.from(bArr).array();
            }
            if (AnonymousClass1.$SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type[this.type.ordinal()] == 1) {
                return Util.Byte.shiftRight(bArr, this.shiftCount);
            }
            return Util.Byte.shiftLeft(bArr, this.shiftCount);
        }
    }

    /* JADX INFO: renamed from: at.favre.lib.bytes.BytesTransformer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode;
        static final /* synthetic */ int[] $SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type;

        static {
            int[] iArr = new int[ShiftTransformer.Type.values().length];
            $SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type = iArr;
            try {
                iArr[ShiftTransformer.Type.RIGHT_SHIFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$at$favre$lib$bytes$BytesTransformer$ShiftTransformer$Type[ShiftTransformer.Type.LEFT_SHIFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[BitWiseOperatorTransformer.Mode.values().length];
            $SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode = iArr2;
            try {
                iArr2[BitWiseOperatorTransformer.Mode.AND.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode[BitWiseOperatorTransformer.Mode.XOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$at$favre$lib$bytes$BytesTransformer$BitWiseOperatorTransformer$Mode[BitWiseOperatorTransformer.Mode.OR.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static final class ConcatTransformer implements BytesTransformer {
        private final byte[] secondArray;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        ConcatTransformer(byte[] bArr) {
            Objects.requireNonNull(bArr, "the second byte array must not be null");
            this.secondArray = bArr;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            return Util.Byte.concat(bArr, this.secondArray);
        }
    }

    public static final class ReverseTransformer implements BytesTransformer {
        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return true;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            if (!z) {
                bArr = Bytes.from(bArr).array();
            }
            Util.Byte.reverse(bArr, 0, bArr.length);
            return bArr;
        }
    }

    public static final class CopyTransformer implements BytesTransformer {
        final int length;
        final int offset;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        CopyTransformer(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            int i = this.length;
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, this.offset, bArr2, 0, i);
            return bArr2;
        }
    }

    public static final class ResizeTransformer implements BytesTransformer {
        private final Mode mode;
        private final int newSize;

        public enum Mode {
            RESIZE_KEEP_FROM_ZERO_INDEX,
            RESIZE_KEEP_FROM_MAX_LENGTH
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        ResizeTransformer(int i, Mode mode) {
            this.newSize = i;
            this.mode = mode;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            int length = bArr.length;
            int i = this.newSize;
            if (length == i) {
                return bArr;
            }
            if (i < 0) {
                throw new IllegalArgumentException("cannot resize to smaller than 0");
            }
            if (i == 0) {
                return new byte[0];
            }
            byte[] bArr2 = new byte[i];
            if (this.mode == Mode.RESIZE_KEEP_FROM_MAX_LENGTH) {
                int i2 = this.newSize;
                if (i2 > bArr.length) {
                    System.arraycopy(bArr, 0, bArr2, Math.max(0, Math.abs(i2 - bArr.length)), Math.min(this.newSize, bArr.length));
                } else {
                    System.arraycopy(bArr, Math.max(0, Math.abs(i2 - bArr.length)), bArr2, Math.min(0, Math.abs(this.newSize - bArr.length)), Math.min(this.newSize, bArr.length));
                }
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
            }
            return bArr2;
        }
    }

    public static class BitSwitchTransformer implements BytesTransformer {
        private final Boolean newBitValue;
        private final int position;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return true;
        }

        BitSwitchTransformer(int i, Boolean bool) {
            this.position = i;
            this.newBitValue = bool;
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            byte[] bArrArray = z ? bArr : Bytes.from(bArr).array();
            int i = this.position;
            if (i < 0 || i >= bArr.length * 8) {
                throw new IllegalArgumentException("bit index " + (this.position * 8) + " out of bounds");
            }
            int length = (bArr.length - 1) - (i / 8);
            Boolean bool = this.newBitValue;
            if (bool == null) {
                bArrArray[length] = (byte) ((1 << (i % 8)) ^ bArrArray[length]);
            } else if (bool.booleanValue()) {
                bArrArray[length] = (byte) (bArrArray[length] | (1 << (this.position % 8)));
            } else {
                bArrArray[length] = (byte) (bArrArray[length] & (~(1 << (this.position % 8))));
            }
            return bArrArray;
        }
    }

    public static class MessageDigestTransformer implements BytesTransformer {
        static final String ALGORITHM_MD5 = "MD5";
        static final String ALGORITHM_SHA_1 = "SHA-1";
        static final String ALGORITHM_SHA_256 = "SHA-256";
        private final MessageDigest messageDigest;

        @Override // at.favre.lib.bytes.BytesTransformer
        public boolean supportInPlaceTransformation() {
            return false;
        }

        MessageDigestTransformer(String str) {
            try {
                this.messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
                throw new IllegalArgumentException("could not get message digest algorithm " + str, e);
            }
        }

        @Override // at.favre.lib.bytes.BytesTransformer
        public byte[] transform(byte[] bArr, boolean z) {
            this.messageDigest.update(bArr);
            return this.messageDigest.digest();
        }
    }
}
