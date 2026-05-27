package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzbc;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzat extends zzar<Object> {
    zzat() {
    }

    @Override // com.google.android.gms.internal.places.zzar
    final boolean zzf(zzck zzckVar) {
        return zzckVar instanceof zzbc.zzc;
    }

    @Override // com.google.android.gms.internal.places.zzar
    final zzav<Object> zzb(Object obj) {
        return ((zzbc.zzc) obj).zzik;
    }

    @Override // com.google.android.gms.internal.places.zzar
    final zzav<Object> zzc(Object obj) {
        return ((zzbc.zzc) obj).zzbm();
    }

    @Override // com.google.android.gms.internal.places.zzar
    final void zzd(Object obj) {
        zzb(obj).zzab();
    }

    @Override // com.google.android.gms.internal.places.zzar
    final int zzb(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.places.zzar
    final void zzb(zzel zzelVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.places.zzar
    final Object zzb(zzap zzapVar, zzck zzckVar, int i) {
        return zzapVar.zzb(zzckVar, i);
    }
}
