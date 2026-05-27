package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TrustPacket extends ContainedPacket {
    byte[] levelAndTrustAmount;

    public TrustPacket(BCPGInputStream bCPGInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = bCPGInputStream.read();
            if (i >= 0) {
                byteArrayOutputStream.write(i);
            } else {
                this.levelAndTrustAmount = byteArrayOutputStream.toByteArray();
                return;
            }
        }
    }

    public TrustPacket(int i) {
        this.levelAndTrustAmount = new byte[]{(byte) i};
    }

    public byte[] getLevelAndTrustAmount() {
        return this.levelAndTrustAmount;
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(12, this.levelAndTrustAmount, true);
    }
}
