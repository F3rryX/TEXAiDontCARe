package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgg extends zzcx<zzgh, zzgg> implements zzef {
    private zzgg() {
        super(zzgh.zzj);
    }

    public final zzgg zza(boolean z) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgh.zzc((zzgh) this.zza, z);
        return this;
    }

    public final zzgg zzb(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgh.zzd((zzgh) this.zza, str);
        return this;
    }

    public final zzgg zzc(zzgf zzgfVar) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzgh.zze((zzgh) this.zza, zzgfVar);
        return this;
    }

    /* synthetic */ zzgg(zzgb zzgbVar) {
        super(zzgh.zzj);
    }
}
