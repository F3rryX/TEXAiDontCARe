package com.google.android.gms.internal.places;

/* JADX INFO: loaded from: classes.dex */
abstract class zzec {
    zzec() {
    }

    abstract int zzc(int i, byte[] bArr, int i2, int i3);

    abstract int zzc(CharSequence charSequence, byte[] bArr, int i, int i2);

    abstract String zzh(byte[] bArr, int i, int i2) throws zzbk;

    final boolean zzf(byte[] bArr, int i, int i2) {
        return zzc(0, bArr, i, i2) == 0;
    }
}
