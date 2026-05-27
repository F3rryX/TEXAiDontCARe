package org.spongycastle.openpgp;

import java.io.IOException;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.MarkerPacket;

/* JADX INFO: loaded from: classes3.dex */
public class PGPMarker {
    private MarkerPacket p;

    public PGPMarker(BCPGInputStream bCPGInputStream) throws IOException {
        this.p = (MarkerPacket) bCPGInputStream.readPacket();
    }
}
