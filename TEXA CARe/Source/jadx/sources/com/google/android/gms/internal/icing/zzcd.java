package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzcd extends zzcc {
    protected final byte[] zza;

    zzcd(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcf) || zzc() != ((zzcf) obj).zzc()) {
            return false;
        }
        if (zzc() == 0) {
            return true;
        }
        if (!(obj instanceof zzcd)) {
            return obj.equals(this);
        }
        zzcd zzcdVar = (zzcd) obj;
        int iZzl = zzl();
        int iZzl2 = zzcdVar.zzl();
        if (iZzl != 0 && iZzl2 != 0 && iZzl != iZzl2) {
            return false;
        }
        int iZzc = zzc();
        if (iZzc > zzcdVar.zzc()) {
            int iZzc2 = zzc();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(iZzc);
            sb.append(iZzc2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (iZzc > zzcdVar.zzc()) {
            int iZzc3 = zzcdVar.zzc();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(iZzc);
            sb2.append(", ");
            sb2.append(iZzc3);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzcdVar instanceof zzcd)) {
            return zzcdVar.zze(0, iZzc).equals(zze(0, iZzc));
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzcdVar.zza;
        zzcdVar.zzd();
        int i = 0;
        int i2 = 0;
        while (i < iZzc) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    byte zzb(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    public int zzc() {
        return this.zza.length;
    }

    protected int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    public final zzcf zze(int i, int i2) {
        zzm(0, i2, zzc());
        return i2 == 0 ? zzcf.zzb : new zzca(this.zza, 0, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    final void zzf(zzbw zzbwVar) throws IOException {
        ((zzck) zzbwVar).zzp(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzc(), charset);
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    public final boolean zzh() {
        return zzfr.zzb(this.zza, 0, zzc());
    }

    @Override // com.google.android.gms.internal.icing.zzcf
    protected final int zzi(int i, int i2, int i3) {
        return zzdh.zzh(i, this.zza, 0, i3);
    }
}
