package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdr extends zzds {
    private zzdr() {
        super(null);
    }

    /* synthetic */ zzdr(zzdp zzdpVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.icing.zzds
    final void zza(Object obj, long j) {
        ((zzdg) zzfn.zzn(obj, j)).zzb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.icing.zzdg] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.gms.internal.icing.zzdg, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4 */
    @Override // com.google.android.gms.internal.icing.zzds
    final <E> void zzb(Object obj, Object obj2, long j) {
        zzdg zzdgVar = (zzdg) zzfn.zzn(obj, j);
        ?? r6 = (zzdg) zzfn.zzn(obj2, j);
        int size = zzdgVar.size();
        int size2 = r6.size();
        ?? r0 = zzdgVar;
        r0 = zzdgVar;
        if (size > 0 && size2 > 0) {
            boolean zZza = zzdgVar.zza();
            ?? Zze = zzdgVar;
            if (!zZza) {
                Zze = zzdgVar.zze(size2 + size);
            }
            Zze.addAll(r6);
            r0 = Zze;
        }
        if (size > 0) {
            r6 = r0;
        }
        zzfn.zzo(obj, j, r6);
    }
}
