package com.google.android.gms.internal.places;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class zzy implements Comparator<zzw> {
    zzy() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzw zzwVar, zzw zzwVar2) {
        zzw zzwVar3 = zzwVar;
        zzw zzwVar4 = zzwVar2;
        zzab zzabVar = (zzab) zzwVar3.iterator();
        zzab zzabVar2 = (zzab) zzwVar4.iterator();
        while (zzabVar.hasNext() && zzabVar2.hasNext()) {
            int iCompare = Integer.compare(zzw.zzb(zzabVar.nextByte()), zzw.zzb(zzabVar2.nextByte()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzwVar3.size(), zzwVar4.size());
    }
}
