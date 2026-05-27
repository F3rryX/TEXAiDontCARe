package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdx<V> {
    private static final Object zza = new Object();
    private final String zzb;
    private final zzdu<V> zzc;
    private final V zzd;
    private final V zze;
    private final Object zzf = new Object();
    private volatile V zzg = null;
    private volatile V zzh = null;

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ zzdx(String str, Object obj, Object obj2, zzdu zzduVar, zzdw zzdwVar) {
        this.zzb = str;
        this.zzd = obj;
        this.zze = obj2;
        this.zzc = zzduVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final V zza(V v) {
        zzdu<V> zzduVar;
        synchronized (this.zzf) {
        }
        if (v != null) {
            return v;
        }
        if (zzdv.zza == null) {
            return this.zzd;
        }
        synchronized (zza) {
            if (zzaa.zza()) {
                return this.zzh == null ? this.zzd : this.zzh;
            }
            try {
            } catch (SecurityException unused) {
            }
            for (zzdx zzdxVar : zzdy.zzaD) {
                if (zzaa.zza()) {
                    throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                }
                V vZza = null;
                try {
                    zzdu<V> zzduVar2 = zzdxVar.zzc;
                    if (zzduVar2 != null) {
                        vZza = zzduVar2.zza();
                    }
                } catch (IllegalStateException unused2) {
                }
                synchronized (zza) {
                    zzdxVar.zzh = vZza;
                }
                zzduVar = this.zzc;
                if (zzduVar != null) {
                    return this.zzd;
                }
                try {
                    return zzduVar.zza();
                } catch (IllegalStateException unused3) {
                    return this.zzd;
                } catch (SecurityException unused4) {
                    return this.zzd;
                }
            }
            zzduVar = this.zzc;
            if (zzduVar != null) {
            }
        }
    }

    public final String zzb() {
        return this.zzb;
    }
}
