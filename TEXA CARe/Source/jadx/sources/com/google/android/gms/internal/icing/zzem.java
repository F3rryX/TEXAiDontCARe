package com.google.android.gms.internal.icing;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzem {
    private static final zzem zza = new zzem();
    private final ConcurrentMap<Class<?>, zzep<?>> zzc = new ConcurrentHashMap();
    private final zzeq zzb = new zzdw();

    private zzem() {
    }

    public static zzem zza() {
        return zza;
    }

    public final <T> zzep<T> zzb(Class<T> cls) {
        zzdh.zzb(cls, "messageType");
        zzep<T> zzepVarZza = (zzep) this.zzc.get(cls);
        if (zzepVarZza == null) {
            zzepVarZza = this.zzb.zza(cls);
            zzdh.zzb(cls, "messageType");
            zzdh.zzb(zzepVarZza, "schema");
            zzep<T> zzepVar = (zzep) this.zzc.putIfAbsent(cls, zzepVarZza);
            if (zzepVar != null) {
                return zzepVar;
            }
        }
        return zzepVarZza;
    }
}
