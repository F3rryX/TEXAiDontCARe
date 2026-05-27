package com.google.android.gms.internal.places;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzcc<K, V> {
    static <K, V> void zzb(zzaj zzajVar, zzcb<K, V> zzcbVar, K k, V v) throws IOException {
        zzav.zzb(zzajVar, zzcbVar.zzkj, 1, k);
        zzav.zzb(zzajVar, zzcbVar.zzkl, 2, v);
    }

    static <K, V> int zzb(zzcb<K, V> zzcbVar, K k, V v) {
        return zzav.zzb(zzcbVar.zzkj, 1, k) + zzav.zzb(zzcbVar.zzkl, 2, v);
    }
}
