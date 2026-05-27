package org.spongycastle.openpgp.operator;

import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.openpgp.PGPException;

/* JADX INFO: loaded from: classes3.dex */
public interface KeyFingerPrintCalculator {
    byte[] calculateFingerprint(PublicKeyPacket publicKeyPacket) throws PGPException;
}
