package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzca extends zzcd {
    private final int zzc;

    zzca(byte[] bArr, int i, int i2) {
        super(bArr);
        zzm(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.icing.zzcd, com.google.android.gms.internal.icing.zzcf
    final byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.icing.zzcd, com.google.android.gms.internal.icing.zzcf
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.icing.zzcd
    protected final int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.icing.zzcd, com.google.android.gms.internal.icing.zzcf
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }
}
