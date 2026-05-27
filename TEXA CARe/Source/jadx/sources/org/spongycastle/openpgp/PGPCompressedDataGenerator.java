package org.spongycastle.openpgp;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import org.spongycastle.apache.bzip2.CBZip2OutputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.CompressionAlgorithmTags;

/* JADX INFO: loaded from: classes3.dex */
public class PGPCompressedDataGenerator implements CompressionAlgorithmTags, StreamGenerator {
    private int algorithm;
    private int compression;
    private OutputStream dOut;
    private BCPGOutputStream pkOut;

    public PGPCompressedDataGenerator(int i) {
        this(i, -1);
    }

    public PGPCompressedDataGenerator(int i, int i2) {
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            throw new IllegalArgumentException("unknown compression algorithm");
        }
        if (i2 != -1 && (i2 < 0 || i2 > 9)) {
            throw new IllegalArgumentException("unknown compression level: " + i2);
        }
        this.algorithm = i;
        this.compression = i2;
    }

    public OutputStream open(OutputStream outputStream) throws IOException {
        if (this.dOut != null) {
            throw new IllegalStateException("generator already in open state");
        }
        this.pkOut = new BCPGOutputStream(outputStream, 8);
        doOpen();
        return new WrappedGeneratorStream(this.dOut, this);
    }

    public OutputStream open(OutputStream outputStream, byte[] bArr) throws PGPException, IOException {
        if (this.dOut != null) {
            throw new IllegalStateException("generator already in open state");
        }
        this.pkOut = new BCPGOutputStream(outputStream, 8, bArr);
        doOpen();
        return new WrappedGeneratorStream(this.dOut, this);
    }

    private void doOpen() throws IOException {
        this.pkOut.write(this.algorithm);
        int i = this.algorithm;
        if (i == 0) {
            this.dOut = this.pkOut;
            return;
        }
        if (i == 1) {
            this.dOut = new SafeDeflaterOutputStream(this.pkOut, this.compression, true);
        } else if (i == 2) {
            this.dOut = new SafeDeflaterOutputStream(this.pkOut, this.compression, false);
        } else {
            if (i == 3) {
                this.dOut = new SafeCBZip2OutputStream(this.pkOut);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // org.spongycastle.openpgp.StreamGenerator
    public void close() throws IOException {
        OutputStream outputStream = this.dOut;
        if (outputStream != null) {
            if (outputStream != this.pkOut) {
                outputStream.close();
            }
            this.dOut = null;
            this.pkOut.finish();
            this.pkOut.flush();
            this.pkOut = null;
        }
    }

    private static class SafeCBZip2OutputStream extends CBZip2OutputStream {
        public SafeCBZip2OutputStream(OutputStream outputStream) throws IOException {
            super(outputStream);
        }

        @Override // org.spongycastle.apache.bzip2.CBZip2OutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            finish();
        }
    }

    private class SafeDeflaterOutputStream extends DeflaterOutputStream {
        public SafeDeflaterOutputStream(OutputStream outputStream, int i, boolean z) {
            super(outputStream, new Deflater(i, z));
        }

        @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            finish();
            this.def.end();
        }
    }
}
