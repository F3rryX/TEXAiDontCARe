package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzkp extends zzkq {
    private zzkp() {
        super(null);
    }

    /* synthetic */ zzkp(zzkn zzknVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    final void zza(Object obj, long j) {
        ((zzke) zzml.zzf(obj, j)).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.measurement.zzke] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.gms.internal.measurement.zzke, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4 */
    @Override // com.google.android.gms.internal.measurement.zzkq
    final <E> void zzb(Object obj, Object obj2, long j) {
        zzke zzkeVar = (zzke) zzml.zzf(obj, j);
        ?? r6 = (zzke) zzml.zzf(obj2, j);
        int size = zzkeVar.size();
        int size2 = r6.size();
        ?? r0 = zzkeVar;
        r0 = zzkeVar;
        if (size > 0 && size2 > 0) {
            boolean zZzc = zzkeVar.zzc();
            ?? Zzd = zzkeVar;
            if (!zZzc) {
                Zzd = zzkeVar.zzd(size2 + size);
            }
            Zzd.addAll(r6);
            r0 = Zzd;
        }
        if (size > 0) {
            r6 = r0;
        }
        zzml.zzs(obj, j, r6);
    }
}
