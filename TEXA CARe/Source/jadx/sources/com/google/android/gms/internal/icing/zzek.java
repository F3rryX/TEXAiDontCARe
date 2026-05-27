package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzek {
    private static final zzej zza;
    private static final zzej zzb;

    static {
        zzej zzejVar;
        try {
            zzejVar = (zzej) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzejVar = null;
        }
        zza = zzejVar;
        zzb = new zzej();
    }

    static zzej zza() {
        return zza;
    }

    static zzej zzb() {
        return zzb;
    }
}
