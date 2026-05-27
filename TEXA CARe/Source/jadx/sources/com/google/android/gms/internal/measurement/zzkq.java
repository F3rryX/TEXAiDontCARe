package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzkq {
    private static final zzkq zza;
    private static final zzkq zzb;

    static {
        zzkn zzknVar = null;
        zza = new zzko(zzknVar);
        zzb = new zzkp(zzknVar);
    }

    /* synthetic */ zzkq(zzkn zzknVar) {
    }

    static zzkq zzc() {
        return zza;
    }

    static zzkq zzd() {
        return zzb;
    }

    abstract void zza(Object obj, long j);

    abstract <L> void zzb(Object obj, Object obj2, long j);
}
