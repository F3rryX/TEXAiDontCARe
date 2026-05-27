package com.google.android.gms.internal.icing;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzax extends zzaw {
    final /* synthetic */ zzay zza;

    zzax(zzay zzayVar) {
        this.zza = zzayVar;
    }

    @Override // com.google.android.gms.internal.icing.zzaw, com.google.android.gms.internal.icing.zzat
    public final void zzc(Status status) {
        if (this.zza.zzc) {
            Log.d("SearchAuth", "ClearTokenImpl success");
        }
        this.zza.setResult(status);
    }
}
