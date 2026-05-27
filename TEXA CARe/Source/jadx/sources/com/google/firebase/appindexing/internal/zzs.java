package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.places.PlacesStatusCodes;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzs extends TaskApiCall<com.google.android.gms.internal.icing.zzae, Void> implements BaseImplementation.ResultHolder<Status> {
    protected TaskCompletionSource<Void> zzb;

    zzs() {
        super(null, false, PlacesStatusCodes.INVALID_ARGUMENT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    protected final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        this.zzb = taskCompletionSource;
        zza((com.google.android.gms.internal.icing.zzaa) ((com.google.android.gms.internal.icing.zzae) anyClient).getService());
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        Preconditions.checkArgument(!status.isSuccess(), "Failed result must not be success.");
        String statusMessage = status.getStatusMessage();
        if (statusMessage == null) {
            statusMessage = "";
        }
        this.zzb.setException(zzaf.zza(status, statusMessage));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final /* bridge */ /* synthetic */ void setResult(Status status) {
        Status status2 = status;
        if (status2.isSuccess()) {
            this.zzb.setResult(null);
        } else {
            this.zzb.setException(zzaf.zza(status2, "User Action indexing error, please try again."));
        }
    }

    protected abstract void zza(com.google.android.gms.internal.icing.zzaa zzaaVar) throws RemoteException;
}
