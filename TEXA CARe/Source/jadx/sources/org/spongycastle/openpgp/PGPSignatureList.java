package org.spongycastle.openpgp;

import java.util.Iterator;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Iterable;

/* JADX INFO: loaded from: classes3.dex */
public class PGPSignatureList implements Iterable<PGPSignature> {
    PGPSignature[] sigs;

    public PGPSignatureList(PGPSignature[] pGPSignatureArr) {
        PGPSignature[] pGPSignatureArr2 = new PGPSignature[pGPSignatureArr.length];
        this.sigs = pGPSignatureArr2;
        System.arraycopy(pGPSignatureArr, 0, pGPSignatureArr2, 0, pGPSignatureArr.length);
    }

    public PGPSignatureList(PGPSignature pGPSignature) {
        this.sigs = new PGPSignature[]{pGPSignature};
    }

    public PGPSignature get(int i) {
        return this.sigs[i];
    }

    public int size() {
        return this.sigs.length;
    }

    public boolean isEmpty() {
        return this.sigs.length == 0;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPSignature> iterator() {
        return new Arrays.Iterator(this.sigs);
    }
}
