package at.favre.lib.bytes;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface BytesValidator {
    boolean validate(byte[] bArr);

    public static final class Length implements BytesValidator {
        private final Mode mode;
        private final int refLength;

        enum Mode {
            SMALLER_OR_EQ_THAN,
            GREATER_OR_EQ_THAN,
            EXACT
        }

        public Length(int i, Mode mode) {
            this.refLength = i;
            this.mode = mode;
        }

        @Override // at.favre.lib.bytes.BytesValidator
        public boolean validate(byte[] bArr) {
            int i = AnonymousClass1.$SwitchMap$at$favre$lib$bytes$BytesValidator$Length$Mode[this.mode.ordinal()];
            return i != 1 ? i != 2 ? bArr.length == this.refLength : bArr.length <= this.refLength : bArr.length >= this.refLength;
        }
    }

    public static final class IdenticalContent implements BytesValidator {
        private final Mode mode;
        private final byte refByte;

        enum Mode {
            ONLY_OF,
            NONE_OF,
            NOT_ONLY_OF
        }

        IdenticalContent(byte b, Mode mode) {
            this.refByte = b;
            this.mode = mode;
        }

        @Override // at.favre.lib.bytes.BytesValidator
        public boolean validate(byte[] bArr) {
            for (byte b : bArr) {
                if (this.mode == Mode.NONE_OF && b == this.refByte) {
                    return false;
                }
                if (this.mode == Mode.ONLY_OF && b != this.refByte) {
                    return false;
                }
                if (this.mode == Mode.NOT_ONLY_OF && b != this.refByte) {
                    return true;
                }
            }
            return this.mode == Mode.NONE_OF || this.mode == Mode.ONLY_OF;
        }
    }

    public static final class PrePostFix implements BytesValidator {
        private final byte[] pfix;
        private final boolean startsWith;

        public PrePostFix(boolean z, byte... bArr) {
            this.pfix = bArr;
            this.startsWith = z;
        }

        @Override // at.favre.lib.bytes.BytesValidator
        public boolean validate(byte[] bArr) {
            if (this.pfix.length > bArr.length) {
                return false;
            }
            int i = 0;
            while (true) {
                byte[] bArr2 = this.pfix;
                if (i >= bArr2.length) {
                    return true;
                }
                boolean z = this.startsWith;
                if (z && bArr2[i] != bArr[i]) {
                    return false;
                }
                if (!z && bArr2[i] != bArr[(bArr.length - bArr2.length) + i]) {
                    return false;
                }
                i++;
            }
        }
    }

    public static final class Logical implements BytesValidator {
        private final Operator operator;
        private final List<BytesValidator> validatorList;

        enum Operator {
            OR,
            AND,
            NOT
        }

        public Logical(List<BytesValidator> list, Operator operator) {
            if (list.isEmpty()) {
                throw new IllegalArgumentException("must contain at least 1 element");
            }
            if (operator == Operator.NOT && list.size() != 1) {
                throw new IllegalArgumentException("not operator can only be applied to single element");
            }
            this.validatorList = list;
            this.operator = operator;
        }

        @Override // at.favre.lib.bytes.BytesValidator
        public boolean validate(byte[] bArr) {
            boolean zValidate;
            if (this.operator == Operator.NOT) {
                return !this.validatorList.get(0).validate(bArr);
            }
            boolean z = this.operator != Operator.OR;
            for (BytesValidator bytesValidator : this.validatorList) {
                if (AnonymousClass1.$SwitchMap$at$favre$lib$bytes$BytesValidator$Logical$Operator[this.operator.ordinal()] == 1) {
                    zValidate = bytesValidator.validate(bArr) & z;
                } else {
                    zValidate = bytesValidator.validate(bArr) | z;
                }
                z = zValidate;
            }
            return z;
        }
    }

    /* JADX INFO: renamed from: at.favre.lib.bytes.BytesValidator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$at$favre$lib$bytes$BytesValidator$Length$Mode;
        static final /* synthetic */ int[] $SwitchMap$at$favre$lib$bytes$BytesValidator$Logical$Operator;

        static {
            int[] iArr = new int[Logical.Operator.values().length];
            $SwitchMap$at$favre$lib$bytes$BytesValidator$Logical$Operator = iArr;
            try {
                iArr[Logical.Operator.AND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$at$favre$lib$bytes$BytesValidator$Logical$Operator[Logical.Operator.OR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Length.Mode.values().length];
            $SwitchMap$at$favre$lib$bytes$BytesValidator$Length$Mode = iArr2;
            try {
                iArr2[Length.Mode.GREATER_OR_EQ_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$at$favre$lib$bytes$BytesValidator$Length$Mode[Length.Mode.SMALLER_OR_EQ_THAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$at$favre$lib$bytes$BytesValidator$Length$Mode[Length.Mode.EXACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }
}
