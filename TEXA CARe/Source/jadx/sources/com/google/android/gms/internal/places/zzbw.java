package com.google.android.gms.internal.places;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzbw extends zzbu {
    private static final Class<?> zzkd = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzbw() {
        super();
    }

    @Override // com.google.android.gms.internal.places.zzbu
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzdy.zzp(obj, j);
        if (list instanceof zzbr) {
            objUnmodifiableList = ((zzbr) list).zzbz();
        } else {
            if (zzkd.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzcw) && (list instanceof zzbh)) {
                zzbh zzbhVar = (zzbh) list;
                if (zzbhVar.zzaa()) {
                    zzbhVar.zzab();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzdy.zzb(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.places.zzbu
    final <E> void zzb(Object obj, Object obj2, long j) {
        List list;
        List list2;
        List listZzh;
        List listZzd = zzd(obj2, j);
        int size = listZzd.size();
        List listZzd2 = zzd(obj, j);
        if (listZzd2.isEmpty()) {
            if (listZzd2 instanceof zzbr) {
                listZzh = new zzbs(size);
            } else if ((listZzd2 instanceof zzcw) && (listZzd2 instanceof zzbh)) {
                listZzh = ((zzbh) listZzd2).zzh(size);
            } else {
                listZzh = new ArrayList(size);
            }
            zzdy.zzb(obj, j, listZzh);
            list2 = listZzh;
        } else {
            if (zzkd.isAssignableFrom(listZzd2.getClass())) {
                ArrayList arrayList = new ArrayList(listZzd2.size() + size);
                arrayList.addAll(listZzd2);
                zzdy.zzb(obj, j, arrayList);
                list = arrayList;
            } else if (listZzd2 instanceof zzdt) {
                zzbs zzbsVar = new zzbs(listZzd2.size() + size);
                zzbsVar.addAll((zzdt) listZzd2);
                zzdy.zzb(obj, j, zzbsVar);
                list = zzbsVar;
            } else {
                boolean z = listZzd2 instanceof zzcw;
                list2 = listZzd2;
                if (z) {
                    boolean z2 = listZzd2 instanceof zzbh;
                    list2 = listZzd2;
                    if (z2) {
                        zzbh zzbhVar = (zzbh) listZzd2;
                        list2 = listZzd2;
                        if (!zzbhVar.zzaa()) {
                            zzbh<E> zzbhVarZzh = zzbhVar.zzh(listZzd2.size() + size);
                            zzdy.zzb(obj, j, zzbhVarZzh);
                            list2 = zzbhVarZzh;
                        }
                    }
                }
            }
            list2 = list;
        }
        int size2 = list2.size();
        int size3 = listZzd.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(listZzd);
        }
        if (size2 > 0) {
            listZzd = list2;
        }
        zzdy.zzb(obj, j, listZzd);
    }

    private static <E> List<E> zzd(Object obj, long j) {
        return (List) zzdy.zzp(obj, j);
    }
}
