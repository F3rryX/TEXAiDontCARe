package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzl extends IStatusCallback.Stub {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzm zzb;

    zzl(zzm zzmVar, TaskCompletionSource taskCompletionSource) {
        this.zzb = zzmVar;
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) throws RemoteException {
        if (this.zza.trySetResult(null)) {
            if (status.isSuccess()) {
                this.zzb.zza.zzc.setResult(null);
            } else {
                this.zzb.zza.zzc.setException(zzaf.zza(status, "Indexing error, please try again."));
            }
        }
    }
}
