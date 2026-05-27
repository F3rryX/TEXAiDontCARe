package at.favre.lib.crypto.bcrypt;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.bytes.BytesTransformer;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public interface LongPasswordStrategy {

    public static final class PassThroughStrategy implements LongPasswordStrategy {
        @Override // at.favre.lib.crypto.bcrypt.LongPasswordStrategy
        public byte[] derive(byte[] bArr) {
            return bArr;
        }
    }

    byte[] derive(byte[] bArr);

    public static abstract class BaseLongPasswordStrategy implements LongPasswordStrategy {
        final int maxLength;

        abstract byte[] innerDerive(byte[] bArr);

        private BaseLongPasswordStrategy(int i) {
            this.maxLength = i;
        }

        @Override // at.favre.lib.crypto.bcrypt.LongPasswordStrategy
        public byte[] derive(byte[] bArr) {
            return bArr.length >= this.maxLength ? innerDerive(bArr) : bArr;
        }
    }

    public static final class StrictMaxPasswordLengthStrategy extends BaseLongPasswordStrategy {
        StrictMaxPasswordLengthStrategy(int i) {
            super(i);
        }

        @Override // at.favre.lib.crypto.bcrypt.LongPasswordStrategy.BaseLongPasswordStrategy
        public byte[] innerDerive(byte[] bArr) {
            throw new IllegalArgumentException("password must not be longer than " + this.maxLength + " bytes plus null terminator encoded in utf-8, was " + bArr.length);
        }
    }

    public static final class Sha512DerivationStrategy extends BaseLongPasswordStrategy {
        Sha512DerivationStrategy(int i) {
            super(i);
        }

        @Override // at.favre.lib.crypto.bcrypt.LongPasswordStrategy.BaseLongPasswordStrategy
        public byte[] innerDerive(byte[] bArr) {
            return Bytes.wrap(bArr).hash(McElieceCCA2KeyGenParameterSpec.SHA512).array();
        }
    }

    public static final class TruncateStrategy extends BaseLongPasswordStrategy {
        TruncateStrategy(int i) {
            super(i);
        }

        @Override // at.favre.lib.crypto.bcrypt.LongPasswordStrategy.BaseLongPasswordStrategy
        public byte[] innerDerive(byte[] bArr) {
            return Bytes.wrap(bArr).resize(this.maxLength, BytesTransformer.ResizeTransformer.Mode.RESIZE_KEEP_FROM_ZERO_INDEX).array();
        }
    }
}
