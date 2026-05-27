package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzi implements Parcelable.Creator<PlaceFilter> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlaceFilter[] newArray(int i) {
        return new PlaceFilter[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlaceFilter createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        ArrayList<Integer> arrayListCreateIntegerList = null;
        ArrayList<String> arrayListCreateStringList = null;
        ArrayList arrayListCreateTypedList = null;
        boolean z = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(header);
            if (fieldId == 1) {
                arrayListCreateIntegerList = SafeParcelReader.createIntegerList(parcel, header);
            } else if (fieldId == 6) {
                arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
            } else if (fieldId == 3) {
                z = SafeParcelReader.readBoolean(parcel, header);
            } else if (fieldId == 4) {
                arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzp.CREATOR);
            } else {
                SafeParcelReader.skipUnknownField(parcel, header);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new PlaceFilter((List<Integer>) arrayListCreateIntegerList, z, (List<String>) arrayListCreateStringList, (List<zzp>) arrayListCreateTypedList);
    }
}
