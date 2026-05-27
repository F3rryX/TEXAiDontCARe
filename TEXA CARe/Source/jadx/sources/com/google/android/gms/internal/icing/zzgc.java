package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgc extends zzcx<zzgd, zzgc> implements zzef {
    private zzgc() {
        super(zzgd.zzg);
    }

    public final zzgc zza(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgd.zzc((zzgd) this.zza, str);
        return this;
    }

    public final zzgc zzb(zzgh zzghVar) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgd.zzd((zzgd) this.zza, zzghVar);
        return this;
    }

    /* synthetic */ zzgc(zzgb zzgbVar) {
        super(zzgd.zzg);
    }
}
