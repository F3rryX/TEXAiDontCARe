package com.google.android.gms.internal.icing;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbe {
    private final ContentResolver zzc;
    private final ContentObserver zzd;
    private static final Map<Uri, zzbe> zzb = new ArrayMap();
    public static final String[] zza = {"key", "value"};

    static synchronized void zza() {
        Map<Uri, zzbe> map = zzb;
        Iterator<zzbe> it = map.values().iterator();
        if (it.hasNext()) {
            zzbe next = it.next();
            ContentResolver contentResolver = next.zzc;
            ContentObserver contentObserver = next.zzd;
            throw null;
        }
        map.clear();
    }
}
