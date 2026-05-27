package com.google.firebase.appindexing;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.appindexing.internal.zzp;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class FirebaseAppIndex {
    public static final String ACTION_UPDATE_INDEX = "com.google.firebase.appindexing.UPDATE_INDEX";
    public static final String APP_INDEXING_API_TAG = "FirebaseAppIndex";
    public static final String EXTRA_UPDATE_INDEX_REASON = "com.google.firebase.appindexing.extra.REASON";
    public static final int EXTRA_UPDATE_INDEX_REASON_REBUILD = 1;
    public static final int EXTRA_UPDATE_INDEX_REASON_REFRESH = 2;
    private static WeakReference<FirebaseAppIndex> zza;

    public static synchronized FirebaseAppIndex getInstance(Context context) {
        Preconditions.checkNotNull(context);
        WeakReference<FirebaseAppIndex> weakReference = zza;
        FirebaseAppIndex firebaseAppIndex = weakReference == null ? null : weakReference.get();
        if (firebaseAppIndex != null) {
            return firebaseAppIndex;
        }
        zzp zzpVar = new zzp(context.getApplicationContext());
        zza = new WeakReference<>(zzpVar);
        return zzpVar;
    }

    public abstract Task<Void> remove(String... strArr);

    public abstract Task<Void> removeAll();

    public abstract Task<Void> update(Indexable... indexableArr);
}
