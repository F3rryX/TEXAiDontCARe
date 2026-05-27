package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.bcpg.sig.Exportable;
import org.spongycastle.bcpg.sig.IssuerKeyID;
import org.spongycastle.bcpg.sig.KeyExpirationTime;
import org.spongycastle.bcpg.sig.KeyFlags;
import org.spongycastle.bcpg.sig.NotationData;
import org.spongycastle.bcpg.sig.PreferredAlgorithms;
import org.spongycastle.bcpg.sig.PrimaryUserID;
import org.spongycastle.bcpg.sig.Revocable;
import org.spongycastle.bcpg.sig.SignatureCreationTime;
import org.spongycastle.bcpg.sig.SignatureExpirationTime;
import org.spongycastle.bcpg.sig.SignerUserID;
import org.spongycastle.bcpg.sig.TrustSignature;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.io.Streams;

/* JADX INFO: loaded from: classes2.dex */
public class SignatureSubpacketInputStream extends InputStream implements SignatureSubpacketTags {
    InputStream in;

    public SignatureSubpacketInputStream(InputStream inputStream) {
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

    public SignatureSubpacket readPacket() throws IOException {
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
            throw new IOException("unexpected length header");
        }
        int i2 = this.in.read();
        if (i2 < 0) {
            throw new EOFException("unexpected EOF reading signature sub packet");
        }
        int i3 = i - 1;
        byte[] bArrCheckData = new byte[i3];
        int fully = Streams.readFully(this.in, bArrCheckData);
        boolean z2 = (i2 & 128) != 0;
        int i4 = i2 & 127;
        if (fully != i3) {
            if (i4 == 2) {
                bArrCheckData = checkData(bArrCheckData, 4, fully, "Signature Creation Time");
            } else if (i4 == 3) {
                bArrCheckData = checkData(bArrCheckData, 4, fully, "Signature Expiration Time");
            } else if (i4 == 9) {
                bArrCheckData = checkData(bArrCheckData, 4, fully, "Signature Key Expiration Time");
            } else if (i4 == 16) {
                bArrCheckData = checkData(bArrCheckData, 8, fully, "Issuer");
            } else {
                throw new EOFException("truncated subpacket data.");
            }
        }
        if (i4 == 2) {
            return new SignatureCreationTime(z2, z, bArrCheckData);
        }
        if (i4 == 3) {
            return new SignatureExpirationTime(z2, z, bArrCheckData);
        }
        if (i4 == 4) {
            return new Exportable(z2, z, bArrCheckData);
        }
        if (i4 == 5) {
            return new TrustSignature(z2, z, bArrCheckData);
        }
        if (i4 == 7) {
            return new Revocable(z2, z, bArrCheckData);
        }
        if (i4 == 9) {
            return new KeyExpirationTime(z2, z, bArrCheckData);
        }
        if (i4 != 11) {
            if (i4 == 16) {
                return new IssuerKeyID(z2, z, bArrCheckData);
            }
            if (i4 == 25) {
                return new PrimaryUserID(z2, z, bArrCheckData);
            }
            if (i4 == 27) {
                return new KeyFlags(z2, z, bArrCheckData);
            }
            if (i4 == 28) {
                return new SignerUserID(z2, z, bArrCheckData);
            }
            switch (i4) {
                case 20:
                    return new NotationData(z2, z, bArrCheckData);
                case 21:
                case 22:
                    break;
                default:
                    return new SignatureSubpacket(i4, z2, z, bArrCheckData);
            }
        }
        return new PreferredAlgorithms(i4, z2, z, bArrCheckData);
    }

    private byte[] checkData(byte[] bArr, int i, int i2, String str) throws EOFException {
        if (i2 != i) {
            throw new EOFException("truncated " + str + " subpacket data.");
        }
        return Arrays.copyOfRange(bArr, 0, i);
    }
}
