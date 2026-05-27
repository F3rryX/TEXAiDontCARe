package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes.dex */
public final class zzaj implements Parcelable.Creator<zzak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzak[] newArray(int i) {
        return new zzak[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzak createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        PlaceEntity placeEntity = null;
        float f = 0.0f;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                placeEntity = (PlaceEntity) SafeParcelReader.createParcelable(parcel, header, PlaceEntity.CREATOR);
            } else if (fieldId == 2) {
                f = SafeParcelReader.readFloat(parcel, header);
            } else {
                SafeParcelReader.skipUnknownField(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzak(placeEntity, f);
    }
}
