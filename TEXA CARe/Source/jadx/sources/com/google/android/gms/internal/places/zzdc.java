package com.google.android.gms.internal.places;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdc {
    private static final Class<?> zzlv = zzdc();
    private static final zzds<?, ?> zzlw = zzf(false);
    private static final zzds<?, ?> zzlx = zzf(true);
    private static final zzds<?, ?> zzly = new zzdu();

    public static void zzg(Class<?> cls) {
        Class<?> cls2;
        if (!zzbc.class.isAssignableFrom(cls) && (cls2 = zzlv) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzb(int i, List<Double> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzh(i, list, z);
    }

    public static void zzc(int i, List<Float> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzg(i, list, z);
    }

    public static void zzd(int i, List<Long> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zze(i, list, z);
    }

    public static void zzf(int i, List<Long> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzo(i, list, z);
    }

    public static void zzg(int i, List<Long> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzf(i, list, z);
    }

    public static void zzh(int i, List<Long> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzm(i, list, z);
    }

    public static void zzi(int i, List<Integer> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzb(i, list, z);
    }

    public static void zzj(int i, List<Integer> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzk(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzn(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzc(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzl(i, list, z);
    }

    public static void zzn(int i, List<Integer> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzi(i, list, z);
    }

    public static void zzo(int i, List<Boolean> list, zzel zzelVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzj(i, list, z);
    }

    public static void zzb(int i, List<String> list, zzel zzelVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzb(i, list);
    }

    public static void zzc(int i, List<zzw> list, zzel zzelVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzc(i, list);
    }

    public static void zzb(int i, List<?> list, zzel zzelVar, zzda zzdaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzb(i, list, zzdaVar);
    }

    public static void zzc(int i, List<?> list, zzel zzelVar, zzda zzdaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzelVar.zzc(i, list, zzdaVar);
    }

    static int zze(List<Long> list) {
        int iZzf;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzby) {
            zzby zzbyVar = (zzby) list;
            iZzf = 0;
            while (i < size) {
                iZzf += zzaj.zzf(zzbyVar.getLong(i));
                i++;
            }
        } else {
            iZzf = 0;
            while (i < size) {
                iZzf += zzaj.zzf(list.get(i).longValue());
                i++;
            }
        }
        return iZzf;
    }

    static int zzp(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zze(list) + (list.size() * zzaj.zzr(i));
    }

    static int zzf(List<Long> list) {
        int iZzg;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzby) {
            zzby zzbyVar = (zzby) list;
            iZzg = 0;
            while (i < size) {
                iZzg += zzaj.zzg(zzbyVar.getLong(i));
                i++;
            }
        } else {
            iZzg = 0;
            while (i < size) {
                iZzg += zzaj.zzg(list.get(i).longValue());
                i++;
            }
        }
        return iZzg;
    }

    static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzaj.zzr(i));
    }

    static int zzg(List<Long> list) {
        int iZzh;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzby) {
            zzby zzbyVar = (zzby) list;
            iZzh = 0;
            while (i < size) {
                iZzh += zzaj.zzh(zzbyVar.getLong(i));
                i++;
            }
        } else {
            iZzh = 0;
            while (i < size) {
                iZzh += zzaj.zzh(list.get(i).longValue());
                i++;
            }
        }
        return iZzh;
    }

    static int zzr(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzaj.zzr(i));
    }

    static int zzh(List<Integer> list) {
        int iZzx;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbe) {
            zzbe zzbeVar = (zzbe) list;
            iZzx = 0;
            while (i < size) {
                iZzx += zzaj.zzx(zzbeVar.getInt(i));
                i++;
            }
        } else {
            iZzx = 0;
            while (i < size) {
                iZzx += zzaj.zzx(list.get(i).intValue());
                i++;
            }
        }
        return iZzx;
    }

    static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzaj.zzr(i));
    }

    static int zzi(List<Integer> list) {
        int iZzs;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbe) {
            zzbe zzbeVar = (zzbe) list;
            iZzs = 0;
            while (i < size) {
                iZzs += zzaj.zzs(zzbeVar.getInt(i));
                i++;
            }
        } else {
            iZzs = 0;
            while (i < size) {
                iZzs += zzaj.zzs(list.get(i).intValue());
                i++;
            }
        }
        return iZzs;
    }

    static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzaj.zzr(i));
    }

    static int zzj(List<Integer> list) {
        int iZzt;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbe) {
            zzbe zzbeVar = (zzbe) list;
            iZzt = 0;
            while (i < size) {
                iZzt += zzaj.zzt(zzbeVar.getInt(i));
                i++;
            }
        } else {
            iZzt = 0;
            while (i < size) {
                iZzt += zzaj.zzt(list.get(i).intValue());
                i++;
            }
        }
        return iZzt;
    }

    static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzaj.zzr(i));
    }

    static int zzk(List<Integer> list) {
        int iZzu;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbe) {
            zzbe zzbeVar = (zzbe) list;
            iZzu = 0;
            while (i < size) {
                iZzu += zzaj.zzu(zzbeVar.getInt(i));
                i++;
            }
        } else {
            iZzu = 0;
            while (i < size) {
                iZzu += zzaj.zzu(list.get(i).intValue());
                i++;
            }
        }
        return iZzu;
    }

    static int zzv(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzk(list) + (size * zzaj.zzr(i));
    }

    static int zzl(List<?> list) {
        return list.size() << 2;
    }

    static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzaj.zzk(i, 0);
    }

    static int zzm(List<?> list) {
        return list.size() << 3;
    }

    static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzaj.zzh(i, 0L);
    }

    static int zzn(List<?> list) {
        return list.size();
    }

    static int zzy(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzaj.zzd(i, true);
    }

    static int zzd(int i, List<?> list) {
        int iZzk;
        int iZzk2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int iZzr = zzaj.zzr(i) * size;
        if (list instanceof zzbr) {
            zzbr zzbrVar = (zzbr) list;
            while (i2 < size) {
                Object objZzae = zzbrVar.zzae(i2);
                if (objZzae instanceof zzw) {
                    iZzk2 = zzaj.zzc((zzw) objZzae);
                } else {
                    iZzk2 = zzaj.zzk((String) objZzae);
                }
                iZzr += iZzk2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzw) {
                    iZzk = zzaj.zzc((zzw) obj);
                } else {
                    iZzk = zzaj.zzk((String) obj);
                }
                iZzr += iZzk;
                i2++;
            }
        }
        return iZzr;
    }

    static int zzd(int i, Object obj, zzda zzdaVar) {
        if (obj instanceof zzbp) {
            return zzaj.zzb(i, (zzbp) obj);
        }
        return zzaj.zzc(i, (zzck) obj, zzdaVar);
    }

    static int zzd(int i, List<?> list, zzda zzdaVar) {
        int iZzb;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzr = zzaj.zzr(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzbp) {
                iZzb = zzaj.zzb((zzbp) obj);
            } else {
                iZzb = zzaj.zzb((zzck) obj, zzdaVar);
            }
            iZzr += iZzb;
        }
        return iZzr;
    }

    static int zze(int i, List<zzw> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzr = size * zzaj.zzr(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            iZzr += zzaj.zzc(list.get(i2));
        }
        return iZzr;
    }

    static int zze(int i, List<zzck> list, zzda zzdaVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iZzd = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iZzd += zzaj.zzd(i, list.get(i2), zzdaVar);
        }
        return iZzd;
    }

    public static zzds<?, ?> zzcz() {
        return zzlw;
    }

    public static zzds<?, ?> zzda() {
        return zzlx;
    }

    public static zzds<?, ?> zzdb() {
        return zzly;
    }

    private static zzds<?, ?> zzf(boolean z) {
        try {
            Class<?> clsZzdd = zzdd();
            if (clsZzdd == null) {
                return null;
            }
            return (zzds) clsZzdd.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzdc() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzdd() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    static <T> void zzb(zzcd zzcdVar, T t, T t2, long j) {
        zzdy.zzb(t, j, zzcdVar.zzc(zzdy.zzp(t, j), zzdy.zzp(t2, j)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends zzax<FT>> void zzb(zzar<FT> zzarVar, T t, T t2) {
        zzav<T> zzavVarZzb = zzarVar.zzb(t2);
        if (zzavVarZzb.zzfj.isEmpty()) {
            return;
        }
        zzarVar.zzc(t).zzb(zzavVarZzb);
    }

    static <T, UT, UB> void zzb(zzds<UT, UB> zzdsVar, T t, T t2) {
        zzdsVar.zzf(t, zzdsVar.zzh(zzdsVar.zzr(t), zzdsVar.zzr(t2)));
    }

    static <UT, UB> UB zzb(int i, List<Integer> list, zzbf zzbfVar, UB ub, zzds<UT, UB> zzdsVar) {
        if (zzbfVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int iIntValue = list.get(i3).intValue();
                if (zzbfVar.zzad(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(iIntValue));
                    }
                    i2++;
                } else {
                    ub = (UB) zzb(i, iIntValue, ub, zzdsVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!zzbfVar.zzad(iIntValue2)) {
                    ub = (UB) zzb(i, iIntValue2, ub, zzdsVar);
                    it.remove();
                }
            }
        }
        return ub;
    }

    private static <UT, UB> UB zzb(int i, int i2, UB ub, zzds<UT, UB> zzdsVar) {
        if (ub == null) {
            ub = zzdsVar.zzdk();
        }
        zzdsVar.zzb(ub, i, i2);
        return ub;
    }
}
