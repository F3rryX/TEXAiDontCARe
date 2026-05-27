package com.google.firebase.appindexing.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzv extends com.google.android.gms.internal.icing.zza implements IInterface {
    zzv(IBinder iBinder) {
        super(iBinder, "com.google.firebase.appindexing.internal.IAppIndexingService");
    }

    public final zzg zzd(IStatusCallback iStatusCallback, zzz zzzVar) throws RemoteException {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.icing.zzc.zzc(parcelZza, iStatusCallback);
        com.google.android.gms.internal.icing.zzc.zzb(parcelZza, zzzVar);
        Parcel parcelZzb = zzb(8, parcelZza);
        zzg zzgVar = (zzg) com.google.android.gms.internal.icing.zzc.zza(parcelZzb, zzg.CREATOR);
        parcelZzb.recycle();
        return zzgVar;
    }
}
