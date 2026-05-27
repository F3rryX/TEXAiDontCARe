package com.google.android.gms.internal.places;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzdd<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private Iterator<Map.Entry<K, V>> zzlz;
    private final /* synthetic */ zzdb zzma;

    private zzdd(zzdb zzdbVar) {
        this.zzma = zzdbVar;
        this.pos = zzdbVar.zzlq.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.pos;
        return (i > 0 && i <= this.zzma.zzlq.size()) || zzde().hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private final Iterator<Map.Entry<K, V>> zzde() {
        if (this.zzlz == null) {
            this.zzlz = this.zzma.zzlt.entrySet().iterator();
        }
        return this.zzlz;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zzde().hasNext()) {
            return zzde().next();
        }
        List list = this.zzma.zzlq;
        int i = this.pos - 1;
        this.pos = i;
        return (Map.Entry) list.get(i);
    }

    /* synthetic */ zzdd(zzdb zzdbVar, zzde zzdeVar) {
        this(zzdbVar);
    }
}
