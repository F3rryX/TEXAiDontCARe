package at.favre.lib.armadillo;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public final class GzipCompressor implements Compressor {
    @Override // at.favre.lib.armadillo.Compressor
    public byte[] decompress(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        byte[] bArr2 = new byte[2048];
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
            } finally {
            }
            while (true) {
                try {
                    int i = gZIPInputStream.read(bArr2);
                    if (i > 0) {
                        byteArrayOutputStream.write(bArr2, 0, i);
                    } else {
                        gZIPInputStream.close();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        Timber.v("compression saved %d byte", Integer.valueOf(bArr.length - byteArray.length));
                        gZIPInputStream.close();
                        byteArrayOutputStream.close();
                        return byteArray;
                    }
                } finally {
                }
            }
        } catch (Exception e) {
            throw new IllegalStateException("could not decompress gzip", e);
        }
    }

    @Override // at.favre.lib.armadillo.Compressor
    public byte[] compress(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.close();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            throw new IllegalStateException("could not compress gzip", e);
        }
    }
}
