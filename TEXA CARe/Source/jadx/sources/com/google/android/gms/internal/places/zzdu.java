package com.google.android.gms.internal.places;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzdu extends zzds<zzdr, zzdr> {
    zzdu() {
    }

    private static void zzb(Object obj, zzdr zzdrVar) {
        ((zzbc) obj).zzih = zzdrVar;
    }

    @Override // com.google.android.gms.internal.places.zzds
    final void zzd(Object obj) {
        ((zzbc) obj).zzih.zzab();
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ int zzn(zzdr zzdrVar) {
        return zzdrVar.zzbh();
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ int zzs(zzdr zzdrVar) {
        return zzdrVar.zzdj();
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ zzdr zzh(zzdr zzdrVar, zzdr zzdrVar2) {
        zzdr zzdrVar3 = zzdrVar;
        zzdr zzdrVar4 = zzdrVar2;
        return zzdrVar4.equals(zzdr.zzdh()) ? zzdrVar3 : zzdr.zzb(zzdrVar3, zzdrVar4);
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ void zzd(zzdr zzdrVar, zzel zzelVar) throws IOException {
        zzdrVar.zzb(zzelVar);
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ void zzb(zzdr zzdrVar, zzel zzelVar) throws IOException {
        zzdrVar.zzc(zzelVar);
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ void zzg(Object obj, zzdr zzdrVar) {
        zzb(obj, zzdrVar);
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ zzdr zzr(Object obj) {
        return ((zzbc) obj).zzih;
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ void zzf(Object obj, zzdr zzdrVar) {
        zzb(obj, zzdrVar);
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ zzdr zzdk() {
        return zzdr.zzdi();
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ void zzb(zzdr zzdrVar, int i, zzw zzwVar) {
        zzdrVar.zzc((i << 3) | 2, zzwVar);
    }

    @Override // com.google.android.gms.internal.places.zzds
    final /* synthetic */ void zzb(zzdr zzdrVar, int i, long j) {
        zzdrVar.zzc(i << 3, Long.valueOf(j));
    }
}
