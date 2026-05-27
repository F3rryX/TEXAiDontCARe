package at.favre.lib.armadillo;

/* JADX INFO: loaded from: classes.dex */
public interface DataObfuscator {

    public interface Factory {
        DataObfuscator create(byte[] bArr);
    }

    void clearKey();

    void deobfuscate(byte[] bArr);

    void obfuscate(byte[] bArr);
}
