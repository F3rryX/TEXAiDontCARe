package com.google.android.gms.internal.icing;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaa extends zza implements IInterface {
    zzaa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    }

    public final void zzd(zzac zzacVar, String str, zzx[] zzxVarArr) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, zzacVar);
        parcelZza.writeString(null);
        parcelZza.writeTypedArray(zzxVarArr, 0);
        zzc(1, parcelZza);
    }

    public final void zze(zzac zzacVar, com.google.firebase.appindexing.internal.zzc[] zzcVarArr) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, zzacVar);
        parcelZza.writeTypedArray(zzcVarArr, 0);
        zzc(7, parcelZza);
    }
}
