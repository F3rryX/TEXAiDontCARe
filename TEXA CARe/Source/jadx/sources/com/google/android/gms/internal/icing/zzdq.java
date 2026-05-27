package com.google.android.gms.internal.icing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdq extends zzds {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzdq() {
        super(null);
    }

    /* synthetic */ zzdq(zzdp zzdpVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.icing.zzds
    final void zza(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzfn.zzn(obj, j);
        if (list instanceof zzdo) {
            objUnmodifiableList = ((zzdo) list).zzi();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzel) && (list instanceof zzdg)) {
                zzdg zzdgVar = (zzdg) list;
                if (zzdgVar.zza()) {
                    zzdgVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzfn.zzo(obj, j, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.icing.zzds
    final <E> void zzb(Object obj, Object obj2, long j) {
        List list;
        List list2;
        List list3 = (List) zzfn.zzn(obj2, j);
        int size = list3.size();
        List list4 = (List) zzfn.zzn(obj, j);
        if (list4.isEmpty()) {
            List zzdnVar = list4 instanceof zzdo ? new zzdn(size) : ((list4 instanceof zzel) && (list4 instanceof zzdg)) ? ((zzdg) list4).zze(size) : new ArrayList(size);
            zzfn.zzo(obj, j, zzdnVar);
            list2 = zzdnVar;
        } else {
            if (zza.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzfn.zzo(obj, j, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzfi) {
                zzdn zzdnVar2 = new zzdn(list4.size() + size);
                zzdnVar2.addAll(zzdnVar2.size(), (zzfi) list4);
                zzfn.zzo(obj, j, zzdnVar2);
                list = zzdnVar2;
            } else {
                boolean z = list4 instanceof zzel;
                list2 = list4;
                if (z) {
                    boolean z2 = list4 instanceof zzdg;
                    list2 = list4;
                    if (z2) {
                        zzdg zzdgVar = (zzdg) list4;
                        list2 = list4;
                        if (!zzdgVar.zza()) {
                            zzdg<E> zzdgVarZze = zzdgVar.zze(list4.size() + size);
                            zzfn.zzo(obj, j, zzdgVarZze);
                            list2 = zzdgVarZze;
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
        zzfn.zzo(obj, j, list3);
    }
}
