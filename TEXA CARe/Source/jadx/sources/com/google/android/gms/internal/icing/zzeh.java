package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.spongycastle.asn1.cmp.PKIFailureInfo;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzeh<T> implements zzep<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzfn.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final zzee zze;
    private final boolean zzf;
    private final boolean zzg;
    private final int[] zzh;
    private final int zzi;
    private final int zzj;
    private final zzds zzk;
    private final zzfd<?, ?> zzl;
    private final zzcq<?> zzm;
    private final zzej zzn;
    private final zzdz zzo;

    /* JADX WARN: Multi-variable type inference failed */
    private zzeh(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzee zzeeVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzej zzejVar, zzds zzdsVar, zzfd<?, ?> zzfdVar, zzcq<?> zzcqVar, zzdz zzdzVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zzg = zzeeVar;
        boolean z3 = false;
        if (zzfdVar != 0 && zzfdVar.zza(i2)) {
            z3 = true;
        }
        this.zzf = z3;
        this.zzh = z2;
        this.zzi = iArr3;
        this.zzj = i3;
        this.zzn = i4;
        this.zzk = zzejVar;
        this.zzl = zzdsVar;
        this.zzm = zzfdVar;
        this.zze = i2;
        this.zzo = zzcqVar;
    }

    private final boolean zzA(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzB(t, i) : (i3 & i4) != 0;
    }

    private final boolean zzB(T t, int i) {
        int iZzs = zzs(i);
        long j = iZzs & 1048575;
        if (j != 1048575) {
            return (zzfn.zzd(t, j) & (1 << (iZzs >>> 20))) != 0;
        }
        int iZzr = zzr(i);
        long j2 = iZzr & 1048575;
        switch (zzt(iZzr)) {
            case 0:
                return zzfn.zzl(t, j2) != 0.0d;
            case 1:
                return zzfn.zzj(t, j2) != 0.0f;
            case 2:
                return zzfn.zzf(t, j2) != 0;
            case 3:
                return zzfn.zzf(t, j2) != 0;
            case 4:
                return zzfn.zzd(t, j2) != 0;
            case 5:
                return zzfn.zzf(t, j2) != 0;
            case 6:
                return zzfn.zzd(t, j2) != 0;
            case 7:
                return zzfn.zzh(t, j2);
            case 8:
                Object objZzn = zzfn.zzn(t, j2);
                if (objZzn instanceof String) {
                    return !((String) objZzn).isEmpty();
                }
                if (objZzn instanceof zzcf) {
                    return !zzcf.zzb.equals(objZzn);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzfn.zzn(t, j2) != null;
            case 10:
                return !zzcf.zzb.equals(zzfn.zzn(t, j2));
            case 11:
                return zzfn.zzd(t, j2) != 0;
            case 12:
                return zzfn.zzd(t, j2) != 0;
            case 13:
                return zzfn.zzd(t, j2) != 0;
            case 14:
                return zzfn.zzf(t, j2) != 0;
            case 15:
                return zzfn.zzd(t, j2) != 0;
            case 16:
                return zzfn.zzf(t, j2) != 0;
            case 17:
                return zzfn.zzn(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzC(T t, int i) {
        int iZzs = zzs(i);
        long j = 1048575 & iZzs;
        if (j == 1048575) {
            return;
        }
        zzfn.zze(t, j, (1 << (iZzs >>> 20)) | zzfn.zzd(t, j));
    }

    private final boolean zzD(T t, int i, int i2) {
        return zzfn.zzd(t, (long) (zzs(i2) & 1048575)) == i;
    }

    private final void zzE(T t, int i, int i2) {
        zzfn.zze(t, zzs(i2) & 1048575, i);
    }

    private final void zzF(T t, zzcn zzcnVar) throws IOException {
        int i;
        if (this.zzf) {
            this.zzm.zzb(t);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int iZzr = zzr(i3);
            int i6 = this.zzc[i3];
            int iZzt = zzt(iZzr);
            if (iZzt <= 17) {
                int i7 = this.zzc[i3 + 2];
                int i8 = i7 & i2;
                if (i8 != i5) {
                    i4 = unsafe.getInt(t, i8);
                    i5 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = iZzr & i2;
            switch (iZzt) {
                case 0:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzf(i6, zzfn.zzl(t, j));
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 1:
                    if ((i4 & i) != 0) {
                        zzcnVar.zze(i6, zzfn.zzj(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 2:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzc(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 3:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzh(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 4:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzi(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 5:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzj(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 6:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzk(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 7:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzl(i6, zzfn.zzh(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 8:
                    if ((i4 & i) != 0) {
                        zzH(i6, unsafe.getObject(t, j), zzcnVar);
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 9:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzr(i6, unsafe.getObject(t, j), zzo(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 10:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzn(i6, (zzcf) unsafe.getObject(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 11:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzo(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 12:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzg(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 13:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzb(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 14:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzd(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 15:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzp(i6, unsafe.getInt(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 16:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzq(i6, unsafe.getLong(t, j));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 17:
                    if ((i4 & i) != 0) {
                        zzcnVar.zzs(i6, unsafe.getObject(t, j), zzo(i3));
                    } else {
                        continue;
                    }
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 18:
                    zzer.zzH(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 19:
                    zzer.zzI(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 20:
                    zzer.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 21:
                    zzer.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 22:
                    zzer.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 23:
                    zzer.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 24:
                    zzer.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 25:
                    zzer.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    continue;
                    i3 += 3;
                    i2 = 1048575;
                    break;
                case 26:
                    zzer.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar);
                    break;
                case 27:
                    zzer.zzX(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, zzo(i3));
                    break;
                case 28:
                    zzer.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar);
                    break;
                case 29:
                    zzer.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 30:
                    zzer.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 31:
                    zzer.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 32:
                    zzer.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 33:
                    zzer.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 34:
                    zzer.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, false);
                    break;
                case 35:
                    zzer.zzH(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 36:
                    zzer.zzI(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 37:
                    zzer.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 38:
                    zzer.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 39:
                    zzer.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 40:
                    zzer.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 41:
                    zzer.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 42:
                    zzer.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 43:
                    zzer.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 44:
                    zzer.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 45:
                    zzer.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 46:
                    zzer.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 47:
                    zzer.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 48:
                    zzer.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, true);
                    break;
                case 49:
                    zzer.zzY(this.zzc[i3], (List) unsafe.getObject(t, j), zzcnVar, zzo(i3));
                    break;
                case 50:
                    zzG(zzcnVar, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzf(i6, zzu(t, j));
                    }
                    break;
                case 52:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zze(i6, zzv(t, j));
                    }
                    break;
                case 53:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzc(i6, zzx(t, j));
                    }
                    break;
                case 54:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzh(i6, zzx(t, j));
                    }
                    break;
                case 55:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzi(i6, zzw(t, j));
                    }
                    break;
                case 56:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzj(i6, zzx(t, j));
                    }
                    break;
                case 57:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzk(i6, zzw(t, j));
                    }
                    break;
                case 58:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzl(i6, zzy(t, j));
                    }
                    break;
                case 59:
                    if (zzD(t, i6, i3)) {
                        zzH(i6, unsafe.getObject(t, j), zzcnVar);
                    }
                    break;
                case 60:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzr(i6, unsafe.getObject(t, j), zzo(i3));
                    }
                    break;
                case 61:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzn(i6, (zzcf) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzo(i6, zzw(t, j));
                    }
                    break;
                case 63:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzg(i6, zzw(t, j));
                    }
                    break;
                case 64:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzb(i6, zzw(t, j));
                    }
                    break;
                case 65:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzd(i6, zzx(t, j));
                    }
                    break;
                case 66:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzp(i6, zzw(t, j));
                    }
                    break;
                case 67:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzq(i6, zzx(t, j));
                    }
                    break;
                case 68:
                    if (zzD(t, i6, i3)) {
                        zzcnVar.zzs(i6, unsafe.getObject(t, j), zzo(i3));
                    }
                    break;
            }
            i3 += 3;
            i2 = 1048575;
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        zzfdVar.zzg(zzfdVar.zzb(t), zzcnVar);
    }

    private final <K, V> void zzG(zzcn zzcnVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        throw null;
    }

    private static final void zzH(int i, Object obj, zzcn zzcnVar) throws IOException {
        if (obj instanceof String) {
            zzcnVar.zzm(i, (String) obj);
        } else {
            zzcnVar.zzn(i, (zzcf) obj);
        }
    }

    static <T> zzeh<T> zzg(Class<T> cls, zzeb zzebVar, zzej zzejVar, zzds zzdsVar, zzfd<?, ?> zzfdVar, zzcq<?> zzcqVar, zzdz zzdzVar) {
        if (zzebVar instanceof zzeo) {
            return zzh((zzeo) zzebVar, zzejVar, zzdsVar, zzfdVar, zzcqVar, zzdzVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0378  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static <T> zzeh<T> zzh(zzeo zzeoVar, zzej zzejVar, zzds zzdsVar, zzfd<?, ?> zzfdVar, zzcq<?> zzcqVar, zzdz zzdzVar) {
        int i;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char cCharAt;
        int i7;
        char cCharAt2;
        int i8;
        char cCharAt3;
        int i9;
        char cCharAt4;
        int i10;
        char cCharAt5;
        int i11;
        char cCharAt6;
        int i12;
        char cCharAt7;
        int i13;
        char cCharAt8;
        int i14;
        int i15;
        int i16;
        int[] iArr2;
        int i17;
        int i18;
        int i19;
        int iObjectFieldOffset;
        Object[] objArr;
        String str;
        Class<?> cls;
        int i20;
        int iObjectFieldOffset2;
        int i21;
        Field fieldZzj;
        char cCharAt9;
        int i22;
        int i23;
        int i24;
        Object obj;
        Field fieldZzj2;
        Object obj2;
        Field fieldZzj3;
        int i25;
        char cCharAt10;
        int i26;
        char cCharAt11;
        int i27;
        char cCharAt12;
        int i28;
        char cCharAt13;
        boolean z = zzeoVar.zzc() == 2;
        String strZzd = zzeoVar.zzd();
        int length = strZzd.length();
        char c = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i29 = 1;
            while (true) {
                i = i29 + 1;
                if (strZzd.charAt(i29) < 55296) {
                    break;
                }
                i29 = i;
            }
        } else {
            i = 1;
        }
        int i30 = i + 1;
        int iCharAt4 = strZzd.charAt(i);
        if (iCharAt4 >= 55296) {
            int i31 = iCharAt4 & 8191;
            int i32 = 13;
            while (true) {
                i28 = i30 + 1;
                cCharAt13 = strZzd.charAt(i30);
                if (cCharAt13 < 55296) {
                    break;
                }
                i31 |= (cCharAt13 & 8191) << i32;
                i32 += 13;
                i30 = i28;
            }
            iCharAt4 = i31 | (cCharAt13 << i32);
            i30 = i28;
        }
        if (iCharAt4 == 0) {
            iArr = zza;
            i3 = 0;
            iCharAt = 0;
            i5 = 0;
            iCharAt2 = 0;
            i4 = 0;
            iCharAt3 = 0;
            i2 = 0;
        } else {
            int i33 = i30 + 1;
            int iCharAt5 = strZzd.charAt(i30);
            if (iCharAt5 >= 55296) {
                int i34 = iCharAt5 & 8191;
                int i35 = 13;
                while (true) {
                    i13 = i33 + 1;
                    cCharAt8 = strZzd.charAt(i33);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i34 |= (cCharAt8 & 8191) << i35;
                    i35 += 13;
                    i33 = i13;
                }
                iCharAt5 = i34 | (cCharAt8 << i35);
                i33 = i13;
            }
            int i36 = i33 + 1;
            int iCharAt6 = strZzd.charAt(i33);
            if (iCharAt6 >= 55296) {
                int i37 = iCharAt6 & 8191;
                int i38 = 13;
                while (true) {
                    i12 = i36 + 1;
                    cCharAt7 = strZzd.charAt(i36);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i37 |= (cCharAt7 & 8191) << i38;
                    i38 += 13;
                    i36 = i12;
                }
                iCharAt6 = i37 | (cCharAt7 << i38);
                i36 = i12;
            }
            int i39 = i36 + 1;
            iCharAt = strZzd.charAt(i36);
            if (iCharAt >= 55296) {
                int i40 = iCharAt & 8191;
                int i41 = 13;
                while (true) {
                    i11 = i39 + 1;
                    cCharAt6 = strZzd.charAt(i39);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i40 |= (cCharAt6 & 8191) << i41;
                    i41 += 13;
                    i39 = i11;
                }
                iCharAt = i40 | (cCharAt6 << i41);
                i39 = i11;
            }
            int i42 = i39 + 1;
            int iCharAt7 = strZzd.charAt(i39);
            if (iCharAt7 >= 55296) {
                int i43 = iCharAt7 & 8191;
                int i44 = 13;
                while (true) {
                    i10 = i42 + 1;
                    cCharAt5 = strZzd.charAt(i42);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i43 |= (cCharAt5 & 8191) << i44;
                    i44 += 13;
                    i42 = i10;
                }
                iCharAt7 = i43 | (cCharAt5 << i44);
                i42 = i10;
            }
            int i45 = i42 + 1;
            iCharAt2 = strZzd.charAt(i42);
            if (iCharAt2 >= 55296) {
                int i46 = iCharAt2 & 8191;
                int i47 = 13;
                while (true) {
                    i9 = i45 + 1;
                    cCharAt4 = strZzd.charAt(i45);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt4 & 8191) << i47;
                    i47 += 13;
                    i45 = i9;
                }
                iCharAt2 = i46 | (cCharAt4 << i47);
                i45 = i9;
            }
            int i48 = i45 + 1;
            int iCharAt8 = strZzd.charAt(i45);
            if (iCharAt8 >= 55296) {
                int i49 = iCharAt8 & 8191;
                int i50 = 13;
                while (true) {
                    i8 = i48 + 1;
                    cCharAt3 = strZzd.charAt(i48);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt3 & 8191) << i50;
                    i50 += 13;
                    i48 = i8;
                }
                iCharAt8 = i49 | (cCharAt3 << i50);
                i48 = i8;
            }
            int i51 = i48 + 1;
            int iCharAt9 = strZzd.charAt(i48);
            if (iCharAt9 >= 55296) {
                int i52 = iCharAt9 & 8191;
                int i53 = 13;
                while (true) {
                    i7 = i51 + 1;
                    cCharAt2 = strZzd.charAt(i51);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt2 & 8191) << i53;
                    i53 += 13;
                    i51 = i7;
                }
                iCharAt9 = i52 | (cCharAt2 << i53);
                i51 = i7;
            }
            int i54 = i51 + 1;
            iCharAt3 = strZzd.charAt(i51);
            if (iCharAt3 >= 55296) {
                int i55 = iCharAt3 & 8191;
                int i56 = 13;
                while (true) {
                    i6 = i54 + 1;
                    cCharAt = strZzd.charAt(i54);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i55 |= (cCharAt & 8191) << i56;
                    i56 += 13;
                    i54 = i6;
                }
                iCharAt3 = i55 | (cCharAt << i56);
                i54 = i6;
            }
            iArr = new int[iCharAt3 + iCharAt8 + iCharAt9];
            i2 = iCharAt5 + iCharAt5 + iCharAt6;
            i3 = iCharAt5;
            i30 = i54;
            int i57 = iCharAt8;
            i4 = iCharAt7;
            i5 = i57;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzeoVar.zze();
        Class<?> cls2 = zzeoVar.zzb().getClass();
        int[] iArr3 = new int[iCharAt2 * 3];
        Object[] objArr2 = new Object[iCharAt2 + iCharAt2];
        int i58 = iCharAt3 + i5;
        int i59 = iCharAt3;
        int i60 = i58;
        int i61 = 0;
        int i62 = 0;
        while (i30 < length) {
            int i63 = i30 + 1;
            int iCharAt10 = strZzd.charAt(i30);
            if (iCharAt10 >= c) {
                int i64 = iCharAt10 & 8191;
                int i65 = i63;
                int i66 = 13;
                while (true) {
                    i27 = i65 + 1;
                    cCharAt12 = strZzd.charAt(i65);
                    if (cCharAt12 < c) {
                        break;
                    }
                    i64 |= (cCharAt12 & 8191) << i66;
                    i66 += 13;
                    i65 = i27;
                }
                iCharAt10 = i64 | (cCharAt12 << i66);
                i14 = i27;
            } else {
                i14 = i63;
            }
            int i67 = i14 + 1;
            int iCharAt11 = strZzd.charAt(i14);
            if (iCharAt11 >= c) {
                int i68 = iCharAt11 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i26 = i69 + 1;
                    cCharAt11 = strZzd.charAt(i69);
                    i15 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i68 |= (cCharAt11 & 8191) << i70;
                    i70 += 13;
                    i69 = i26;
                    length = i15;
                }
                iCharAt11 = i68 | (cCharAt11 << i70);
                i16 = i26;
            } else {
                i15 = length;
                i16 = i67;
            }
            int i71 = iCharAt11 & 255;
            int i72 = iCharAt3;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i62] = i61;
                i62++;
            }
            if (i71 >= 51) {
                int i73 = i16 + 1;
                int iCharAt12 = strZzd.charAt(i16);
                if (iCharAt12 >= 55296) {
                    int i74 = iCharAt12 & 8191;
                    int i75 = i73;
                    int i76 = 13;
                    while (true) {
                        i25 = i75 + 1;
                        cCharAt10 = strZzd.charAt(i75);
                        i18 = i4;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i74 |= (cCharAt10 & 8191) << i76;
                        i76 += 13;
                        i75 = i25;
                        i4 = i18;
                    }
                    iCharAt12 = i74 | (cCharAt10 << i76);
                    i23 = i25;
                } else {
                    i18 = i4;
                    i23 = i73;
                }
                int i77 = i71 - 51;
                i20 = i23;
                if (i77 == 9 || i77 == 17) {
                    int i78 = i61 / 3;
                    i24 = i2 + 1;
                    objArr2[i78 + i78 + 1] = objArrZze[i2];
                } else {
                    if (i77 == 12 && !z) {
                        int i79 = i61 / 3;
                        i24 = i2 + 1;
                        objArr2[i79 + i79 + 1] = objArrZze[i2];
                    }
                    int i80 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i80];
                    if (obj instanceof Field) {
                        fieldZzj2 = zzj(cls2, (String) obj);
                        objArrZze[i80] = fieldZzj2;
                    } else {
                        fieldZzj2 = (Field) obj;
                    }
                    iArr2 = iArr3;
                    i17 = iCharAt;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzj2);
                    int i81 = i80 + 1;
                    obj2 = objArrZze[i81];
                    if (obj2 instanceof Field) {
                        fieldZzj3 = zzj(cls2, (String) obj2);
                        objArrZze[i81] = fieldZzj3;
                    } else {
                        fieldZzj3 = (Field) obj2;
                    }
                    int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzj3);
                    str = strZzd;
                    cls = cls2;
                    iObjectFieldOffset2 = iObjectFieldOffset4;
                    objArr = objArr2;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i21 = 0;
                }
                i2 = i24;
                int i802 = iCharAt12 + iCharAt12;
                obj = objArrZze[i802];
                if (obj instanceof Field) {
                }
                iArr2 = iArr3;
                i17 = iCharAt;
                int iObjectFieldOffset32 = (int) unsafe.objectFieldOffset(fieldZzj2);
                int i812 = i802 + 1;
                obj2 = objArrZze[i812];
                if (obj2 instanceof Field) {
                }
                int iObjectFieldOffset42 = (int) unsafe.objectFieldOffset(fieldZzj3);
                str = strZzd;
                cls = cls2;
                iObjectFieldOffset2 = iObjectFieldOffset42;
                objArr = objArr2;
                iObjectFieldOffset = iObjectFieldOffset32;
                i21 = 0;
            } else {
                iArr2 = iArr3;
                i17 = iCharAt;
                i18 = i4;
                int i82 = i2 + 1;
                Field fieldZzj4 = zzj(cls2, (String) objArrZze[i2]);
                if (i71 == 9 || i71 == 17) {
                    int i83 = i61 / 3;
                    objArr2[i83 + i83 + 1] = fieldZzj4.getType();
                } else {
                    if (i71 == 27 || i71 == 49) {
                        int i84 = i61 / 3;
                        i22 = i82 + 1;
                        objArr2[i84 + i84 + 1] = objArrZze[i82];
                    } else if (i71 == 12 || i71 == 30 || i71 == 44) {
                        if (!z) {
                            int i85 = i61 / 3;
                            i22 = i82 + 1;
                            objArr2[i85 + i85 + 1] = objArrZze[i82];
                        }
                    } else if (i71 == 50) {
                        int i86 = i59 + 1;
                        iArr[i59] = i61;
                        int i87 = i61 / 3;
                        int i88 = i87 + i87;
                        int i89 = i82 + 1;
                        objArr2[i88] = objArrZze[i82];
                        if ((iCharAt11 & 2048) != 0) {
                            i82 = i89 + 1;
                            objArr2[i88 + 1] = objArrZze[i89];
                            i59 = i86;
                        } else {
                            i59 = i86;
                            i19 = i89;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                            objArr = objArr2;
                            if ((iCharAt11 & 4096) != 4096 || i71 > 17) {
                                str = strZzd;
                                cls = cls2;
                                i20 = i16;
                                iObjectFieldOffset2 = 1048575;
                                i21 = 0;
                            } else {
                                int i90 = i16 + 1;
                                int iCharAt13 = strZzd.charAt(i16);
                                if (iCharAt13 >= 55296) {
                                    int i91 = iCharAt13 & 8191;
                                    int i92 = 13;
                                    while (true) {
                                        i20 = i90 + 1;
                                        cCharAt9 = strZzd.charAt(i90);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i91 |= (cCharAt9 & 8191) << i92;
                                        i92 += 13;
                                        i90 = i20;
                                    }
                                    iCharAt13 = i91 | (cCharAt9 << i92);
                                } else {
                                    i20 = i90;
                                }
                                int i93 = i3 + i3 + (iCharAt13 / 32);
                                Object obj3 = objArrZze[i93];
                                str = strZzd;
                                if (obj3 instanceof Field) {
                                    fieldZzj = (Field) obj3;
                                } else {
                                    fieldZzj = zzj(cls2, (String) obj3);
                                    objArrZze[i93] = fieldZzj;
                                }
                                cls = cls2;
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzj);
                                i21 = iCharAt13 % 32;
                            }
                            if (i71 >= 18 && i71 <= 49) {
                                iArr[i60] = iObjectFieldOffset;
                                i60++;
                            }
                            i2 = i19;
                        }
                    }
                    i19 = i22;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                    objArr = objArr2;
                    if ((iCharAt11 & 4096) != 4096) {
                        str = strZzd;
                        cls = cls2;
                        i20 = i16;
                        iObjectFieldOffset2 = 1048575;
                        i21 = 0;
                        if (i71 >= 18) {
                            iArr[i60] = iObjectFieldOffset;
                            i60++;
                        }
                        i2 = i19;
                    }
                }
                i19 = i82;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzj4);
                objArr = objArr2;
                if ((iCharAt11 & 4096) != 4096) {
                }
            }
            int i94 = i61 + 1;
            iArr2[i61] = iCharAt10;
            int i95 = i94 + 1;
            iArr2[i94] = ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? PKIFailureInfo.duplicateCertReq : 0) | (i71 << 20) | iObjectFieldOffset;
            i61 = i95 + 1;
            iArr2[i95] = (i21 << 20) | iObjectFieldOffset2;
            cls2 = cls;
            iCharAt = i17;
            iCharAt3 = i72;
            i30 = i20;
            length = i15;
            objArr2 = objArr;
            strZzd = str;
            iArr3 = iArr2;
            i4 = i18;
            c = 55296;
        }
        return new zzeh<>(iArr3, objArr2, iCharAt, i4, zzeoVar.zzb(), z, false, iArr, iCharAt3, i58, zzejVar, zzdsVar, zzfdVar, zzcqVar, zzdzVar, null);
    }

    private static Field zzj(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(string);
            throw new RuntimeException(sb.toString());
        }
    }

    private final void zzk(T t, T t2, int i) {
        long jZzr = zzr(i) & 1048575;
        if (zzB(t2, i)) {
            Object objZzn = zzfn.zzn(t, jZzr);
            Object objZzn2 = zzfn.zzn(t2, jZzr);
            if (objZzn != null && objZzn2 != null) {
                zzfn.zzo(t, jZzr, zzdh.zzi(objZzn, objZzn2));
                zzC(t, i);
            } else if (objZzn2 != null) {
                zzfn.zzo(t, jZzr, objZzn2);
                zzC(t, i);
            }
        }
    }

    private final void zzl(T t, T t2, int i) {
        int iZzr = zzr(i);
        int i2 = this.zzc[i];
        long j = iZzr & 1048575;
        if (zzD(t2, i2, i)) {
            Object objZzn = zzD(t, i2, i) ? zzfn.zzn(t, j) : null;
            Object objZzn2 = zzfn.zzn(t2, j);
            if (objZzn != null && objZzn2 != null) {
                zzfn.zzo(t, j, zzdh.zzi(objZzn, objZzn2));
                zzE(t, i2, i);
            } else if (objZzn2 != null) {
                zzfn.zzo(t, j, objZzn2);
                zzE(t, i2, i);
            }
        }
    }

    private final int zzm(T t) {
        int i;
        int iZzw;
        int iZzw2;
        int iZzw3;
        int iZzx;
        int iZzw4;
        int iZzv;
        int iZzw5;
        int iZzw6;
        int iZzc;
        int iZzw7;
        int iZzw8;
        int iZzu;
        int iZzw9;
        int i2;
        Unsafe unsafe = zzb;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        for (int i6 = 0; i6 < this.zzc.length; i6 += 3) {
            int iZzr = zzr(i6);
            int i7 = this.zzc[i6];
            int iZzt = zzt(iZzr);
            if (iZzt <= 17) {
                int i8 = this.zzc[i6 + 2];
                int i9 = i8 & 1048575;
                i = 1 << (i8 >>> 20);
                if (i9 != i5) {
                    i4 = unsafe.getInt(t, i9);
                    i5 = i9;
                }
            } else {
                i = 0;
            }
            long j = iZzr & 1048575;
            switch (iZzt) {
                case 0:
                    if ((i4 & i) != 0) {
                        iZzw = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw + 8;
                        i3 += iZzw8;
                    }
                    break;
                case 1:
                    if ((i4 & i) != 0) {
                        iZzw2 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw2 + 4;
                        i3 += iZzw8;
                    }
                    break;
                case 2:
                    if ((i4 & i) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        iZzw3 = zzcm.zzw(i7 << 3);
                        iZzx = zzcm.zzx(j2);
                        iZzw8 = iZzw3 + iZzx;
                        i3 += iZzw8;
                    }
                    break;
                case 3:
                    if ((i4 & i) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        iZzw3 = zzcm.zzw(i7 << 3);
                        iZzx = zzcm.zzx(j3);
                        iZzw8 = iZzw3 + iZzx;
                        i3 += iZzw8;
                    }
                    break;
                case 4:
                    if ((i4 & i) != 0) {
                        int i10 = unsafe.getInt(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzv(i10);
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 5:
                    if ((i4 & i) != 0) {
                        iZzw = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw + 8;
                        i3 += iZzw8;
                    }
                    break;
                case 6:
                    if ((i4 & i) != 0) {
                        iZzw2 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw2 + 4;
                        i3 += iZzw8;
                    }
                    break;
                case 7:
                    if ((i4 & i) != 0) {
                        iZzw5 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw5 + 1;
                        i3 += iZzw8;
                    }
                    break;
                case 8:
                    if ((i4 & i) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzcf) {
                            iZzw6 = zzcm.zzw(i7 << 3);
                            iZzc = ((zzcf) object).zzc();
                            iZzw7 = zzcm.zzw(iZzc);
                            i2 = iZzw6 + iZzw7 + iZzc;
                            i3 += i2;
                        } else {
                            iZzw4 = zzcm.zzw(i7 << 3);
                            iZzv = zzcm.zzy((String) object);
                            i2 = iZzw4 + iZzv;
                            i3 += i2;
                        }
                    }
                    break;
                case 9:
                    if ((i4 & i) != 0) {
                        iZzw8 = zzer.zzw(i7, unsafe.getObject(t, j), zzo(i6));
                        i3 += iZzw8;
                    }
                    break;
                case 10:
                    if ((i4 & i) != 0) {
                        zzcf zzcfVar = (zzcf) unsafe.getObject(t, j);
                        iZzw6 = zzcm.zzw(i7 << 3);
                        iZzc = zzcfVar.zzc();
                        iZzw7 = zzcm.zzw(iZzc);
                        i2 = iZzw6 + iZzw7 + iZzc;
                        i3 += i2;
                    }
                    break;
                case 11:
                    if ((i4 & i) != 0) {
                        int i11 = unsafe.getInt(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzw(i11);
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 12:
                    if ((i4 & i) != 0) {
                        int i12 = unsafe.getInt(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzv(i12);
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 13:
                    if ((i4 & i) != 0) {
                        iZzw2 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw2 + 4;
                        i3 += iZzw8;
                    }
                    break;
                case 14:
                    if ((i4 & i) != 0) {
                        iZzw = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw + 8;
                        i3 += iZzw8;
                    }
                    break;
                case 15:
                    if ((i4 & i) != 0) {
                        int i13 = unsafe.getInt(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzw((i13 >> 31) ^ (i13 + i13));
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 16:
                    if ((i4 & i) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzx((j4 >> 63) ^ (j4 + j4));
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 17:
                    if ((i4 & i) != 0) {
                        iZzw8 = zzcm.zzE(i7, (zzee) unsafe.getObject(t, j), zzo(i6));
                        i3 += iZzw8;
                    }
                    break;
                case 18:
                    iZzw8 = zzer.zzs(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 19:
                    iZzw8 = zzer.zzq(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 20:
                    iZzw8 = zzer.zzc(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 21:
                    iZzw8 = zzer.zze(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 22:
                    iZzw8 = zzer.zzk(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 23:
                    iZzw8 = zzer.zzs(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 24:
                    iZzw8 = zzer.zzq(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 25:
                    iZzw8 = zzer.zzu(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 26:
                    iZzw8 = zzer.zzv(i7, (List) unsafe.getObject(t, j));
                    i3 += iZzw8;
                    break;
                case 27:
                    iZzw8 = zzer.zzx(i7, (List) unsafe.getObject(t, j), zzo(i6));
                    i3 += iZzw8;
                    break;
                case 28:
                    iZzw8 = zzer.zzy(i7, (List) unsafe.getObject(t, j));
                    i3 += iZzw8;
                    break;
                case 29:
                    iZzw8 = zzer.zzm(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 30:
                    iZzw8 = zzer.zzi(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 31:
                    iZzw8 = zzer.zzq(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 32:
                    iZzw8 = zzer.zzs(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 33:
                    iZzw8 = zzer.zzo(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 34:
                    iZzw8 = zzer.zzg(i7, (List) unsafe.getObject(t, j), false);
                    i3 += iZzw8;
                    break;
                case 35:
                    iZzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 36:
                    iZzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 37:
                    iZzv = zzer.zzb((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 38:
                    iZzv = zzer.zzd((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 39:
                    iZzv = zzer.zzj((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 40:
                    iZzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 41:
                    iZzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 42:
                    iZzv = zzer.zzt((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 43:
                    iZzv = zzer.zzl((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 44:
                    iZzv = zzer.zzh((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 45:
                    iZzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 46:
                    iZzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 47:
                    iZzv = zzer.zzn((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 48:
                    iZzv = zzer.zzf((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i7);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 49:
                    iZzw8 = zzer.zzz(i7, (List) unsafe.getObject(t, j), zzo(i6));
                    i3 += iZzw8;
                    break;
                case 50:
                    zzdz.zza(i7, unsafe.getObject(t, j), zzp(i6));
                    break;
                case 51:
                    if (zzD(t, i7, i6)) {
                        iZzw = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw + 8;
                        i3 += iZzw8;
                    }
                    break;
                case 52:
                    if (zzD(t, i7, i6)) {
                        iZzw2 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw2 + 4;
                        i3 += iZzw8;
                    }
                    break;
                case 53:
                    if (zzD(t, i7, i6)) {
                        long jZzx = zzx(t, j);
                        iZzw3 = zzcm.zzw(i7 << 3);
                        iZzx = zzcm.zzx(jZzx);
                        iZzw8 = iZzw3 + iZzx;
                        i3 += iZzw8;
                    }
                    break;
                case 54:
                    if (zzD(t, i7, i6)) {
                        long jZzx2 = zzx(t, j);
                        iZzw3 = zzcm.zzw(i7 << 3);
                        iZzx = zzcm.zzx(jZzx2);
                        iZzw8 = iZzw3 + iZzx;
                        i3 += iZzw8;
                    }
                    break;
                case 55:
                    if (zzD(t, i7, i6)) {
                        int iZzw10 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzv(iZzw10);
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 56:
                    if (zzD(t, i7, i6)) {
                        iZzw = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw + 8;
                        i3 += iZzw8;
                    }
                    break;
                case 57:
                    if (zzD(t, i7, i6)) {
                        iZzw2 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw2 + 4;
                        i3 += iZzw8;
                    }
                    break;
                case 58:
                    if (zzD(t, i7, i6)) {
                        iZzw5 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw5 + 1;
                        i3 += iZzw8;
                    }
                    break;
                case 59:
                    if (zzD(t, i7, i6)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzcf) {
                            iZzw6 = zzcm.zzw(i7 << 3);
                            iZzc = ((zzcf) object2).zzc();
                            iZzw7 = zzcm.zzw(iZzc);
                            i2 = iZzw6 + iZzw7 + iZzc;
                            i3 += i2;
                        } else {
                            iZzw4 = zzcm.zzw(i7 << 3);
                            iZzv = zzcm.zzy((String) object2);
                            i2 = iZzw4 + iZzv;
                            i3 += i2;
                        }
                    }
                    break;
                case 60:
                    if (zzD(t, i7, i6)) {
                        iZzw8 = zzer.zzw(i7, unsafe.getObject(t, j), zzo(i6));
                        i3 += iZzw8;
                    }
                    break;
                case 61:
                    if (zzD(t, i7, i6)) {
                        zzcf zzcfVar2 = (zzcf) unsafe.getObject(t, j);
                        iZzw6 = zzcm.zzw(i7 << 3);
                        iZzc = zzcfVar2.zzc();
                        iZzw7 = zzcm.zzw(iZzc);
                        i2 = iZzw6 + iZzw7 + iZzc;
                        i3 += i2;
                    }
                    break;
                case 62:
                    if (zzD(t, i7, i6)) {
                        int iZzw11 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzw(iZzw11);
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 63:
                    if (zzD(t, i7, i6)) {
                        int iZzw12 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzv(iZzw12);
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 64:
                    if (zzD(t, i7, i6)) {
                        iZzw2 = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw2 + 4;
                        i3 += iZzw8;
                    }
                    break;
                case 65:
                    if (zzD(t, i7, i6)) {
                        iZzw = zzcm.zzw(i7 << 3);
                        iZzw8 = iZzw + 8;
                        i3 += iZzw8;
                    }
                    break;
                case 66:
                    if (zzD(t, i7, i6)) {
                        int iZzw13 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzw((iZzw13 >> 31) ^ (iZzw13 + iZzw13));
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 67:
                    if (zzD(t, i7, i6)) {
                        long jZzx3 = zzx(t, j);
                        iZzw4 = zzcm.zzw(i7 << 3);
                        iZzv = zzcm.zzx((jZzx3 >> 63) ^ (jZzx3 + jZzx3));
                        i2 = iZzw4 + iZzv;
                        i3 += i2;
                    }
                    break;
                case 68:
                    if (zzD(t, i7, i6)) {
                        iZzw8 = zzcm.zzE(i7, (zzee) unsafe.getObject(t, j), zzo(i6));
                        i3 += iZzw8;
                    }
                    break;
            }
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        int iZzf = i3 + zzfdVar.zzf(zzfdVar.zzb(t));
        if (!this.zzf) {
            return iZzf;
        }
        this.zzm.zzb(t);
        throw null;
    }

    private final int zzn(T t) {
        int iZzw;
        int iZzw2;
        int iZzw3;
        int iZzx;
        int iZzw4;
        int iZzv;
        int iZzw5;
        int iZzw6;
        int iZzc;
        int iZzw7;
        int iZzw8;
        int iZzu;
        int iZzw9;
        int i;
        Unsafe unsafe = zzb;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzc.length; i3 += 3) {
            int iZzr = zzr(i3);
            int iZzt = zzt(iZzr);
            int i4 = this.zzc[i3];
            long j = iZzr & 1048575;
            if (iZzt >= zzcv.DOUBLE_LIST_PACKED.zza() && iZzt <= zzcv.SINT64_LIST_PACKED.zza()) {
                int i5 = this.zzc[i3 + 2];
            }
            switch (iZzt) {
                case 0:
                    if (zzB(t, i3)) {
                        iZzw = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw + 8;
                        i2 += iZzw8;
                    }
                    break;
                case 1:
                    if (zzB(t, i3)) {
                        iZzw2 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw2 + 4;
                        i2 += iZzw8;
                    }
                    break;
                case 2:
                    if (zzB(t, i3)) {
                        long jZzf = zzfn.zzf(t, j);
                        iZzw3 = zzcm.zzw(i4 << 3);
                        iZzx = zzcm.zzx(jZzf);
                        i2 += iZzw3 + iZzx;
                    }
                    break;
                case 3:
                    if (zzB(t, i3)) {
                        long jZzf2 = zzfn.zzf(t, j);
                        iZzw3 = zzcm.zzw(i4 << 3);
                        iZzx = zzcm.zzx(jZzf2);
                        i2 += iZzw3 + iZzx;
                    }
                    break;
                case 4:
                    if (zzB(t, i3)) {
                        int iZzd = zzfn.zzd(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzv(iZzd);
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 5:
                    if (zzB(t, i3)) {
                        iZzw = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw + 8;
                        i2 += iZzw8;
                    }
                    break;
                case 6:
                    if (zzB(t, i3)) {
                        iZzw2 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw2 + 4;
                        i2 += iZzw8;
                    }
                    break;
                case 7:
                    if (zzB(t, i3)) {
                        iZzw5 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw5 + 1;
                        i2 += iZzw8;
                    }
                    break;
                case 8:
                    if (zzB(t, i3)) {
                        Object objZzn = zzfn.zzn(t, j);
                        if (objZzn instanceof zzcf) {
                            iZzw6 = zzcm.zzw(i4 << 3);
                            iZzc = ((zzcf) objZzn).zzc();
                            iZzw7 = zzcm.zzw(iZzc);
                            i = iZzw6 + iZzw7 + iZzc;
                            i2 += i;
                        } else {
                            iZzw4 = zzcm.zzw(i4 << 3);
                            iZzv = zzcm.zzy((String) objZzn);
                            i = iZzw4 + iZzv;
                            i2 += i;
                        }
                    }
                    break;
                case 9:
                    if (zzB(t, i3)) {
                        iZzw8 = zzer.zzw(i4, zzfn.zzn(t, j), zzo(i3));
                        i2 += iZzw8;
                    }
                    break;
                case 10:
                    if (zzB(t, i3)) {
                        zzcf zzcfVar = (zzcf) zzfn.zzn(t, j);
                        iZzw6 = zzcm.zzw(i4 << 3);
                        iZzc = zzcfVar.zzc();
                        iZzw7 = zzcm.zzw(iZzc);
                        i = iZzw6 + iZzw7 + iZzc;
                        i2 += i;
                    }
                    break;
                case 11:
                    if (zzB(t, i3)) {
                        int iZzd2 = zzfn.zzd(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzw(iZzd2);
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 12:
                    if (zzB(t, i3)) {
                        int iZzd3 = zzfn.zzd(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzv(iZzd3);
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 13:
                    if (zzB(t, i3)) {
                        iZzw2 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw2 + 4;
                        i2 += iZzw8;
                    }
                    break;
                case 14:
                    if (zzB(t, i3)) {
                        iZzw = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw + 8;
                        i2 += iZzw8;
                    }
                    break;
                case 15:
                    if (zzB(t, i3)) {
                        int iZzd4 = zzfn.zzd(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzw((iZzd4 >> 31) ^ (iZzd4 + iZzd4));
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 16:
                    if (zzB(t, i3)) {
                        long jZzf3 = zzfn.zzf(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzx((jZzf3 >> 63) ^ (jZzf3 + jZzf3));
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 17:
                    if (zzB(t, i3)) {
                        iZzw8 = zzcm.zzE(i4, (zzee) zzfn.zzn(t, j), zzo(i3));
                        i2 += iZzw8;
                    }
                    break;
                case 18:
                    iZzw8 = zzer.zzs(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 19:
                    iZzw8 = zzer.zzq(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 20:
                    iZzw8 = zzer.zzc(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 21:
                    iZzw8 = zzer.zze(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 22:
                    iZzw8 = zzer.zzk(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 23:
                    iZzw8 = zzer.zzs(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 24:
                    iZzw8 = zzer.zzq(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 25:
                    iZzw8 = zzer.zzu(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 26:
                    iZzw8 = zzer.zzv(i4, (List) zzfn.zzn(t, j));
                    i2 += iZzw8;
                    break;
                case 27:
                    iZzw8 = zzer.zzx(i4, (List) zzfn.zzn(t, j), zzo(i3));
                    i2 += iZzw8;
                    break;
                case 28:
                    iZzw8 = zzer.zzy(i4, (List) zzfn.zzn(t, j));
                    i2 += iZzw8;
                    break;
                case 29:
                    iZzw8 = zzer.zzm(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 30:
                    iZzw8 = zzer.zzi(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 31:
                    iZzw8 = zzer.zzq(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 32:
                    iZzw8 = zzer.zzs(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 33:
                    iZzw8 = zzer.zzo(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 34:
                    iZzw8 = zzer.zzg(i4, (List) zzfn.zzn(t, j), false);
                    i2 += iZzw8;
                    break;
                case 35:
                    iZzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 36:
                    iZzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 37:
                    iZzv = zzer.zzb((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 38:
                    iZzv = zzer.zzd((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 39:
                    iZzv = zzer.zzj((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 40:
                    iZzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 41:
                    iZzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 42:
                    iZzv = zzer.zzt((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 43:
                    iZzv = zzer.zzl((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 44:
                    iZzv = zzer.zzh((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 45:
                    iZzv = zzer.zzp((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 46:
                    iZzv = zzer.zzr((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 47:
                    iZzv = zzer.zzn((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 48:
                    iZzv = zzer.zzf((List) unsafe.getObject(t, j));
                    if (iZzv > 0) {
                        iZzu = zzcm.zzu(i4);
                        iZzw9 = zzcm.zzw(iZzv);
                        iZzw4 = iZzu + iZzw9;
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 49:
                    iZzw8 = zzer.zzz(i4, (List) zzfn.zzn(t, j), zzo(i3));
                    i2 += iZzw8;
                    break;
                case 50:
                    zzdz.zza(i4, zzfn.zzn(t, j), zzp(i3));
                    break;
                case 51:
                    if (zzD(t, i4, i3)) {
                        iZzw = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw + 8;
                        i2 += iZzw8;
                    }
                    break;
                case 52:
                    if (zzD(t, i4, i3)) {
                        iZzw2 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw2 + 4;
                        i2 += iZzw8;
                    }
                    break;
                case 53:
                    if (zzD(t, i4, i3)) {
                        long jZzx = zzx(t, j);
                        iZzw3 = zzcm.zzw(i4 << 3);
                        iZzx = zzcm.zzx(jZzx);
                        i2 += iZzw3 + iZzx;
                    }
                    break;
                case 54:
                    if (zzD(t, i4, i3)) {
                        long jZzx2 = zzx(t, j);
                        iZzw3 = zzcm.zzw(i4 << 3);
                        iZzx = zzcm.zzx(jZzx2);
                        i2 += iZzw3 + iZzx;
                    }
                    break;
                case 55:
                    if (zzD(t, i4, i3)) {
                        int iZzw10 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzv(iZzw10);
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 56:
                    if (zzD(t, i4, i3)) {
                        iZzw = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw + 8;
                        i2 += iZzw8;
                    }
                    break;
                case 57:
                    if (zzD(t, i4, i3)) {
                        iZzw2 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw2 + 4;
                        i2 += iZzw8;
                    }
                    break;
                case 58:
                    if (zzD(t, i4, i3)) {
                        iZzw5 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw5 + 1;
                        i2 += iZzw8;
                    }
                    break;
                case 59:
                    if (zzD(t, i4, i3)) {
                        Object objZzn2 = zzfn.zzn(t, j);
                        if (objZzn2 instanceof zzcf) {
                            iZzw6 = zzcm.zzw(i4 << 3);
                            iZzc = ((zzcf) objZzn2).zzc();
                            iZzw7 = zzcm.zzw(iZzc);
                            i = iZzw6 + iZzw7 + iZzc;
                            i2 += i;
                        } else {
                            iZzw4 = zzcm.zzw(i4 << 3);
                            iZzv = zzcm.zzy((String) objZzn2);
                            i = iZzw4 + iZzv;
                            i2 += i;
                        }
                    }
                    break;
                case 60:
                    if (zzD(t, i4, i3)) {
                        iZzw8 = zzer.zzw(i4, zzfn.zzn(t, j), zzo(i3));
                        i2 += iZzw8;
                    }
                    break;
                case 61:
                    if (zzD(t, i4, i3)) {
                        zzcf zzcfVar2 = (zzcf) zzfn.zzn(t, j);
                        iZzw6 = zzcm.zzw(i4 << 3);
                        iZzc = zzcfVar2.zzc();
                        iZzw7 = zzcm.zzw(iZzc);
                        i = iZzw6 + iZzw7 + iZzc;
                        i2 += i;
                    }
                    break;
                case 62:
                    if (zzD(t, i4, i3)) {
                        int iZzw11 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzw(iZzw11);
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 63:
                    if (zzD(t, i4, i3)) {
                        int iZzw12 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzv(iZzw12);
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 64:
                    if (zzD(t, i4, i3)) {
                        iZzw2 = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw2 + 4;
                        i2 += iZzw8;
                    }
                    break;
                case 65:
                    if (zzD(t, i4, i3)) {
                        iZzw = zzcm.zzw(i4 << 3);
                        iZzw8 = iZzw + 8;
                        i2 += iZzw8;
                    }
                    break;
                case 66:
                    if (zzD(t, i4, i3)) {
                        int iZzw13 = zzw(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzw((iZzw13 >> 31) ^ (iZzw13 + iZzw13));
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 67:
                    if (zzD(t, i4, i3)) {
                        long jZzx3 = zzx(t, j);
                        iZzw4 = zzcm.zzw(i4 << 3);
                        iZzv = zzcm.zzx((jZzx3 >> 63) ^ (jZzx3 + jZzx3));
                        i = iZzw4 + iZzv;
                        i2 += i;
                    }
                    break;
                case 68:
                    if (zzD(t, i4, i3)) {
                        iZzw8 = zzcm.zzE(i4, (zzee) zzfn.zzn(t, j), zzo(i3));
                        i2 += iZzw8;
                    }
                    break;
            }
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        return i2 + zzfdVar.zzf(zzfdVar.zzb(t));
    }

    private final zzep zzo(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzep zzepVar = (zzep) this.zzd[i3];
        if (zzepVar != null) {
            return zzepVar;
        }
        zzep<T> zzepVarZzb = zzem.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzepVarZzb;
        return zzepVarZzb;
    }

    private final Object zzp(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzq(Object obj, int i, zzep zzepVar) {
        return zzepVar.zzf(zzfn.zzn(obj, i & 1048575));
    }

    private final int zzr(int i) {
        return this.zzc[i + 1];
    }

    private final int zzs(int i) {
        return this.zzc[i + 2];
    }

    private static int zzt(int i) {
        return (i >>> 20) & 255;
    }

    private static <T> double zzu(T t, long j) {
        return ((Double) zzfn.zzn(t, j)).doubleValue();
    }

    private static <T> float zzv(T t, long j) {
        return ((Float) zzfn.zzn(t, j)).floatValue();
    }

    private static <T> int zzw(T t, long j) {
        return ((Integer) zzfn.zzn(t, j)).intValue();
    }

    private static <T> long zzx(T t, long j) {
        return ((Long) zzfn.zzn(t, j)).longValue();
    }

    private static <T> boolean zzy(T t, long j) {
        return ((Boolean) zzfn.zzn(t, j)).booleanValue();
    }

    private final boolean zzz(T t, T t2, int i) {
        return zzB(t, i) == zzB(t2, i);
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final boolean zza(T t, T t2) {
        boolean zZzD;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzr = zzr(i);
            long j = iZzr & 1048575;
            switch (zzt(iZzr)) {
                case 0:
                    if (!zzz(t, t2, i) || Double.doubleToLongBits(zzfn.zzl(t, j)) != Double.doubleToLongBits(zzfn.zzl(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzz(t, t2, i) || Float.floatToIntBits(zzfn.zzj(t, j)) != Float.floatToIntBits(zzfn.zzj(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzz(t, t2, i) || zzfn.zzf(t, j) != zzfn.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzz(t, t2, i) || zzfn.zzf(t, j) != zzfn.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzz(t, t2, i) || zzfn.zzd(t, j) != zzfn.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzz(t, t2, i) || zzfn.zzf(t, j) != zzfn.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzz(t, t2, i) || zzfn.zzd(t, j) != zzfn.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzz(t, t2, i) || zzfn.zzh(t, j) != zzfn.zzh(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzz(t, t2, i) || !zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzz(t, t2, i) || !zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzz(t, t2, i) || !zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzz(t, t2, i) || zzfn.zzd(t, j) != zzfn.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzz(t, t2, i) || zzfn.zzd(t, j) != zzfn.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzz(t, t2, i) || zzfn.zzd(t, j) != zzfn.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzz(t, t2, i) || zzfn.zzf(t, j) != zzfn.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzz(t, t2, i) || zzfn.zzd(t, j) != zzfn.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzz(t, t2, i) || zzfn.zzf(t, j) != zzfn.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzz(t, t2, i) || !zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zZzD = zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j));
                    break;
                case 50:
                    zZzD = zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzs = zzs(i) & 1048575;
                    if (zzfn.zzd(t, jZzs) != zzfn.zzd(t2, jZzs) || !zzer.zzD(zzfn.zzn(t, j), zzfn.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    break;
            }
            if (!zZzD) {
                return false;
            }
        }
        if (!this.zzl.zzb(t).equals(this.zzl.zzb(t2))) {
            return false;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzm.zzb(t);
        this.zzm.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final int zzb(T t) {
        int i;
        int iZze;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzr = zzr(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzr;
            int iHashCode = 37;
            switch (zzt(iZzr)) {
                case 0:
                    i = i2 * 53;
                    iZze = zzdh.zze(Double.doubleToLongBits(zzfn.zzl(t, j)));
                    i2 = i + iZze;
                    break;
                case 1:
                    i = i2 * 53;
                    iZze = Float.floatToIntBits(zzfn.zzj(t, j));
                    i2 = i + iZze;
                    break;
                case 2:
                    i = i2 * 53;
                    iZze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + iZze;
                    break;
                case 3:
                    i = i2 * 53;
                    iZze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + iZze;
                    break;
                case 4:
                    i = i2 * 53;
                    iZze = zzfn.zzd(t, j);
                    i2 = i + iZze;
                    break;
                case 5:
                    i = i2 * 53;
                    iZze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + iZze;
                    break;
                case 6:
                    i = i2 * 53;
                    iZze = zzfn.zzd(t, j);
                    i2 = i + iZze;
                    break;
                case 7:
                    i = i2 * 53;
                    iZze = zzdh.zzf(zzfn.zzh(t, j));
                    i2 = i + iZze;
                    break;
                case 8:
                    i = i2 * 53;
                    iZze = ((String) zzfn.zzn(t, j)).hashCode();
                    i2 = i + iZze;
                    break;
                case 9:
                    Object objZzn = zzfn.zzn(t, j);
                    if (objZzn != null) {
                        iHashCode = objZzn.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZze = zzfn.zzn(t, j).hashCode();
                    i2 = i + iZze;
                    break;
                case 11:
                    i = i2 * 53;
                    iZze = zzfn.zzd(t, j);
                    i2 = i + iZze;
                    break;
                case 12:
                    i = i2 * 53;
                    iZze = zzfn.zzd(t, j);
                    i2 = i + iZze;
                    break;
                case 13:
                    i = i2 * 53;
                    iZze = zzfn.zzd(t, j);
                    i2 = i + iZze;
                    break;
                case 14:
                    i = i2 * 53;
                    iZze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + iZze;
                    break;
                case 15:
                    i = i2 * 53;
                    iZze = zzfn.zzd(t, j);
                    i2 = i + iZze;
                    break;
                case 16:
                    i = i2 * 53;
                    iZze = zzdh.zze(zzfn.zzf(t, j));
                    i2 = i + iZze;
                    break;
                case 17:
                    Object objZzn2 = zzfn.zzn(t, j);
                    if (objZzn2 != null) {
                        iHashCode = objZzn2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iZze = zzfn.zzn(t, j).hashCode();
                    i2 = i + iZze;
                    break;
                case 50:
                    i = i2 * 53;
                    iZze = zzfn.zzn(t, j).hashCode();
                    i2 = i + iZze;
                    break;
                case 51:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zze(Double.doubleToLongBits(zzu(t, j)));
                        i2 = i + iZze;
                    }
                    break;
                case 52:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = Float.floatToIntBits(zzv(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 53:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zze(zzx(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 54:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zze(zzx(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 55:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzw(t, j);
                        i2 = i + iZze;
                    }
                    break;
                case 56:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zze(zzx(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 57:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzw(t, j);
                        i2 = i + iZze;
                    }
                    break;
                case 58:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zzf(zzy(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 59:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = ((String) zzfn.zzn(t, j)).hashCode();
                        i2 = i + iZze;
                    }
                    break;
                case 60:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzfn.zzn(t, j).hashCode();
                        i2 = i + iZze;
                    }
                    break;
                case 61:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzfn.zzn(t, j).hashCode();
                        i2 = i + iZze;
                    }
                    break;
                case 62:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzw(t, j);
                        i2 = i + iZze;
                    }
                    break;
                case 63:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzw(t, j);
                        i2 = i + iZze;
                    }
                    break;
                case 64:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzw(t, j);
                        i2 = i + iZze;
                    }
                    break;
                case 65:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zze(zzx(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 66:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzw(t, j);
                        i2 = i + iZze;
                    }
                    break;
                case 67:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzdh.zze(zzx(t, j));
                        i2 = i + iZze;
                    }
                    break;
                case 68:
                    if (zzD(t, i4, i3)) {
                        i = i2 * 53;
                        iZze = zzfn.zzn(t, j).hashCode();
                        i2 = i + iZze;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzl.zzb(t).hashCode();
        if (!this.zzf) {
            return iHashCode2;
        }
        this.zzm.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final int zzd(T t) {
        return this.zzg ? zzn(t) : zzm(t);
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final void zze(T t) {
        int i;
        int i2 = this.zzi;
        while (true) {
            i = this.zzj;
            if (i2 >= i) {
                break;
            }
            long jZzr = zzr(this.zzh[i2]) & 1048575;
            Object objZzn = zzfn.zzn(t, jZzr);
            if (objZzn != null) {
                ((zzdy) objZzn).zzc();
                zzfn.zzo(t, jZzr, objZzn);
            }
            i2++;
        }
        int length = this.zzh.length;
        while (i < length) {
            this.zzk.zza(t, this.zzh[i]);
            i++;
        }
        this.zzl.zzc(t);
        if (this.zzf) {
            this.zzm.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    @Override // com.google.android.gms.internal.icing.zzep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzf(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.zzi) {
            int i6 = this.zzh[i5];
            int i7 = this.zzc[i6];
            int iZzr = zzr(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & iZzr) != 0 && !zzA(t, i6, i, i2, i10)) {
                return false;
            }
            int iZzt = zzt(iZzr);
            if (iZzt == 9 || iZzt == 17) {
                if (zzA(t, i6, i, i2, i10) && !zzq(t, iZzr, zzo(i6))) {
                    return false;
                }
            } else if (iZzt == 27) {
                List list = (List) zzfn.zzn(t, iZzr & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzep zzepVarZzo = zzo(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzepVarZzo.zzf(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (iZzt == 60 || iZzt == 68) {
                if (zzD(t, i7, i6) && !zzq(t, iZzr, zzo(i6))) {
                    return false;
                }
            } else if (iZzt != 49) {
                if (iZzt == 50 && !((zzdy) zzfn.zzn(t, iZzr & 1048575)).isEmpty()) {
                    throw null;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        if (!this.zzf) {
            return true;
        }
        this.zzm.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final void zzi(T t, zzcn zzcnVar) throws IOException {
        if (!this.zzg) {
            zzF(t, zzcnVar);
            return;
        }
        if (this.zzf) {
            this.zzm.zzb(t);
            throw null;
        }
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int iZzr = zzr(i);
            int i2 = this.zzc[i];
            switch (zzt(iZzr)) {
                case 0:
                    if (zzB(t, i)) {
                        zzcnVar.zzf(i2, zzfn.zzl(t, iZzr & 1048575));
                    }
                    break;
                case 1:
                    if (zzB(t, i)) {
                        zzcnVar.zze(i2, zzfn.zzj(t, iZzr & 1048575));
                    }
                    break;
                case 2:
                    if (zzB(t, i)) {
                        zzcnVar.zzc(i2, zzfn.zzf(t, iZzr & 1048575));
                    }
                    break;
                case 3:
                    if (zzB(t, i)) {
                        zzcnVar.zzh(i2, zzfn.zzf(t, iZzr & 1048575));
                    }
                    break;
                case 4:
                    if (zzB(t, i)) {
                        zzcnVar.zzi(i2, zzfn.zzd(t, iZzr & 1048575));
                    }
                    break;
                case 5:
                    if (zzB(t, i)) {
                        zzcnVar.zzj(i2, zzfn.zzf(t, iZzr & 1048575));
                    }
                    break;
                case 6:
                    if (zzB(t, i)) {
                        zzcnVar.zzk(i2, zzfn.zzd(t, iZzr & 1048575));
                    }
                    break;
                case 7:
                    if (zzB(t, i)) {
                        zzcnVar.zzl(i2, zzfn.zzh(t, iZzr & 1048575));
                    }
                    break;
                case 8:
                    if (zzB(t, i)) {
                        zzH(i2, zzfn.zzn(t, iZzr & 1048575), zzcnVar);
                    }
                    break;
                case 9:
                    if (zzB(t, i)) {
                        zzcnVar.zzr(i2, zzfn.zzn(t, iZzr & 1048575), zzo(i));
                    }
                    break;
                case 10:
                    if (zzB(t, i)) {
                        zzcnVar.zzn(i2, (zzcf) zzfn.zzn(t, iZzr & 1048575));
                    }
                    break;
                case 11:
                    if (zzB(t, i)) {
                        zzcnVar.zzo(i2, zzfn.zzd(t, iZzr & 1048575));
                    }
                    break;
                case 12:
                    if (zzB(t, i)) {
                        zzcnVar.zzg(i2, zzfn.zzd(t, iZzr & 1048575));
                    }
                    break;
                case 13:
                    if (zzB(t, i)) {
                        zzcnVar.zzb(i2, zzfn.zzd(t, iZzr & 1048575));
                    }
                    break;
                case 14:
                    if (zzB(t, i)) {
                        zzcnVar.zzd(i2, zzfn.zzf(t, iZzr & 1048575));
                    }
                    break;
                case 15:
                    if (zzB(t, i)) {
                        zzcnVar.zzp(i2, zzfn.zzd(t, iZzr & 1048575));
                    }
                    break;
                case 16:
                    if (zzB(t, i)) {
                        zzcnVar.zzq(i2, zzfn.zzf(t, iZzr & 1048575));
                    }
                    break;
                case 17:
                    if (zzB(t, i)) {
                        zzcnVar.zzs(i2, zzfn.zzn(t, iZzr & 1048575), zzo(i));
                    }
                    break;
                case 18:
                    zzer.zzH(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 19:
                    zzer.zzI(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 20:
                    zzer.zzJ(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 21:
                    zzer.zzK(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 22:
                    zzer.zzO(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 23:
                    zzer.zzM(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 24:
                    zzer.zzR(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 25:
                    zzer.zzU(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 26:
                    zzer.zzV(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar);
                    break;
                case 27:
                    zzer.zzX(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, zzo(i));
                    break;
                case 28:
                    zzer.zzW(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar);
                    break;
                case 29:
                    zzer.zzP(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 30:
                    zzer.zzT(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 31:
                    zzer.zzS(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 32:
                    zzer.zzN(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 33:
                    zzer.zzQ(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 34:
                    zzer.zzL(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, false);
                    break;
                case 35:
                    zzer.zzH(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 36:
                    zzer.zzI(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 37:
                    zzer.zzJ(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 38:
                    zzer.zzK(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 39:
                    zzer.zzO(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 40:
                    zzer.zzM(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 41:
                    zzer.zzR(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 42:
                    zzer.zzU(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 43:
                    zzer.zzP(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 44:
                    zzer.zzT(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 45:
                    zzer.zzS(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 46:
                    zzer.zzN(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 47:
                    zzer.zzQ(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 48:
                    zzer.zzL(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, true);
                    break;
                case 49:
                    zzer.zzY(this.zzc[i], (List) zzfn.zzn(t, iZzr & 1048575), zzcnVar, zzo(i));
                    break;
                case 50:
                    zzG(zzcnVar, i2, zzfn.zzn(t, iZzr & 1048575), i);
                    break;
                case 51:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzf(i2, zzu(t, iZzr & 1048575));
                    }
                    break;
                case 52:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zze(i2, zzv(t, iZzr & 1048575));
                    }
                    break;
                case 53:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzc(i2, zzx(t, iZzr & 1048575));
                    }
                    break;
                case 54:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzh(i2, zzx(t, iZzr & 1048575));
                    }
                    break;
                case 55:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzi(i2, zzw(t, iZzr & 1048575));
                    }
                    break;
                case 56:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzj(i2, zzx(t, iZzr & 1048575));
                    }
                    break;
                case 57:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzk(i2, zzw(t, iZzr & 1048575));
                    }
                    break;
                case 58:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzl(i2, zzy(t, iZzr & 1048575));
                    }
                    break;
                case 59:
                    if (zzD(t, i2, i)) {
                        zzH(i2, zzfn.zzn(t, iZzr & 1048575), zzcnVar);
                    }
                    break;
                case 60:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzr(i2, zzfn.zzn(t, iZzr & 1048575), zzo(i));
                    }
                    break;
                case 61:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzn(i2, (zzcf) zzfn.zzn(t, iZzr & 1048575));
                    }
                    break;
                case 62:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzo(i2, zzw(t, iZzr & 1048575));
                    }
                    break;
                case 63:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzg(i2, zzw(t, iZzr & 1048575));
                    }
                    break;
                case 64:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzb(i2, zzw(t, iZzr & 1048575));
                    }
                    break;
                case 65:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzd(i2, zzx(t, iZzr & 1048575));
                    }
                    break;
                case 66:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzp(i2, zzw(t, iZzr & 1048575));
                    }
                    break;
                case 67:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzq(i2, zzx(t, iZzr & 1048575));
                    }
                    break;
                case 68:
                    if (zzD(t, i2, i)) {
                        zzcnVar.zzs(i2, zzfn.zzn(t, iZzr & 1048575), zzo(i));
                    }
                    break;
            }
        }
        zzfd<?, ?> zzfdVar = this.zzl;
        zzfdVar.zzg(zzfdVar.zzb(t), zzcnVar);
    }

    @Override // com.google.android.gms.internal.icing.zzep
    public final void zzc(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzr = zzr(i);
            long j = 1048575 & iZzr;
            int i2 = this.zzc[i];
            switch (zzt(iZzr)) {
                case 0:
                    if (zzB(t2, i)) {
                        zzfn.zzm(t, j, zzfn.zzl(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 1:
                    if (zzB(t2, i)) {
                        zzfn.zzk(t, j, zzfn.zzj(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 2:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 3:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 4:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 5:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 6:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 7:
                    if (zzB(t2, i)) {
                        zzfn.zzi(t, j, zzfn.zzh(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 8:
                    if (zzB(t2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 9:
                    zzk(t, t2, i);
                    break;
                case 10:
                    if (zzB(t2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 11:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 12:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 13:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 14:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 15:
                    if (zzB(t2, i)) {
                        zzfn.zze(t, j, zzfn.zzd(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 16:
                    if (zzB(t2, i)) {
                        zzfn.zzg(t, j, zzfn.zzf(t2, j));
                        zzC(t, i);
                    }
                    break;
                case 17:
                    zzk(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzk.zzb(t, t2, j);
                    break;
                case 50:
                    zzer.zzG(this.zzo, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzD(t2, i2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzE(t, i2, i);
                    }
                    break;
                case 60:
                    zzl(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzD(t2, i2, i)) {
                        zzfn.zzo(t, j, zzfn.zzn(t2, j));
                        zzE(t, i2, i);
                    }
                    break;
                case 68:
                    zzl(t, t2, i);
                    break;
            }
        }
        zzer.zzF(this.zzl, t, t2);
        if (this.zzf) {
            zzer.zzE(this.zzm, t, t2);
        }
    }
}
