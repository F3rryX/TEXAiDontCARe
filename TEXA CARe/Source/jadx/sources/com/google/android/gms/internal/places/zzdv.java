package com.google.android.gms.internal.places;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzdv implements Iterator<String> {
    private Iterator<String> zzmk;
    private final /* synthetic */ zzdt zzml;

    zzdv(zzdt zzdtVar) {
        this.zzml = zzdtVar;
        this.zzmk = zzdtVar.zzmj.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzmk.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzmk.next();
    }
}
