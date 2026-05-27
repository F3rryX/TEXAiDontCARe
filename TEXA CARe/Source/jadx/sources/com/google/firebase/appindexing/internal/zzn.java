package com.google.firebase.appindexing.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzn {
    final /* synthetic */ zzo zza;
    private final zzz zzb;
    private final TaskCompletionSource<Void> zzc = new TaskCompletionSource<>();

    public zzn(zzo zzoVar, zzz zzzVar) {
        this.zza = zzoVar;
        this.zzb = zzzVar;
    }

    public final Task<Void> zza() {
        return this.zzc.getTask();
    }

    public final void zzb() {
        synchronized (this.zza.zzc) {
            Preconditions.checkState(this.zza.zzd == 0);
            this.zza.zzd = 1;
        }
        this.zza.zza.doWrite(new zzm(this, null)).addOnFailureListener(this.zza, new OnFailureListener(this) { // from class: com.google.firebase.appindexing.internal.zzk
            private final zzn zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zza.zzc(exc);
            }
        });
    }

    final /* synthetic */ void zzc(Exception exc) {
        zzn zznVar;
        synchronized (this.zza.zzc) {
            if (this.zza.zzc.peek() == this) {
                this.zza.zzc.remove();
                this.zza.zzd = 0;
                zznVar = (zzn) this.zza.zzc.peek();
            } else {
                zznVar = null;
            }
        }
        this.zzc.trySetException(exc);
        if (zznVar != null) {
            zznVar.zzb();
        }
    }
}
