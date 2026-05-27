package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzge extends zzcx<zzgf, zzge> implements zzef {
    private zzge() {
        super(zzgf.zzg);
    }

    public final zzge zza(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgf.zzc((zzgf) this.zza, str);
        return this;
    }

    public final zzge zzb(zzgd zzgdVar) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgf.zzd((zzgf) this.zza, zzgdVar);
        return this;
    }

    /* synthetic */ zzge(zzgb zzgbVar) {
        super(zzgf.zzg);
    }
}
