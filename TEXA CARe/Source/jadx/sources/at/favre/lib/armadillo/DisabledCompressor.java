package at.favre.lib.armadillo;

/* JADX INFO: loaded from: classes.dex */
public class DisabledCompressor implements Compressor {
    @Override // at.favre.lib.armadillo.Compressor
    public byte[] compress(byte[] bArr) {
        return bArr;
    }

    @Override // at.favre.lib.armadillo.Compressor
    public byte[] decompress(byte[] bArr) {
        return bArr;
    }
}
