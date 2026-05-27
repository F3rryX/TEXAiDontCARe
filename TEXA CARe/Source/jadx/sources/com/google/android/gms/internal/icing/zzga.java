package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzga extends zzda<zzga, zzfz> implements zzef {
    private static final zzga zzi;
    private int zzb;
    private String zze = "";
    private String zzf = "";
    private zzdg<zzfy> zzg = zzw();
    private zzfw zzh;

    static {
        zzga zzgaVar = new zzga();
        zzi = zzgaVar;
        zzda.zzq(zzga.class, zzgaVar);
    }

    private zzga() {
    }

    @Override // com.google.android.gms.internal.icing.zzda
    protected final Object zzf(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzr(zzi, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဉ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg", zzfy.class, "zzh"});
        }
        if (i2 == 3) {
            return new zzga();
        }
        zzfu zzfuVar = null;
        if (i2 == 4) {
            return new zzfz(zzfuVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzi;
    }
}
