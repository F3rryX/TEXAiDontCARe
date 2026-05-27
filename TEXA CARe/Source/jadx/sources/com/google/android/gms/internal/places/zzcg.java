package com.google.android.gms.internal.places;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzcg implements zzcd {
    zzcg() {
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final Map<?, ?> zzg(Object obj) {
        return (zzce) obj;
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final zzcb<?, ?> zzl(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final Map<?, ?> zzh(Object obj) {
        return (zzce) obj;
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final boolean zzi(Object obj) {
        return !((zzce) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final Object zzj(Object obj) {
        ((zzce) obj).zzab();
        return obj;
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final Object zzk(Object obj) {
        return zzce.zzcd().zzce();
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final Object zzc(Object obj, Object obj2) {
        zzce zzceVarZzce = (zzce) obj;
        zzce zzceVar = (zzce) obj2;
        if (!zzceVar.isEmpty()) {
            if (!zzceVarZzce.isMutable()) {
                zzceVarZzce = zzceVarZzce.zzce();
            }
            zzceVarZzce.zzb(zzceVar);
        }
        return zzceVarZzce;
    }

    @Override // com.google.android.gms.internal.places.zzcd
    public final int zzc(int i, Object obj, Object obj2) {
        zzce zzceVar = (zzce) obj;
        if (zzceVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzceVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
