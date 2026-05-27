package com.google.firebase.appindexing.internal;

import android.os.Handler;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.icing.zzar;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzo implements OnCompleteListener<Void>, Executor {
    private final GoogleApi<?> zza;
    private final Handler zzb;
    private final Queue<zzn> zzc = new ArrayDeque();
    private int zzd = 0;

    public zzo(GoogleApi<?> googleApi) {
        this.zza = googleApi;
        this.zzb = new zzar(googleApi.getLooper());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zzb.post(runnable);
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Void> task) {
        zzn zznVarPeek;
        synchronized (this.zzc) {
            if (this.zzd == 2) {
                zznVarPeek = this.zzc.peek();
                Preconditions.checkState(zznVarPeek != null);
            } else {
                zznVarPeek = null;
            }
            this.zzd = 0;
        }
        if (zznVarPeek != null) {
            zznVarPeek.zzb();
        }
    }

    public final Task<Void> zza(zzz zzzVar) {
        boolean zIsEmpty;
        zzn zznVar = new zzn(this, zzzVar);
        Task<Void> taskZza = zznVar.zza();
        taskZza.addOnCompleteListener(this, this);
        synchronized (this.zzc) {
            zIsEmpty = this.zzc.isEmpty();
            this.zzc.add(zznVar);
        }
        if (zIsEmpty) {
            zznVar.zzb();
        }
        return taskZza;
    }
}
