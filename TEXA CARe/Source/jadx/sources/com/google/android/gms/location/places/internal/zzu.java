package com.google.android.gms.location.places.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;

/* JADX INFO: loaded from: classes.dex */
public final class zzu extends com.google.android.gms.internal.places.zzc implements zzr {
    zzu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.places.internal.IGooglePlaceDetectionService");
    }

    @Override // com.google.android.gms.location.places.internal.zzr
    public final void zzb(PlaceFilter placeFilter, zzau zzauVar, zzx zzxVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, placeFilter);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzxVar);
        zzb(6, parcelZzb);
    }

    @Override // com.google.android.gms.location.places.internal.zzr
    public final void zzb(PlaceReport placeReport, zzau zzauVar, zzx zzxVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, placeReport);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzxVar);
        zzb(7, parcelZzb);
    }
}
