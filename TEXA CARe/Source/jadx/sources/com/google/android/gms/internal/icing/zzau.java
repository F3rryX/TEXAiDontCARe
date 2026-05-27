package com.google.android.gms.internal.icing;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzau extends zza implements IInterface {
    zzau(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.search.internal.ISearchAuthService");
    }

    public final void zzd(zzat zzatVar, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, zzatVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc(1, parcelZza);
    }

    public final void zze(zzat zzatVar, String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, zzatVar);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc(2, parcelZza);
    }
}
