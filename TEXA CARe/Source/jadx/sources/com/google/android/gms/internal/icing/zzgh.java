package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgh extends zzda<zzgh, zzgg> implements zzef {
    private static final zzgh zzj;
    private int zzb;
    private boolean zze;
    private String zzf = "";
    private long zzg;
    private double zzh;
    private zzgf zzi;

    static {
        zzgh zzghVar = new zzgh();
        zzj = zzghVar;
        zzda.zzq(zzgh.class, zzghVar);
    }

    private zzgh() {
    }

    public static zzgg zza() {
        return zzj.zzl();
    }

    static /* synthetic */ void zzc(zzgh zzghVar, boolean z) {
        zzghVar.zzb |= 1;
        zzghVar.zze = z;
    }

    static /* synthetic */ void zzd(zzgh zzghVar, String str) {
        str.getClass();
        zzghVar.zzb |= 2;
        zzghVar.zzf = str;
    }

    static /* synthetic */ void zze(zzgh zzghVar, zzgf zzgfVar) {
        zzgfVar.getClass();
        zzghVar.zzi = zzgfVar;
        zzghVar.zzb |= 16;
    }

    @Override // com.google.android.gms.internal.icing.zzda
    protected final Object zzf(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzr(zzj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004က\u0003\u0005ဉ\u0004", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzgh();
        }
        zzgb zzgbVar = null;
        if (i2 == 4) {
            return new zzgg(zzgbVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzj;
    }
}
