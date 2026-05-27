package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfy extends zzda<zzfy, zzfx> implements zzef {
    private static final zzfy zzl;
    private int zzb;
    private String zze = "";
    private zzdc zzf = zzv();
    private zzdf zzg = zzt();
    private zzdg<String> zzh = zzda.zzw();
    private zzdg<zzga> zzi = zzw();
    private zzcf zzj = zzcf.zzb;
    private zzdd zzk = zzu();

    static {
        zzfy zzfyVar = new zzfy();
        zzl = zzfyVar;
        zzda.zzq(zzfy.class, zzfyVar);
    }

    private zzfy() {
    }

    @Override // com.google.android.gms.internal.icing.zzda
    protected final Object zzf(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzr(zzl, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0005\u0000\u0001ဈ\u0000\u0002\u0019\u0003\u0014\u0004\u001a\u0005\u001b\u0006ည\u0001\u0007\u0012", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", zzga.class, "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzfy();
        }
        zzfu zzfuVar = null;
        if (i2 == 4) {
            return new zzfx(zzfuVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzl;
    }
}
