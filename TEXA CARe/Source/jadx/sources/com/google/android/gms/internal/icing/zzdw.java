package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzdw implements zzeq {
    private static final zzec zzb = new zzdu();
    private final zzec zza;

    public zzdw() {
        zzec zzecVar;
        zzec[] zzecVarArr = new zzec[2];
        zzecVarArr[0] = zzcw.zza();
        try {
            zzecVar = (zzec) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzecVar = zzb;
        }
        zzecVarArr[1] = zzecVar;
        zzdv zzdvVar = new zzdv(zzecVarArr);
        zzdh.zzb(zzdvVar, "messageInfoFactory");
        this.zza = zzdvVar;
    }

    private static boolean zzb(zzeb zzebVar) {
        return zzebVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.icing.zzeq
    public final <T> zzep<T> zza(Class<T> cls) {
        zzer.zza(cls);
        zzeb zzebVarZzc = this.zza.zzc(cls);
        return zzebVarZzc.zza() ? zzda.class.isAssignableFrom(cls) ? zzei.zzg(zzer.zzC(), zzcs.zza(), zzebVarZzc.zzb()) : zzei.zzg(zzer.zzA(), zzcs.zzb(), zzebVarZzc.zzb()) : zzda.class.isAssignableFrom(cls) ? zzb(zzebVarZzc) ? zzeh.zzg(cls, zzebVarZzc, zzek.zzb(), zzds.zzd(), zzer.zzC(), zzcs.zza(), zzea.zzb()) : zzeh.zzg(cls, zzebVarZzc, zzek.zzb(), zzds.zzd(), zzer.zzC(), null, zzea.zzb()) : zzb(zzebVarZzc) ? zzeh.zzg(cls, zzebVarZzc, zzek.zza(), zzds.zzc(), zzer.zzA(), zzcs.zzb(), zzea.zza()) : zzeh.zzg(cls, zzebVarZzc, zzek.zza(), zzds.zzc(), zzer.zzB(), null, zzea.zza());
    }
}
