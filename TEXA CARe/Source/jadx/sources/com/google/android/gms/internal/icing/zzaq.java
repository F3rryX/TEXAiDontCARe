package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaq extends zzda<zzaq, zzan> implements zzef {
    private static final zzaq zze;
    private zzdg<zzap> zzb = zzw();

    static {
        zzaq zzaqVar = new zzaq();
        zze = zzaqVar;
        zzda.zzq(zzaq.class, zzaqVar);
    }

    private zzaq() {
    }

    public static zzan zza() {
        return zze.zzl();
    }

    static /* synthetic */ void zzc(zzaq zzaqVar, Iterable iterable) {
        zzdg<zzap> zzdgVar = zzaqVar.zzb;
        if (!zzdgVar.zza()) {
            zzaqVar.zzb = zzda.zzx(zzdgVar);
        }
        zzbs.zzk(iterable, zzaqVar.zzb);
    }

    @Override // com.google.android.gms.internal.icing.zzda
    protected final Object zzf(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzr(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zzap.class});
        }
        if (i2 == 3) {
            return new zzaq();
        }
        zzam zzamVar = null;
        if (i2 == 4) {
            return new zzan(zzamVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zze;
    }
}
