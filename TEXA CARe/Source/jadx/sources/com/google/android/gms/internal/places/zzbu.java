package com.google.android.gms.internal.places;

/* JADX INFO: loaded from: classes.dex */
abstract class zzbu {
    private static final zzbu zzkb;
    private static final zzbu zzkc;

    private zzbu() {
    }

    abstract void zzb(Object obj, long j);

    abstract <L> void zzb(Object obj, Object obj2, long j);

    static zzbu zzca() {
        return zzkb;
    }

    static zzbu zzcb() {
        return zzkc;
    }

    static {
        zzbt zzbtVar = null;
        zzkb = new zzbw();
        zzkc = new zzbv();
    }
}
