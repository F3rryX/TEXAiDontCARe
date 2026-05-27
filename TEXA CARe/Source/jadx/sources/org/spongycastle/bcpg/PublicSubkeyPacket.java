package org.spongycastle.bcpg;

import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class PublicSubkeyPacket extends PublicKeyPacket {
    PublicSubkeyPacket(BCPGInputStream bCPGInputStream) throws IOException {
        super(bCPGInputStream);
    }

    public PublicSubkeyPacket(int i, Date date, BCPGKey bCPGKey) {
        super(i, date, bCPGKey);
    }

    @Override // org.spongycastle.bcpg.PublicKeyPacket, org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(14, getEncodedContents(), true);
    }
}
