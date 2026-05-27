package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.places.PlacesStatusCodes;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.appindexing.FirebaseAppIndex;
import com.google.firebase.appindexing.FirebaseAppIndexingException;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzm extends TaskApiCall<zzf, Void> {
    final /* synthetic */ zzn zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* synthetic */ zzm(zzn zznVar, zzi zziVar) {
        super(null, false, PlacesStatusCodes.KEY_INVALID);
        this.zza = zznVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        zzg zzgVarZzd = ((zzv) ((zzf) anyClient).getService()).zzd(new zzl(this, taskCompletionSource), this.zza.zzb);
        int i = zzgVarZzd == null ? 2 : zzgVarZzd.zzd;
        boolean z = true;
        zzn zznVar = null;
        if (i == 3) {
            if (zzw.zzb(4)) {
                Log.i(FirebaseAppIndex.APP_INDEXING_API_TAG, "Queue was full. API call will be retried.");
            }
            if (taskCompletionSource.trySetResult(null)) {
                synchronized (this.zza.zza.zzc) {
                    if (this.zza.zza.zzd == 0) {
                        zzn zznVar2 = (zzn) this.zza.zza.zzc.peek();
                        Preconditions.checkState(zznVar2 == this.zza);
                        zznVar = zznVar2;
                    } else {
                        this.zza.zza.zzd = 2;
                    }
                }
            }
        } else {
            if (i != 1) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("API call failed. Status code: ");
                sb.append(i);
                String string = sb.toString();
                if (zzw.zzb(6)) {
                    Log.e(FirebaseAppIndex.APP_INDEXING_API_TAG, string);
                }
                if (taskCompletionSource.trySetResult(null)) {
                    this.zza.zzc.setException(new FirebaseAppIndexingException("Indexing error."));
                }
            }
            synchronized (this.zza.zza.zzc) {
                if (((zzn) this.zza.zza.zzc.poll()) != this.zza) {
                    z = false;
                }
                Preconditions.checkState(z);
                zznVar = (zzn) this.zza.zza.zzc.peek();
                this.zza.zza.zzd = 0;
            }
        }
        if (zznVar != null) {
            zznVar.zzb();
        }
    }
}
