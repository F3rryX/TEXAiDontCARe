package com.google.android.gms.internal.places;

/* JADX INFO: loaded from: classes.dex */
final class zzbz implements zzch {
    private zzch[] zzki;

    zzbz(zzch... zzchVarArr) {
        this.zzki = zzchVarArr;
    }

    @Override // com.google.android.gms.internal.places.zzch
    public final boolean zzb(Class<?> cls) {
        for (zzch zzchVar : this.zzki) {
            if (zzchVar.zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.places.zzch
    public final zzci zzc(Class<?> cls) {
        for (zzch zzchVar : this.zzki) {
            if (zzchVar.zzb(cls)) {
                return zzchVar.zzc(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }
}
