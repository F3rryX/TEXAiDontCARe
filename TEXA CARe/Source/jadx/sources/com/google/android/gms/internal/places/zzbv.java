package com.google.android.gms.internal.places;

/* JADX INFO: loaded from: classes.dex */
final class zzbv extends zzbu {
    private zzbv() {
        super();
    }

    @Override // com.google.android.gms.internal.places.zzbu
    final void zzb(Object obj, long j) {
        zzc(obj, j).zzab();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.places.zzbh] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.places.zzbh, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.places.zzbu
    final <E> void zzb(Object obj, Object obj2, long j) {
        zzbh zzbhVarZzc = zzc(obj, j);
        ?? Zzc = zzc(obj2, j);
        int size = zzbhVarZzc.size();
        int size2 = Zzc.size();
        ?? r0 = zzbhVarZzc;
        r0 = zzbhVarZzc;
        if (size > 0 && size2 > 0) {
            boolean zZzaa = zzbhVarZzc.zzaa();
            ?? Zzh = zzbhVarZzc;
            if (!zZzaa) {
                Zzh = zzbhVarZzc.zzh(size2 + size);
            }
            Zzh.addAll(Zzc);
            r0 = Zzh;
        }
        if (size > 0) {
            Zzc = r0;
        }
        zzdy.zzb(obj, j, (Object) Zzc);
    }

    private static <E> zzbh<E> zzc(Object obj, long j) {
        return (zzbh) zzdy.zzp(obj, j);
    }
}
