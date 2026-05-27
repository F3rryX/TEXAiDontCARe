package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzjz {
    final /* synthetic */ zzkd zza;
    private zzjy zzb;

    zzjz(zzkd zzkdVar) {
        this.zza = zzkdVar;
    }

    final void zza(long j) {
        this.zzb = new zzjy(this, this.zza.zzs.zzav().currentTimeMillis(), j);
        this.zza.zzd.postDelayed(this.zzb, 2000L);
    }

    final void zzb() {
        this.zza.zzg();
        if (this.zzb != null) {
            this.zza.zzd.removeCallbacks(this.zzb);
        }
        this.zza.zzs.zzm().zzl.zza(false);
    }
}
