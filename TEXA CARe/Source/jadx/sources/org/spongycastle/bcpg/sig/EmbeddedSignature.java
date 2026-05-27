package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;

/* JADX INFO: loaded from: classes2.dex */
public class EmbeddedSignature extends SignatureSubpacket {
    public EmbeddedSignature(boolean z, boolean z2, byte[] bArr) {
        super(32, z, z2, bArr);
    }
}
