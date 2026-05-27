package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;

/* JADX INFO: loaded from: classes3.dex */
public interface PGPContentVerifierBuilderProvider {
    PGPContentVerifierBuilder get(int i, int i2) throws PGPException;
}
