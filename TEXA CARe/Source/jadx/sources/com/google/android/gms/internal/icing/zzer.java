package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzer {
    private static final Class<?> zza;
    private static final zzfd<?, ?> zzb;
    private static final zzfd<?, ?> zzc;
    private static final zzfd<?, ?> zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzZ(false);
        zzc = zzZ(true);
        zzd = new zzff();
    }

    public static zzfd<?, ?> zzA() {
        return zzb;
    }

    public static zzfd<?, ?> zzB() {
        return zzc;
    }

    public static zzfd<?, ?> zzC() {
        return zzd;
    }

    static boolean zzD(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static <T, FT extends zzct<FT>> void zzE(zzcq<FT> zzcqVar, T t, T t2) {
        zzcqVar.zzb(t2);
        throw null;
    }

    static <T, UT, UB> void zzF(zzfd<UT, UB> zzfdVar, T t, T t2) {
        zzfdVar.zza(t, zzfdVar.zzd(zzfdVar.zzb(t), zzfdVar.zzb(t2)));
    }

    static <T> void zzG(zzdz zzdzVar, T t, T t2, long j) {
        zzdy zzdyVarZzb = (zzdy) zzfn.zzn(t, j);
        zzdy zzdyVar = (zzdy) zzfn.zzn(t2, j);
        if (!zzdyVar.isEmpty()) {
            if (!zzdyVarZzb.zzd()) {
                zzdyVarZzb = zzdyVarZzb.zzb();
            }
            zzdyVarZzb.zza(zzdyVar);
        }
        zzfn.zzo(t, j, zzdyVarZzb);
    }

    public static void zzH(int i, List<Double> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzz(i, list, z);
    }

    public static void zzI(int i, List<Float> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzy(i, list, z);
    }

    public static void zzJ(int i, List<Long> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzv(i, list, z);
    }

    public static void zzK(int i, List<Long> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzw(i, list, z);
    }

    public static void zzL(int i, List<Long> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzI(i, list, z);
    }

    public static void zzM(int i, List<Long> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzx(i, list, z);
    }

    public static void zzN(int i, List<Long> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzG(i, list, z);
    }

    public static void zzO(int i, List<Integer> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzt(i, list, z);
    }

    public static void zzP(int i, List<Integer> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzE(i, list, z);
    }

    public static void zzQ(int i, List<Integer> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzH(i, list, z);
    }

    public static void zzR(int i, List<Integer> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzu(i, list, z);
    }

    public static void zzS(int i, List<Integer> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzF(i, list, z);
    }

    public static void zzT(int i, List<Integer> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzA(i, list, z);
    }

    public static void zzU(int i, List<Boolean> list, zzcn zzcnVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzB(i, list, z);
    }

    public static void zzV(int i, List<String> list, zzcn zzcnVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzC(i, list);
    }

    public static void zzW(int i, List<zzcf> list, zzcn zzcnVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzcnVar.zzD(i, list);
    }

    public static void zzX(int i, List<?> list, zzcn zzcnVar, zzep zzepVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzcnVar.zzr(i, list.get(i2), zzepVar);
        }
    }

    public static void zzY(int i, List<?> list, zzcn zzcnVar, zzep zzepVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzcnVar.zzs(i, list.get(i2), zzepVar);
        }
    }

    private static zzfd<?, ?> zzZ(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzfd) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (!zzda.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static int zzb(List<Long> list) {
        int iZzx;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdt) {
            zzdt zzdtVar = (zzdt) list;
            iZzx = 0;
            while (i < size) {
                iZzx += zzcm.zzx(zzdtVar.zzf(i));
                i++;
            }
        } else {
            iZzx = 0;
            while (i < size) {
                iZzx += zzcm.zzx(list.get(i).longValue());
                i++;
            }
        }
        return iZzx;
    }

    static int zzc(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzb(list) + (list.size() * zzcm.zzu(i));
    }

    static int zzd(List<Long> list) {
        int iZzx;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdt) {
            zzdt zzdtVar = (zzdt) list;
            iZzx = 0;
            while (i < size) {
                iZzx += zzcm.zzx(zzdtVar.zzf(i));
                i++;
            }
        } else {
            iZzx = 0;
            while (i < size) {
                iZzx += zzcm.zzx(list.get(i).longValue());
                i++;
            }
        }
        return iZzx;
    }

    static int zze(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzcm.zzu(i));
    }

    static int zzf(List<Long> list) {
        int iZzx;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdt) {
            zzdt zzdtVar = (zzdt) list;
            iZzx = 0;
            while (i < size) {
                long jZzf = zzdtVar.zzf(i);
                iZzx += zzcm.zzx((jZzf >> 63) ^ (jZzf + jZzf));
                i++;
            }
        } else {
            iZzx = 0;
            while (i < size) {
                long jLongValue = list.get(i).longValue();
                iZzx += zzcm.zzx((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
        }
        return iZzx;
    }

    static int zzg(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzcm.zzu(i));
    }

    static int zzh(List<Integer> list) {
        int iZzv;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdb) {
            zzdb zzdbVar = (zzdb) list;
            iZzv = 0;
            while (i < size) {
                iZzv += zzcm.zzv(zzdbVar.zzd(i));
                i++;
            }
        } else {
            iZzv = 0;
            while (i < size) {
                iZzv += zzcm.zzv(list.get(i).intValue());
                i++;
            }
        }
        return iZzv;
    }

    static int zzi(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzcm.zzu(i));
    }

    static int zzj(List<Integer> list) {
        int iZzv;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdb) {
            zzdb zzdbVar = (zzdb) list;
            iZzv = 0;
            while (i < size) {
                iZzv += zzcm.zzv(zzdbVar.zzd(i));
                i++;
            }
        } else {
            iZzv = 0;
            while (i < size) {
                iZzv += zzcm.zzv(list.get(i).intValue());
                i++;
            }
        }
        return iZzv;
    }

    static int zzk(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzcm.zzu(i));
    }

    static int zzl(List<Integer> list) {
        int iZzw;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdb) {
            zzdb zzdbVar = (zzdb) list;
            iZzw = 0;
            while (i < size) {
                iZzw += zzcm.zzw(zzdbVar.zzd(i));
                i++;
            }
        } else {
            iZzw = 0;
            while (i < size) {
                iZzw += zzcm.zzw(list.get(i).intValue());
                i++;
            }
        }
        return iZzw;
    }

    static int zzm(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzcm.zzu(i));
    }

    static int zzn(List<Integer> list) {
        int iZzw;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzdb) {
            zzdb zzdbVar = (zzdb) list;
            iZzw = 0;
            while (i < size) {
                int iZzd = zzdbVar.zzd(i);
                iZzw += zzcm.zzw((iZzd >> 31) ^ (iZzd + iZzd));
                i++;
            }
        } else {
            iZzw = 0;
            while (i < size) {
                int iIntValue = list.get(i).intValue();
                iZzw += zzcm.zzw((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
        }
        return iZzw;
    }

    static int zzo(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzn(list) + (size * zzcm.zzu(i));
    }

    static int zzp(List<?> list) {
        return list.size() * 4;
    }

    static int zzq(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzcm.zzw(i << 3) + 4);
    }

    static int zzr(List<?> list) {
        return list.size() * 8;
    }

    static int zzs(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzcm.zzw(i << 3) + 8);
    }

    static int zzt(List<?> list) {
        return list.size();
    }

    static int zzu(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzcm.zzw(i << 3) + 1);
    }

    static int zzv(int i, List<?> list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzu = zzcm.zzu(i) * size;
        if (list instanceof zzdo) {
            zzdo zzdoVar = (zzdo) list;
            while (i2 < size) {
                Object objZzg = zzdoVar.zzg(i2);
                iZzu += objZzg instanceof zzcf ? zzcm.zzA((zzcf) objZzg) : zzcm.zzy((String) objZzg);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                iZzu += obj instanceof zzcf ? zzcm.zzA((zzcf) obj) : zzcm.zzy((String) obj);
                i2++;
            }
        }
        return iZzu;
    }

    static int zzw(int i, Object obj, zzep zzepVar) {
        if (!(obj instanceof zzdm)) {
            return zzcm.zzw(i << 3) + zzcm.zzB((zzee) obj, zzepVar);
        }
        int iZzw = zzcm.zzw(i << 3);
        int iZza = ((zzdm) obj).zza();
        return iZzw + zzcm.zzw(iZza) + iZza;
    }

    static int zzx(int i, List<?> list, zzep zzepVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzu = zzcm.zzu(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            iZzu += obj instanceof zzdm ? zzcm.zzz((zzdm) obj) : zzcm.zzB((zzee) obj, zzepVar);
        }
        return iZzu;
    }

    static int zzy(int i, List<zzcf> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzu = size * zzcm.zzu(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzu += zzcm.zzA(list.get(i2));
        }
        return iZzu;
    }

    static int zzz(int i, List<zzee> list, zzep zzepVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzE = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzE += zzcm.zzE(i, list.get(i2), zzepVar);
        }
        return iZzE;
    }
}
