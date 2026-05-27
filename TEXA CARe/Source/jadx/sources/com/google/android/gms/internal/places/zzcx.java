package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzbc;

/* JADX INFO: loaded from: classes.dex */
final class zzcx implements zzci {
    private final int flags;
    private final String info;
    private final Object[] zzkt;
    private final zzck zzkw;

    zzcx(zzck zzckVar, String str, Object[] objArr) {
        this.zzkw = zzckVar;
        this.info = str;
        this.zzkt = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.flags = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    final String zzcr() {
        return this.info;
    }

    final Object[] zzcs() {
        return this.zzkt;
    }

    @Override // com.google.android.gms.internal.places.zzci
    public final zzck zzcl() {
        return this.zzkw;
    }

    @Override // com.google.android.gms.internal.places.zzci
    public final int zzcj() {
        return (this.flags & 1) == 1 ? zzbc.zze.zzit : zzbc.zze.zziu;
    }

    @Override // com.google.android.gms.internal.places.zzci
    public final boolean zzck() {
        return (this.flags & 2) == 2;
    }
}
