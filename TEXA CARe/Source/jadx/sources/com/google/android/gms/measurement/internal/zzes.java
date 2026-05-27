package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzes implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzet zzb;

    zzes(zzet zzetVar, boolean z) {
        this.zzb = zzetVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb.zzI(this.zza);
    }
}
