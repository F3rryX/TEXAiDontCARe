package com.google.android.gms.internal.icing;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfk extends zzfm {
    zzfk(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zza(Object obj, long j, byte b) {
        if (zzfn.zzb) {
            zzfn.zzD(obj, j, b);
        } else {
            zzfn.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final boolean zzb(Object obj, long j) {
        return zzfn.zzb ? zzfn.zzv(obj, j) : zzfn.zzw(obj, j);
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zzc(Object obj, long j, boolean z) {
        if (zzfn.zzb) {
            zzfn.zzD(obj, j, r5 ? (byte) 1 : (byte) 0);
        } else {
            zzfn.zzE(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zze(Object obj, long j, float f) {
        zzl(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zzg(Object obj, long j, double d) {
        zzn(obj, j, Double.doubleToLongBits(d));
    }
}
