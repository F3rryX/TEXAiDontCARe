package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.bcpg.attr.ImageAttribute;

/* JADX INFO: loaded from: classes2.dex */
public class UserAttributeSubpacketInputStream extends InputStream implements UserAttributeSubpacketTags {
    InputStream in;

    public UserAttributeSubpacketInputStream(InputStream inputStream) {
        this.in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.in.read();
    }

    private void readFully(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > 0) {
            int i3 = read();
            if (i3 < 0) {
                throw new EOFException();
            }
            bArr[i] = (byte) i3;
            i++;
            i2--;
        }
        while (i2 > 0) {
            int i4 = this.in.read(bArr, i, i2);
            if (i4 < 0) {
                throw new EOFException();
            }
            i += i4;
            i2 -= i4;
        }
    }

    public UserAttributeSubpacket readPacket() throws IOException {
        boolean z;
        int i = read();
        if (i < 0) {
            return null;
        }
        if (i < 192) {
            z = false;
        } else if (i <= 223) {
            i = ((i - 192) << 8) + this.in.read() + 192;
            z = false;
        } else if (i == 255) {
            i = (this.in.read() << 24) | (this.in.read() << 16) | (this.in.read() << 8) | this.in.read();
            z = true;
        } else {
            throw new IOException("unrecognised length reading user attribute sub packet");
        }
        int i2 = this.in.read();
        if (i2 < 0) {
            throw new EOFException("unexpected EOF reading user attribute sub packet");
        }
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        readFully(bArr, 0, i3);
        if (i2 == 1) {
            return new ImageAttribute(z, bArr);
        }
        return new UserAttributeSubpacket(i2, z, bArr);
    }
}
