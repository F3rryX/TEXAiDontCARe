package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzea {
    private static final zzdz zza;
    private static final zzdz zzb;

    static {
        zzdz zzdzVar;
        try {
            zzdzVar = (zzdz) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzdzVar = null;
        }
        zza = zzdzVar;
        zzb = new zzdz();
    }

    static zzdz zza() {
        return zza;
    }

    static zzdz zzb() {
        return zzb;
    }
}
