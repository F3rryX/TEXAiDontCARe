package at.favre.lib.armadillo;

/* JADX INFO: loaded from: classes.dex */
public abstract class SimpleRecoveryPolicy implements RecoveryPolicy {
    abstract boolean shouldRemoveBrokenContent();

    abstract boolean shouldThrowRuntimeException();

    @Override // at.favre.lib.armadillo.RecoveryPolicy
    public void handleBrokenContent(EncryptionProtocolException encryptionProtocolException, String str, String str2, boolean z, ArmadilloSharedPreferences armadilloSharedPreferences) throws SecureSharedPreferenceCryptoException {
        if (shouldRemoveBrokenContent()) {
            armadilloSharedPreferences.edit().remove(str).apply();
        }
        if (shouldThrowRuntimeException()) {
            throw new SecureSharedPreferenceCryptoException("could not decrypt " + str, encryptionProtocolException);
        }
    }

    public static final class Default extends SimpleRecoveryPolicy {
        private final boolean removeBrokenContent;
        private final boolean throwRuntimeException;

        public Default(boolean z, boolean z2) {
            this.throwRuntimeException = z;
            this.removeBrokenContent = z2;
        }

        @Override // at.favre.lib.armadillo.SimpleRecoveryPolicy
        public boolean shouldThrowRuntimeException() {
            return this.throwRuntimeException;
        }

        @Override // at.favre.lib.armadillo.SimpleRecoveryPolicy
        public boolean shouldRemoveBrokenContent() {
            return this.removeBrokenContent;
        }
    }
}
