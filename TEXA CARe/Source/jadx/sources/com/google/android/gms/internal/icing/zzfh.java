package com.google.android.gms.internal.icing;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfh implements Iterator<String> {
    final Iterator<String> zza;
    final /* synthetic */ zzfi zzb;

    zzfh(zzfi zzfiVar) {
        this.zzb = zzfiVar;
        this.zza = zzfiVar.zza.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
