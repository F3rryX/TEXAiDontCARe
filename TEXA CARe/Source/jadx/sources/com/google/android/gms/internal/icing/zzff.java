package com.google.android.gms.internal.icing;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzff extends zzfd<zzfe, zzfe> {
    zzff() {
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final /* bridge */ /* synthetic */ void zza(Object obj, zzfe zzfeVar) {
        ((zzda) obj).zzc = zzfeVar;
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final /* bridge */ /* synthetic */ zzfe zzb(Object obj) {
        return ((zzda) obj).zzc;
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final void zzc(Object obj) {
        zzfe zzfeVar = ((zzda) obj).zzc;
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final /* bridge */ /* synthetic */ zzfe zzd(zzfe zzfeVar, zzfe zzfeVar2) {
        zzfe zzfeVar3 = zzfeVar2;
        return zzfeVar3.equals(zzfe.zza()) ? zzfeVar : zzfe.zzb(zzfeVar, zzfeVar3);
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final /* bridge */ /* synthetic */ int zze(zzfe zzfeVar) {
        return zzfeVar.zzc();
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final /* bridge */ /* synthetic */ int zzf(zzfe zzfeVar) {
        return zzfeVar.zzd();
    }

    @Override // com.google.android.gms.internal.icing.zzfd
    final /* bridge */ /* synthetic */ void zzg(zzfe zzfeVar, zzcn zzcnVar) throws IOException {
    }
}
