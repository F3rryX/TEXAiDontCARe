package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzko extends zzkq {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzko() {
        super(null);
    }

    /* synthetic */ zzko(zzkn zzknVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzml.zzf(obj, j);
        if (list instanceof zzkm) {
            objUnmodifiableList = ((zzkm) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzlj) && (list instanceof zzke)) {
                zzke zzkeVar = (zzke) list;
                if (zzkeVar.zzc()) {
                    zzkeVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzml.zzs(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    final <E> void zzb(Object obj, Object obj2, long j) {
        List list;
        List list2;
        List list3 = (List) zzml.zzf(obj2, j);
        int size = list3.size();
        List list4 = (List) zzml.zzf(obj, j);
        if (list4.isEmpty()) {
            List zzklVar = list4 instanceof zzkm ? new zzkl(size) : ((list4 instanceof zzlj) && (list4 instanceof zzke)) ? ((zzke) list4).zzd(size) : new ArrayList(size);
            zzml.zzs(obj, j, zzklVar);
            list2 = zzklVar;
        } else {
            if (zza.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzml.zzs(obj, j, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzmg) {
                zzkl zzklVar2 = new zzkl(list4.size() + size);
                zzklVar2.addAll(zzklVar2.size(), (zzmg) list4);
                zzml.zzs(obj, j, zzklVar2);
                list = zzklVar2;
            } else {
                boolean z = list4 instanceof zzlj;
                list2 = list4;
                if (z) {
                    boolean z2 = list4 instanceof zzke;
                    list2 = list4;
                    if (z2) {
                        zzke zzkeVar = (zzke) list4;
                        list2 = list4;
                        if (!zzkeVar.zzc()) {
                            zzke<E> zzkeVarZzd = zzkeVar.zzd(list4.size() + size);
                            zzml.zzs(obj, j, zzkeVarZzd);
                            list2 = zzkeVarZzd;
                        }
                    }
                }
            }
            list2 = list;
        }
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzml.zzs(obj, j, list3);
    }
}
