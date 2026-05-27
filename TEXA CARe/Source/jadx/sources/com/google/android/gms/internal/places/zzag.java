package com.google.android.gms.internal.places;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class zzag extends zzad {
    protected final byte[] zzen;

    zzag(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.zzen = bArr;
    }

    protected int zzag() {
        return 0;
    }

    @Override // com.google.android.gms.internal.places.zzw
    public byte zzi(int i) {
        return this.zzen[i];
    }

    @Override // com.google.android.gms.internal.places.zzw
    byte zzj(int i) {
        return this.zzen[i];
    }

    @Override // com.google.android.gms.internal.places.zzw
    public int size() {
        return this.zzen.length;
    }

    @Override // com.google.android.gms.internal.places.zzw
    public final zzw zzb(int i, int i2) {
        int iZzc = zzc(0, i2, size());
        if (iZzc == 0) {
            return zzw.zzeg;
        }
        return new zzz(this.zzen, zzag(), iZzc);
    }

    @Override // com.google.android.gms.internal.places.zzw
    protected void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzen, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.places.zzw
    final void zzb(zzt zztVar) throws IOException {
        zztVar.zzb(this.zzen, zzag(), size());
    }

    @Override // com.google.android.gms.internal.places.zzw
    protected final String zzb(Charset charset) {
        return new String(this.zzen, zzag(), size(), charset);
    }

    @Override // com.google.android.gms.internal.places.zzw
    public final boolean zzae() {
        int iZzag = zzag();
        return zzea.zzf(this.zzen, iZzag, size() + iZzag);
    }

    @Override // com.google.android.gms.internal.places.zzw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzw) || size() != ((zzw) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof zzag) {
            zzag zzagVar = (zzag) obj;
            int iZzaf = zzaf();
            int iZzaf2 = zzagVar.zzaf();
            if (iZzaf == 0 || iZzaf2 == 0 || iZzaf == iZzaf2) {
                return zzb(zzagVar, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.places.zzad
    final boolean zzb(zzw zzwVar, int i, int i2) {
        if (i2 > zzwVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzwVar.size()) {
            int size2 = zzwVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (zzwVar instanceof zzag) {
            zzag zzagVar = (zzag) zzwVar;
            byte[] bArr = this.zzen;
            byte[] bArr2 = zzagVar.zzen;
            int iZzag = zzag() + i2;
            int iZzag2 = zzag();
            int iZzag3 = zzagVar.zzag();
            while (iZzag2 < iZzag) {
                if (bArr[iZzag2] != bArr2[iZzag3]) {
                    return false;
                }
                iZzag2++;
                iZzag3++;
            }
            return true;
        }
        return zzwVar.zzb(0, i2).equals(zzb(0, i2));
    }

    @Override // com.google.android.gms.internal.places.zzw
    protected final int zzb(int i, int i2, int i3) {
        return zzbd.zzb(i, this.zzen, zzag(), i3);
    }
}
