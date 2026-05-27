package com.google.firebase.appindexing;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.firebase.appindexing.internal.zzt;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class FirebaseUserActions {
    public static final String APP_INDEXING_API_TAG = "FirebaseUserActions";
    private static WeakReference<FirebaseUserActions> zza;

    public static synchronized FirebaseUserActions getInstance(Context context) {
        Preconditions.checkNotNull(context);
        WeakReference<FirebaseUserActions> weakReference = zza;
        FirebaseUserActions firebaseUserActions = weakReference == null ? null : weakReference.get();
        if (firebaseUserActions != null) {
            return firebaseUserActions;
        }
        zzt zztVar = new zzt(context.getApplicationContext());
        zza = new WeakReference<>(zztVar);
        return zztVar;
    }

    public abstract Task<Void> end(Action action);

    public abstract Task<Void> start(Action action);
}
