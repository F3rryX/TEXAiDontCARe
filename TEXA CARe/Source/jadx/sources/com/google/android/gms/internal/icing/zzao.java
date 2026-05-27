package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzao extends zzcx<zzap, zzao> implements zzef {
    private zzao() {
        super(zzap.zzh);
    }

    public final zzao zza(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzap.zzc((zzap) this.zza, str);
        return this;
    }

    public final zzao zzb(String str) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzap.zzd((zzap) this.zza, str);
        return this;
    }

    public final zzao zzc(int i) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzap.zze((zzap) this.zza, i);
        return this;
    }

    /* synthetic */ zzao(zzam zzamVar) {
        super(zzap.zzh);
    }
}
