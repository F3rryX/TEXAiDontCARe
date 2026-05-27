package com.google.android.gms.location.places;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PlacePhotoResult extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<PlacePhotoResult> CREATOR = new zzl();
    private final BitmapTeleporter zzah;
    private final Bitmap zzai;
    private final Status zzp;

    public PlacePhotoResult(Status status, BitmapTeleporter bitmapTeleporter) {
        this.zzp = status;
        this.zzah = bitmapTeleporter;
        if (bitmapTeleporter != null) {
            this.zzai = bitmapTeleporter.get();
        } else {
            this.zzai = null;
        }
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzp;
    }

    public Bitmap getBitmap() {
        return this.zzai;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getStatus(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzah, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("status", this.zzp).add("bitmap", this.zzai).toString();
    }
}
