package com.google.android.gms.internal.icing;

import android.content.SharedPreferences;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbj {
    private static final Map<String, zzbj> zza = new ArrayMap();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    static synchronized void zza() {
        Map<String, zzbj> map = zza;
        Iterator<zzbj> it = map.values().iterator();
        if (it.hasNext()) {
            zzbj next = it.next();
            SharedPreferences sharedPreferences = next.zzb;
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = next.zzc;
            throw null;
        }
        map.clear();
    }
}
