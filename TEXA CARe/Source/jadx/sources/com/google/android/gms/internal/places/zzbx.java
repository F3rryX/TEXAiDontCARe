package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzbc;

/* JADX INFO: loaded from: classes.dex */
final class zzbx implements zzcz {
    private static final zzch zzkf = new zzca();
    private final zzch zzke;

    public zzbx() {
        this(new zzbz(zzba.zzbb(), zzcc()));
    }

    private zzbx(zzch zzchVar) {
        this.zzke = (zzch) zzbd.zzb(zzchVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.places.zzcz
    public final <T> zzda<T> zze(Class<T> cls) {
        zzdc.zzg((Class<?>) cls);
        zzci zzciVarZzc = this.zzke.zzc(cls);
        if (zzciVarZzc.zzck()) {
            if (zzbc.class.isAssignableFrom(cls)) {
                return zzcq.zzb(zzdc.zzdb(), zzas.zzas(), zzciVarZzc.zzcl());
            }
            return zzcq.zzb(zzdc.zzcz(), zzas.zzat(), zzciVarZzc.zzcl());
        }
        if (zzbc.class.isAssignableFrom(cls)) {
            if (zzb(zzciVarZzc)) {
                return zzco.zzb(cls, zzciVarZzc, zzcu.zzco(), zzbu.zzcb(), zzdc.zzdb(), zzas.zzas(), zzcf.zzch());
            }
            return zzco.zzb(cls, zzciVarZzc, zzcu.zzco(), zzbu.zzcb(), zzdc.zzdb(), (zzar<?>) null, zzcf.zzch());
        }
        if (zzb(zzciVarZzc)) {
            return zzco.zzb(cls, zzciVarZzc, zzcu.zzcn(), zzbu.zzca(), zzdc.zzcz(), zzas.zzat(), zzcf.zzcg());
        }
        return zzco.zzb(cls, zzciVarZzc, zzcu.zzcn(), zzbu.zzca(), zzdc.zzda(), (zzar<?>) null, zzcf.zzcg());
    }

    private static boolean zzb(zzci zzciVar) {
        return zzciVar.zzcj() == zzbc.zze.zzit;
    }

    private static zzch zzcc() {
        try {
            return (zzch) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzkf;
        }
    }
}
