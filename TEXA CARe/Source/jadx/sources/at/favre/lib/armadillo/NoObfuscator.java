package at.favre.lib.armadillo;

import at.favre.lib.armadillo.DataObfuscator;

/* JADX INFO: loaded from: classes.dex */
public final class NoObfuscator implements DataObfuscator {
    @Override // at.favre.lib.armadillo.DataObfuscator
    public void clearKey() {
    }

    @Override // at.favre.lib.armadillo.DataObfuscator
    public void deobfuscate(byte[] bArr) {
    }

    @Override // at.favre.lib.armadillo.DataObfuscator
    public void obfuscate(byte[] bArr) {
    }

    public static final class Factory implements DataObfuscator.Factory {
        @Override // at.favre.lib.armadillo.DataObfuscator.Factory
        public DataObfuscator create(byte[] bArr) {
            return new NoObfuscator();
        }
    }
}
