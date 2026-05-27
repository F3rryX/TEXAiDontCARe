package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zze implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        String strCreateString = null;
        ArrayList<Integer> arrayListCreateIntegerList = null;
        String strCreateString2 = null;
        ArrayList arrayListCreateTypedList = null;
        String strCreateString3 = null;
        ArrayList arrayListCreateTypedList2 = null;
        String strCreateString4 = null;
        ArrayList arrayListCreateTypedList3 = null;
        int i = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 2:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 3:
                    arrayListCreateIntegerList = SafeParcelReader.createIntegerList(parcel, header);
                    break;
                case 4:
                    arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzb.CREATOR);
                    break;
                case 5:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 7:
                    arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header, zzb.CREATOR);
                    break;
                case 8:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 9:
                    arrayListCreateTypedList3 = SafeParcelReader.createTypedList(parcel, header, zzb.CREATOR);
                    break;
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new zzc(strCreateString, arrayListCreateIntegerList, i, strCreateString2, arrayListCreateTypedList, strCreateString3, arrayListCreateTypedList2, strCreateString4, arrayListCreateTypedList3);
    }
}
