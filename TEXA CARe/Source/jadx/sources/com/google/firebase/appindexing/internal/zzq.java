package com.google.firebase.appindexing.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.icing.zzak;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzq extends zzs {
    final /* synthetic */ zzc[] zza;

    zzq(zzt zztVar, zzc[] zzcVarArr) {
        this.zza = zzcVarArr;
    }

    @Override // com.google.firebase.appindexing.internal.zzs
    protected final void zza(com.google.android.gms.internal.icing.zzaa zzaaVar) throws RemoteException {
        zzaaVar.zze(new zzak(this), this.zza);
    }
}
