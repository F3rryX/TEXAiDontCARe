package com.google.android.gms.internal.places;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzdj<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzlz;
    private final /* synthetic */ zzdb zzma;
    private boolean zzmd;

    private zzdj(zzdb zzdbVar) {
        this.zzma = zzdbVar;
        this.pos = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos + 1 < this.zzma.zzlq.size() || (!this.zzma.zzlr.isEmpty() && zzde().hasNext());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzmd) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzmd = false;
        this.zzma.zzcx();
        if (this.pos < this.zzma.zzlq.size()) {
            zzdb zzdbVar = this.zzma;
            int i = this.pos;
            this.pos = i - 1;
            zzdbVar.zzan(i);
            return;
        }
        zzde().remove();
    }

    private final Iterator<Map.Entry<K, V>> zzde() {
        if (this.zzlz == null) {
            this.zzlz = this.zzma.zzlr.entrySet().iterator();
        }
        return this.zzlz;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzmd = true;
        int i = this.pos + 1;
        this.pos = i;
        if (i >= this.zzma.zzlq.size()) {
            return zzde().next();
        }
        return (Map.Entry) this.zzma.zzlq.get(this.pos);
    }

    /* synthetic */ zzdj(zzdb zzdbVar, zzde zzdeVar) {
        this(zzdbVar);
    }
}
