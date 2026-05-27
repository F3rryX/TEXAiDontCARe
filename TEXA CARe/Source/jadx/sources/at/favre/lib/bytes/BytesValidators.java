package at.favre.lib.bytes;

import at.favre.lib.bytes.BytesValidator;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class BytesValidators {
    private BytesValidators() {
    }

    public static BytesValidator atLeast(int i) {
        return new BytesValidator.Length(i, BytesValidator.Length.Mode.GREATER_OR_EQ_THAN);
    }

    public static BytesValidator atMost(int i) {
        return new BytesValidator.Length(i, BytesValidator.Length.Mode.SMALLER_OR_EQ_THAN);
    }

    public static BytesValidator exactLength(int i) {
        return new BytesValidator.Length(i, BytesValidator.Length.Mode.EXACT);
    }

    public static BytesValidator onlyOf(byte b) {
        return new BytesValidator.IdenticalContent(b, BytesValidator.IdenticalContent.Mode.ONLY_OF);
    }

    public static BytesValidator notOnlyOf(byte b) {
        return new BytesValidator.IdenticalContent(b, BytesValidator.IdenticalContent.Mode.NOT_ONLY_OF);
    }

    public static BytesValidator startsWith(byte... bArr) {
        return new BytesValidator.PrePostFix(true, bArr);
    }

    public static BytesValidator endsWith(byte... bArr) {
        return new BytesValidator.PrePostFix(false, bArr);
    }

    public static BytesValidator noneOf(byte b) {
        return new BytesValidator.IdenticalContent(b, BytesValidator.IdenticalContent.Mode.NONE_OF);
    }

    public static BytesValidator or(BytesValidator... bytesValidatorArr) {
        return new BytesValidator.Logical(Arrays.asList(bytesValidatorArr), BytesValidator.Logical.Operator.OR);
    }

    public static BytesValidator and(BytesValidator... bytesValidatorArr) {
        return new BytesValidator.Logical(Arrays.asList(bytesValidatorArr), BytesValidator.Logical.Operator.AND);
    }

    public static BytesValidator not(BytesValidator bytesValidator) {
        return new BytesValidator.Logical(Collections.singletonList(bytesValidator), BytesValidator.Logical.Operator.NOT);
    }
}
