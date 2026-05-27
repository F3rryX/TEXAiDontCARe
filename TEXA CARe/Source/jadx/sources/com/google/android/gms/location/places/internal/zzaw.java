package com.google.android.gms.location.places.internal;

import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.internal.places.zzbk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class zzaw extends DataBufferRef {
    public zzaw(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    private final byte[] zzb(String str, byte[] bArr) {
        if (!hasColumn(str) || hasNull(str)) {
            return null;
        }
        return getByteArray(str);
    }

    protected final float zzb(String str, float f) {
        return (!hasColumn(str) || hasNull(str)) ? f : getFloat(str);
    }

    protected final List<Integer> zzb(String str, List<Integer> list) {
        byte[] bArrZzb = zzb(str, (byte[]) null);
        if (bArrZzb == null) {
            return list;
        }
        try {
            com.google.android.gms.internal.places.zzl zzlVarZzb = com.google.android.gms.internal.places.zzl.zzb(bArrZzb);
            return zzlVarZzb.zzr() == 0 ? list : zzlVarZzb.zzq();
        } catch (zzbk e) {
            if (Log.isLoggable("SafeDataBufferRef", 6)) {
                Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            }
            return list;
        }
    }

    protected final int zzc(String str, int i) {
        return (!hasColumn(str) || hasNull(str)) ? i : getInteger(str);
    }

    protected final <E extends SafeParcelable> List<E> zzb(String str, Parcelable.Creator<E> creator, List<E> list) {
        byte[] bArrZzb = zzb(str, (byte[]) null);
        if (bArrZzb == null) {
            return list;
        }
        try {
            com.google.android.gms.internal.places.zzl zzlVarZzb = com.google.android.gms.internal.places.zzl.zzb(bArrZzb);
            if (zzlVarZzb.zzt() == 0) {
                return list;
            }
            ArrayList arrayList = new ArrayList(zzlVarZzb.zzt());
            Iterator<com.google.android.gms.internal.places.zzw> it = zzlVarZzb.zzs().iterator();
            while (it.hasNext()) {
                arrayList.add(SafeParcelableSerializer.deserializeFromBytes(it.next().toByteArray(), creator));
            }
            return arrayList;
        } catch (zzbk e) {
            if (Log.isLoggable("SafeDataBufferRef", 6)) {
                Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            }
            return list;
        }
    }

    protected final <E extends SafeParcelable> E zzb(String str, Parcelable.Creator<E> creator) {
        byte[] bArrZzb = zzb(str, (byte[]) null);
        if (bArrZzb == null) {
            return null;
        }
        return (E) SafeParcelableSerializer.deserializeFromBytes(bArrZzb, creator);
    }

    protected final List<String> zzc(String str, List<String> list) {
        byte[] bArrZzb = zzb(str, (byte[]) null);
        if (bArrZzb == null) {
            return list;
        }
        try {
            com.google.android.gms.internal.places.zzl zzlVarZzb = com.google.android.gms.internal.places.zzl.zzb(bArrZzb);
            return zzlVarZzb.zzp() == 0 ? list : zzlVarZzb.zzo();
        } catch (zzbk e) {
            if (Log.isLoggable("SafeDataBufferRef", 6)) {
                Log.e("SafeDataBufferRef", "Cannot parse byte[]", e);
            }
            return list;
        }
    }

    protected final String zzb(String str, String str2) {
        return (!hasColumn(str) || hasNull(str)) ? str2 : getString(str);
    }
}
