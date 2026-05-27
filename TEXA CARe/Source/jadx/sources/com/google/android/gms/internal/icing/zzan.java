package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzan extends zzcx<zzaq, zzan> implements zzef {
    private zzan() {
        super(zzaq.zze);
    }

    public final zzan zza(Iterable<? extends zzap> iterable) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zzaq.zzc((zzaq) this.zza, iterable);
        return this;
    }

    /* synthetic */ zzan(zzam zzamVar) {
        super(zzaq.zze);
    }
}
