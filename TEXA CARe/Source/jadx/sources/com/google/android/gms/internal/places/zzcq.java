package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzbc;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzcq<T> implements zzda<T> {
    private final zzck zzkw;
    private final boolean zzkx;
    private final zzds<?, ?> zzlg;
    private final zzar<?> zzlh;

    private zzcq(zzds<?, ?> zzdsVar, zzar<?> zzarVar, zzck zzckVar) {
        this.zzlg = zzdsVar;
        this.zzkx = zzarVar.zzf(zzckVar);
        this.zzlh = zzarVar;
        this.zzkw = zzckVar;
    }

    static <T> zzcq<T> zzb(zzds<?, ?> zzdsVar, zzar<?> zzarVar, zzck zzckVar) {
        return new zzcq<>(zzdsVar, zzarVar, zzckVar);
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final T newInstance() {
        return (T) this.zzkw.zzbl().zzbe();
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final boolean equals(T t, T t2) {
        if (!this.zzlg.zzr(t).equals(this.zzlg.zzr(t2))) {
            return false;
        }
        if (this.zzkx) {
            return this.zzlh.zzb(t).equals(this.zzlh.zzb(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final int hashCode(T t) {
        int iHashCode = this.zzlg.zzr(t).hashCode();
        return this.zzkx ? (iHashCode * 53) + this.zzlh.zzb(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final void zzd(T t, T t2) {
        zzdc.zzb(this.zzlg, t, t2);
        if (this.zzkx) {
            zzdc.zzb(this.zzlh, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final void zzb(T t, zzel zzelVar) throws IOException {
        for (T t2 : this.zzlh.zzb(t)) {
            zzax zzaxVar = (zzax) t2.getKey();
            if (zzaxVar.zzay() != zzem.MESSAGE || zzaxVar.zzaz() || zzaxVar.zzba()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (t2 instanceof zzbn) {
                zzelVar.zzb(zzaxVar.zzaw(), (Object) ((zzbn) t2).zzbx().zzv());
            } else {
                zzelVar.zzb(zzaxVar.zzaw(), t2.getValue());
            }
        }
        zzds<?, ?> zzdsVar = this.zzlg;
        zzdsVar.zzd(zzdsVar.zzr(t), zzelVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0099 A[EDGE_INSN: B:56:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:61:0x0053], SYNTHETIC] */
    @Override // com.google.android.gms.internal.places.zzda
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(T t, byte[] bArr, int i, int i2, zzr zzrVar) throws IOException {
        zzbc zzbcVar = (zzbc) t;
        zzdr zzdrVarZzdi = zzbcVar.zzih;
        if (zzdrVarZzdi == zzdr.zzdh()) {
            zzdrVarZzdi = zzdr.zzdi();
            zzbcVar.zzih = zzdrVarZzdi;
        }
        ((zzbc.zzc) t).zzbm();
        zzbc.zzf zzfVar = null;
        while (i < i2) {
            int iZzb = zzs.zzb(bArr, i, zzrVar);
            int i3 = zzrVar.zzdz;
            if (i3 == 11) {
                int i4 = 0;
                zzw zzwVar = null;
                while (iZzb < i2) {
                    iZzb = zzs.zzb(bArr, iZzb, zzrVar);
                    int i5 = zzrVar.zzdz;
                    int i6 = i5 >>> 3;
                    int i7 = i5 & 7;
                    if (i6 != 2) {
                        if (i6 == 3) {
                            if (zzfVar != null) {
                                zzcv.zzcq();
                                throw new NoSuchMethodError();
                            }
                            if (i7 == 2) {
                                iZzb = zzs.zzf(bArr, iZzb, zzrVar);
                                zzwVar = (zzw) zzrVar.zzeb;
                            }
                        }
                        if (i5 != 12) {
                            break;
                        } else {
                            iZzb = zzs.zzb(i5, bArr, iZzb, i2, zzrVar);
                        }
                    } else if (i7 == 0) {
                        iZzb = zzs.zzb(bArr, iZzb, zzrVar);
                        i4 = zzrVar.zzdz;
                        zzfVar = (zzbc.zzf) this.zzlh.zzb(zzrVar.zzec, this.zzkw, i4);
                    } else if (i5 != 12) {
                    }
                }
                if (zzwVar != null) {
                    zzdrVarZzdi.zzc((i4 << 3) | 2, zzwVar);
                }
                i = iZzb;
            } else if ((i3 & 7) == 2) {
                zzfVar = (zzbc.zzf) this.zzlh.zzb(zzrVar.zzec, this.zzkw, i3 >>> 3);
                if (zzfVar != null) {
                    zzcv.zzcq();
                    throw new NoSuchMethodError();
                }
                i = zzs.zzb(i3, bArr, iZzb, i2, zzdrVarZzdi, zzrVar);
            } else {
                i = zzs.zzb(i3, bArr, iZzb, i2, zzrVar);
            }
        }
        if (i != i2) {
            throw zzbk.zzbt();
        }
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final void zzd(T t) {
        this.zzlg.zzd(t);
        this.zzlh.zzd(t);
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final boolean zzp(T t) {
        return this.zzlh.zzb(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.places.zzda
    public final int zzn(T t) {
        zzds<?, ?> zzdsVar = this.zzlg;
        int iZzs = zzdsVar.zzs(zzdsVar.zzr(t)) + 0;
        return this.zzkx ? iZzs + this.zzlh.zzb(t).zzav() : iZzs;
    }
}
