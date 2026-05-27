package com.google.android.gms.internal.places;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
final class zzs {
    static int zzb(byte[] bArr, int i, zzr zzrVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzb(b, bArr, i2, zzrVar);
        }
        zzrVar.zzdz = b;
        return i2;
    }

    static int zzb(int i, byte[] bArr, int i2, zzr zzrVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzrVar.zzdz = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzrVar.zzdz = i5 | (b2 << DataManagerParameterID.LED_ALWAYS_ON);
            return i6;
        }
        int i7 = i5 | ((b2 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzrVar.zzdz = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzrVar.zzdz = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzrVar.zzdz = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzc(byte[] bArr, int i, zzr zzrVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzrVar.zzea = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & ByteCompanionObject.MAX_VALUE)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & ByteCompanionObject.MAX_VALUE)) << i4;
            b = b2;
            i3 = i5;
        }
        zzrVar.zzea = j2;
        return i3;
    }

    static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    static long zzc(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    static double zzd(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzc(bArr, i));
    }

    static float zze(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzb(bArr, i));
    }

    static int zzd(byte[] bArr, int i, zzr zzrVar) throws zzbk {
        int iZzb = zzb(bArr, i, zzrVar);
        int i2 = zzrVar.zzdz;
        if (i2 < 0) {
            throw zzbk.zzbq();
        }
        if (i2 == 0) {
            zzrVar.zzeb = "";
            return iZzb;
        }
        zzrVar.zzeb = new String(bArr, iZzb, i2, zzbd.UTF_8);
        return iZzb + i2;
    }

    static int zze(byte[] bArr, int i, zzr zzrVar) throws zzbk {
        int iZzb = zzb(bArr, i, zzrVar);
        int i2 = zzrVar.zzdz;
        if (i2 < 0) {
            throw zzbk.zzbq();
        }
        if (i2 == 0) {
            zzrVar.zzeb = "";
            return iZzb;
        }
        zzrVar.zzeb = zzea.zzh(bArr, iZzb, i2);
        return iZzb + i2;
    }

    static int zzf(byte[] bArr, int i, zzr zzrVar) throws zzbk {
        int iZzb = zzb(bArr, i, zzrVar);
        int i2 = zzrVar.zzdz;
        if (i2 < 0) {
            throw zzbk.zzbq();
        }
        if (i2 > bArr.length - iZzb) {
            throw zzbk.zzbp();
        }
        if (i2 == 0) {
            zzrVar.zzeb = zzw.zzeg;
            return iZzb;
        }
        zzrVar.zzeb = zzw.zzc(bArr, iZzb, i2);
        return iZzb + i2;
    }

    static int zzb(zzda zzdaVar, byte[] bArr, int i, int i2, zzr zzrVar) throws IOException {
        int iZzb = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzb = zzb(i3, bArr, iZzb, zzrVar);
            i3 = zzrVar.zzdz;
        }
        int i4 = iZzb;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzbk.zzbp();
        }
        Object objNewInstance = zzdaVar.newInstance();
        int i5 = i3 + i4;
        zzdaVar.zzb(objNewInstance, bArr, i4, i5, zzrVar);
        zzdaVar.zzd(objNewInstance);
        zzrVar.zzeb = objNewInstance;
        return i5;
    }

    static int zzb(zzda zzdaVar, byte[] bArr, int i, int i2, int i3, zzr zzrVar) throws IOException {
        zzco zzcoVar = (zzco) zzdaVar;
        Object objNewInstance = zzcoVar.newInstance();
        int iZzb = zzcoVar.zzb(objNewInstance, bArr, i, i2, i3, zzrVar);
        zzcoVar.zzd(objNewInstance);
        zzrVar.zzeb = objNewInstance;
        return iZzb;
    }

    static int zzb(int i, byte[] bArr, int i2, int i3, zzbh<?> zzbhVar, zzr zzrVar) {
        zzbe zzbeVar = (zzbe) zzbhVar;
        int iZzb = zzb(bArr, i2, zzrVar);
        zzbeVar.zzac(zzrVar.zzdz);
        while (iZzb < i3) {
            int iZzb2 = zzb(bArr, iZzb, zzrVar);
            if (i != zzrVar.zzdz) {
                break;
            }
            iZzb = zzb(bArr, iZzb2, zzrVar);
            zzbeVar.zzac(zzrVar.zzdz);
        }
        return iZzb;
    }

    static int zzb(byte[] bArr, int i, zzbh<?> zzbhVar, zzr zzrVar) throws IOException {
        zzbe zzbeVar = (zzbe) zzbhVar;
        int iZzb = zzb(bArr, i, zzrVar);
        int i2 = zzrVar.zzdz + iZzb;
        while (iZzb < i2) {
            iZzb = zzb(bArr, iZzb, zzrVar);
            zzbeVar.zzac(zzrVar.zzdz);
        }
        if (iZzb == i2) {
            return iZzb;
        }
        throw zzbk.zzbp();
    }

    static int zzb(zzda<?> zzdaVar, int i, byte[] bArr, int i2, int i3, zzbh<?> zzbhVar, zzr zzrVar) throws IOException {
        int iZzb = zzb(zzdaVar, bArr, i2, i3, zzrVar);
        zzbhVar.add(zzrVar.zzeb);
        while (iZzb < i3) {
            int iZzb2 = zzb(bArr, iZzb, zzrVar);
            if (i != zzrVar.zzdz) {
                break;
            }
            iZzb = zzb(zzdaVar, bArr, iZzb2, i3, zzrVar);
            zzbhVar.add(zzrVar.zzeb);
        }
        return iZzb;
    }

    static int zzb(int i, byte[] bArr, int i2, int i3, zzdr zzdrVar, zzr zzrVar) throws zzbk {
        if ((i >>> 3) == 0) {
            throw zzbk.zzbr();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzc = zzc(bArr, i2, zzrVar);
            zzdrVar.zzc(i, Long.valueOf(zzrVar.zzea));
            return iZzc;
        }
        if (i4 == 1) {
            zzdrVar.zzc(i, Long.valueOf(zzc(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzb = zzb(bArr, i2, zzrVar);
            int i5 = zzrVar.zzdz;
            if (i5 < 0) {
                throw zzbk.zzbq();
            }
            if (i5 > bArr.length - iZzb) {
                throw zzbk.zzbp();
            }
            if (i5 == 0) {
                zzdrVar.zzc(i, zzw.zzeg);
            } else {
                zzdrVar.zzc(i, zzw.zzc(bArr, iZzb, i5));
            }
            return iZzb + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzdrVar.zzc(i, Integer.valueOf(zzb(bArr, i2)));
                return i2 + 4;
            }
            throw zzbk.zzbr();
        }
        zzdr zzdrVarZzdi = zzdr.zzdi();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZzb2 = zzb(bArr, i2, zzrVar);
            int i8 = zzrVar.zzdz;
            i7 = i8;
            if (i8 == i6) {
                i2 = iZzb2;
                break;
            }
            int iZzb3 = zzb(i7, bArr, iZzb2, i3, zzdrVarZzdi, zzrVar);
            i7 = i8;
            i2 = iZzb3;
        }
        if (i2 > i3 || i7 != i6) {
            throw zzbk.zzbt();
        }
        zzdrVar.zzc(i, zzdrVarZzdi);
        return i2;
    }

    static int zzb(int i, byte[] bArr, int i2, int i3, zzr zzrVar) throws zzbk {
        if ((i >>> 3) == 0) {
            throw zzbk.zzbr();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzc(bArr, i2, zzrVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzb(bArr, i2, zzrVar) + zzrVar.zzdz;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzbk.zzbr();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zzb(bArr, i2, zzrVar);
            i6 = zzrVar.zzdz;
            if (i6 == i5) {
                break;
            }
            i2 = zzb(i6, bArr, i2, i3, zzrVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzbk.zzbt();
        }
        return i2;
    }
}
