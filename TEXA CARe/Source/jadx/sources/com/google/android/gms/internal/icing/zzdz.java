package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdz {
    zzdz() {
    }

    public static final int zza(int i, Object obj, Object obj2) {
        zzdy zzdyVar = (zzdy) obj;
        if (zzdyVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzdyVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }
}
