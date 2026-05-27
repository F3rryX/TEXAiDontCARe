package com.google.android.gms.internal.places;

/* JADX INFO: loaded from: classes.dex */
final class zzae {
    private final byte[] buffer;
    private final zzaj zzem;

    private zzae(int i) {
        byte[] bArr = new byte[i];
        this.buffer = bArr;
        this.zzem = zzaj.zzc(bArr);
    }

    public final zzw zzah() {
        if (this.zzem.zzak() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
        return new zzag(this.buffer);
    }

    public final zzaj zzai() {
        return this.zzem;
    }

    /* synthetic */ zzae(int i, zzv zzvVar) {
        this(i);
    }
}
