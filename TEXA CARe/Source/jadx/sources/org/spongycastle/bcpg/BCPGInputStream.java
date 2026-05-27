package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.io.Streams;

/* JADX INFO: loaded from: classes2.dex */
public class BCPGInputStream extends InputStream implements PacketTags {
    InputStream in;
    boolean next = false;
    int nextB;

    public BCPGInputStream(InputStream inputStream) {
        this.in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.next) {
            this.next = false;
            return this.nextB;
        }
        return this.in.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (!this.next) {
            return this.in.read(bArr, i, i2);
        }
        int i3 = this.nextB;
        if (i3 < 0) {
            return -1;
        }
        bArr[i] = (byte) i3;
        this.next = false;
        return 1;
    }

    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        if (Streams.readFully(this, bArr, i, i2) < i2) {
            throw new EOFException();
        }
    }

    public byte[] readAll() throws IOException {
        return Streams.readAll(this);
    }

    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    public int nextPacketTag() throws IOException {
        if (!this.next) {
            try {
                this.nextB = this.in.read();
            } catch (EOFException unused) {
                this.nextB = -1;
            }
            this.next = true;
        }
        int i = this.nextB;
        if (i < 0) {
            return i;
        }
        int i2 = i & 63;
        return (i & 64) == 0 ? i2 >> 2 : i2;
    }

    public Packet readPacket() throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = read();
        if (i5 < 0) {
            return null;
        }
        if ((i5 & 128) == 0) {
            throw new IOException("invalid header encountered");
        }
        int i6 = 0;
        boolean z = true;
        if ((i5 & 64) != 0) {
            i = i5 & 63;
            i2 = read();
            if (i2 < 192) {
                i6 = i2;
                z = false;
            } else if (i2 <= 223) {
                i2 = ((i2 - 192) << 8) + this.in.read() + 192;
                i6 = i2;
                z = false;
            } else if (i2 == 255) {
                i3 = (this.in.read() << 24) | (this.in.read() << 16) | (this.in.read() << 8);
                i4 = this.in.read();
                i2 = i3 | i4;
                i6 = i2;
                z = false;
            } else {
                i6 = 1 << (i2 & 31);
            }
        } else {
            int i7 = i5 & 3;
            i = (i5 & 63) >> 2;
            if (i7 != 0) {
                if (i7 == 1) {
                    i3 = read() << 8;
                    i4 = read();
                } else if (i7 == 2) {
                    i3 = (read() << 24) | (read() << 16) | (read() << 8);
                    i4 = read();
                } else if (i7 != 3) {
                    throw new IOException("unknown length type encountered");
                }
                i2 = i3 | i4;
                i6 = i2;
                z = false;
            } else {
                i2 = read();
                i6 = i2;
                z = false;
            }
        }
        BCPGInputStream bCPGInputStream = (i6 == 0 && z) ? this : new BCPGInputStream(new PartialInputStream(this, z, i6));
        switch (i) {
            case 0:
                return new InputStreamPacket(bCPGInputStream);
            case 1:
                return new PublicKeyEncSessionPacket(bCPGInputStream);
            case 2:
                return new SignaturePacket(bCPGInputStream);
            case 3:
                return new SymmetricKeyEncSessionPacket(bCPGInputStream);
            case 4:
                return new OnePassSignaturePacket(bCPGInputStream);
            case 5:
                return new SecretKeyPacket(bCPGInputStream);
            case 6:
                return new PublicKeyPacket(bCPGInputStream);
            case 7:
                return new SecretSubkeyPacket(bCPGInputStream);
            case 8:
                return new CompressedDataPacket(bCPGInputStream);
            case 9:
                return new SymmetricEncDataPacket(bCPGInputStream);
            case 10:
                return new MarkerPacket(bCPGInputStream);
            case 11:
                return new LiteralDataPacket(bCPGInputStream);
            case 12:
                return new TrustPacket(bCPGInputStream);
            case 13:
                return new UserIDPacket(bCPGInputStream);
            case 14:
                return new PublicSubkeyPacket(bCPGInputStream);
            default:
                switch (i) {
                    case 17:
                        return new UserAttributePacket(bCPGInputStream);
                    case 18:
                        return new SymmetricEncIntegrityPacket(bCPGInputStream);
                    case 19:
                        return new ModDetectionCodePacket(bCPGInputStream);
                    default:
                        switch (i) {
                            case 60:
                            case 61:
                            case 62:
                            case 63:
                                return new ExperimentalPacket(i, bCPGInputStream);
                            default:
                                throw new IOException("unknown packet type encountered: " + i);
                        }
                }
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    private static class PartialInputStream extends InputStream {
        private int dataLength;
        private BCPGInputStream in;
        private boolean partial;

        PartialInputStream(BCPGInputStream bCPGInputStream, boolean z, int i) {
            this.in = bCPGInputStream;
            this.partial = z;
            this.dataLength = i;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            int iAvailable = this.in.available();
            int i = this.dataLength;
            if (iAvailable <= i || i < 0) {
                return iAvailable;
            }
            if (this.partial && i == 0) {
                return 1;
            }
            return i;
        }

        private int loadDataLength() throws IOException {
            int i = this.in.read();
            if (i < 0) {
                return -1;
            }
            this.partial = false;
            if (i < 192) {
                this.dataLength = i;
            } else if (i <= 223) {
                this.dataLength = ((i - 192) << 8) + this.in.read() + 192;
            } else if (i == 255) {
                this.dataLength = (this.in.read() << 24) | (this.in.read() << 16) | (this.in.read() << 8) | this.in.read();
            } else {
                this.partial = true;
                this.dataLength = 1 << (i & 31);
            }
            return this.dataLength;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            do {
                int i3 = this.dataLength;
                if (i3 != 0) {
                    if (i3 <= i2 && i3 >= 0) {
                        i2 = i3;
                    }
                    int i4 = this.in.read(bArr, i, i2);
                    if (i4 < 0) {
                        throw new EOFException("premature end of stream in PartialInputStream");
                    }
                    this.dataLength -= i4;
                    return i4;
                }
                if (!this.partial) {
                    return -1;
                }
            } while (loadDataLength() >= 0);
            return -1;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            while (this.dataLength == 0) {
                if (!this.partial || loadDataLength() < 0) {
                    return -1;
                }
            }
            int i = this.in.read();
            if (i < 0) {
                throw new EOFException("premature end of stream in PartialInputStream");
            }
            this.dataLength--;
            return i;
        }
    }
}
