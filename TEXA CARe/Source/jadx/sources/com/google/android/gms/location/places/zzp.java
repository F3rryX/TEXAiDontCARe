package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR;
    private static final zzp zzaw;
    private static final zzp zzax;
    private static final zzp zzay;
    private static final Set<zzp> zzaz;
    private final String type;
    private final int zzba;

    zzp(String str, int i) {
        Preconditions.checkNotEmpty(str);
        this.type = str;
        this.zzba = i;
    }

    private static zzp zzb(String str, int i) {
        return new zzp(str, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzp)) {
            return false;
        }
        zzp zzpVar = (zzp) obj;
        return this.type.equals(zzpVar.type) && this.zzba == zzpVar.zzba;
    }

    public final int hashCode() {
        return this.type.hashCode();
    }

    public final String toString() {
        return this.type;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.type, false);
        SafeParcelWriter.writeInt(parcel, 2, this.zzba);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    static {
        zzp zzpVarZzb = zzb("test_type", 1);
        zzaw = zzpVarZzb;
        zzp zzpVarZzb2 = zzb("labeled_place", 6);
        zzax = zzpVarZzb2;
        zzp zzpVarZzb3 = zzb("here_content", 7);
        zzay = zzpVarZzb3;
        zzaz = CollectionUtils.setOf(zzpVarZzb, zzpVarZzb2, zzpVarZzb3);
        CREATOR = new zzo();
    }
}
