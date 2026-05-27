package org.spongycastle.bcpg.sig;

import java.util.Date;
import org.spongycastle.bcpg.SignatureSubpacket;

/* JADX INFO: loaded from: classes2.dex */
public class SignatureCreationTime extends SignatureSubpacket {
    protected static byte[] timeToBytes(Date date) {
        return new byte[]{(byte) (r1 >> 24), (byte) (r1 >> 16), (byte) (r1 >> 8), (byte) (date.getTime() / 1000)};
    }

    public SignatureCreationTime(boolean z, boolean z2, byte[] bArr) {
        super(2, z, z2, bArr);
    }

    public SignatureCreationTime(boolean z, Date date) {
        super(2, z, false, timeToBytes(date));
    }

    public Date getTime() {
        return new Date(((((long) (this.data[0] & 255)) << 24) | ((long) ((this.data[1] & 255) << 16)) | ((long) ((this.data[2] & 255) << 8)) | ((long) (this.data[3] & 255))) * 1000);
    }
}
