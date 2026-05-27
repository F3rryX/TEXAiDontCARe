package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes.dex */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzav();
    final int length;
    final int offset;

    public zzb(int i, int i2) {
        this.offset = i;
        this.length = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.offset);
        SafeParcelWriter.writeInt(parcel, 2, this.length);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("offset", Integer.valueOf(this.offset)).add("length", Integer.valueOf(this.length)).toString();
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.offset), Integer.valueOf(this.length));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzb)) {
            return false;
        }
        zzb zzbVar = (zzb) obj;
        return Objects.equal(Integer.valueOf(this.offset), Integer.valueOf(zzbVar.offset)) && Objects.equal(Integer.valueOf(this.length), Integer.valueOf(zzbVar.length));
    }
}
