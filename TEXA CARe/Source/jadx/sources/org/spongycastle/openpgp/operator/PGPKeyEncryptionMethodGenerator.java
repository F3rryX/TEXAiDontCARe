package org.spongycastle.openpgp.operator;

import org.spongycastle.bcpg.ContainedPacket;
import org.spongycastle.openpgp.PGPException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PGPKeyEncryptionMethodGenerator {
    public abstract ContainedPacket generate(int i, byte[] bArr) throws PGPException;
}
