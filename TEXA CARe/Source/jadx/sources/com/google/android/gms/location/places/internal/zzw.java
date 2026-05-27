package com.google.android.gms.location.places.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzw extends com.google.android.gms.internal.places.zzc implements zzt {
    zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.places.internal.IGooglePlacesService");
    }

    @Override // com.google.android.gms.location.places.internal.zzt
    public final void zzb(List<String> list, zzau zzauVar, zzx zzxVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        parcelZzb.writeStringList(list);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzxVar);
        zzb(17, parcelZzb);
    }

    @Override // com.google.android.gms.location.places.internal.zzt
    public final void zzb(String str, LatLngBounds latLngBounds, int i, AutocompleteFilter autocompleteFilter, zzau zzauVar, zzx zzxVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        parcelZzb.writeString(str);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, latLngBounds);
        parcelZzb.writeInt(i);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, autocompleteFilter);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzxVar);
        zzb(28, parcelZzb);
    }

    @Override // com.google.android.gms.location.places.internal.zzt
    public final void zzb(AddPlaceRequest addPlaceRequest, zzau zzauVar, zzx zzxVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, addPlaceRequest);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzxVar);
        zzb(14, parcelZzb);
    }

    @Override // com.google.android.gms.location.places.internal.zzt
    public final void zzb(String str, zzau zzauVar, zzv zzvVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        parcelZzb.writeString(str);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzvVar);
        zzb(19, parcelZzb);
    }

    @Override // com.google.android.gms.location.places.internal.zzt
    public final void zzb(String str, int i, int i2, int i3, zzau zzauVar, zzv zzvVar) throws RemoteException {
        Parcel parcelZzb = zzb();
        parcelZzb.writeString(str);
        parcelZzb.writeInt(i);
        parcelZzb.writeInt(i2);
        parcelZzb.writeInt(i3);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzauVar);
        com.google.android.gms.internal.places.zze.zzb(parcelZzb, zzvVar);
        zzb(20, parcelZzb);
    }
}
