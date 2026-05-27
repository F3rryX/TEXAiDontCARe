package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzhd implements Runnable {
    final /* synthetic */ zzia zza;

    zzhd(zzia zziaVar) {
        this.zza = zziaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb.zzb();
    }
}
