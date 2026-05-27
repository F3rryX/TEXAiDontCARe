package at.favre.lib.armadillo;

import at.favre.lib.armadillo.ByteArrayRuntimeObfuscator;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public interface EncryptionFingerprint {
    byte[] getBytes();

    void wipe();

    public static final class Default implements EncryptionFingerprint {
        private final ByteArrayRuntimeObfuscator holder;

        public Default(byte[] bArr) {
            this.holder = new ByteArrayRuntimeObfuscator.Default(bArr, new SecureRandom());
        }

        @Override // at.favre.lib.armadillo.EncryptionFingerprint
        public byte[] getBytes() {
            return this.holder.getBytes();
        }

        @Override // at.favre.lib.armadillo.EncryptionFingerprint
        public void wipe() {
            this.holder.wipe();
        }
    }
}
