package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzcx;
import com.google.android.gms.internal.icing.zzda;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class zzcx<MessageType extends zzda<MessageType, BuilderType>, BuilderType extends zzcx<MessageType, BuilderType>> extends zzbr<MessageType, BuilderType> {
    protected MessageType zza;
    protected boolean zzb = false;
    private final MessageType zzc;

    protected zzcx(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (MessageType) messagetype.zzf(4, null, null);
    }

    private static final void zza(MessageType messagetype, MessageType messagetype2) {
        zzem.zza().zzb(messagetype.getClass()).zzc(messagetype, messagetype2);
    }

    @Override // com.google.android.gms.internal.icing.zzbr
    protected final /* bridge */ /* synthetic */ zzbr zze(zzbs zzbsVar) {
        zzk((zzda) zzbsVar);
        return this;
    }

    protected void zzg() {
        MessageType messagetype = (MessageType) this.zza.zzf(4, null, null);
        zza(messagetype, this.zza);
        this.zza = messagetype;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzbr
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.zzc.zzf(5, null, null);
        buildertype.zzk(zzl());
        return buildertype;
    }

    @Override // com.google.android.gms.internal.icing.zzed
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public MessageType zzl() {
        if (this.zzb) {
            return this.zza;
        }
        MessageType messagetype = this.zza;
        zzem.zza().zzb(messagetype.getClass()).zze(messagetype);
        this.zzb = true;
        return this.zza;
    }

    public final MessageType zzj() {
        MessageType messagetype = (MessageType) zzl();
        Boolean bool = Boolean.TRUE;
        boolean z = true;
        byte bByteValue = ((Byte) messagetype.zzf(1, null, null)).byteValue();
        if (bByteValue != 1) {
            if (bByteValue == 0) {
                z = false;
            } else {
                boolean zZzf = zzem.zza().zzb(messagetype.getClass()).zzf(messagetype);
                messagetype.zzf(2, true != zZzf ? null : messagetype, null);
                z = zZzf;
            }
        }
        if (z) {
            return messagetype;
        }
        throw new zzfc(messagetype);
    }

    public final BuilderType zzk(MessageType messagetype) {
        if (this.zzb) {
            zzg();
            this.zzb = false;
        }
        zza(this.zza, messagetype);
        return this;
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final /* bridge */ /* synthetic */ zzee zzm() {
        return this.zzc;
    }
}
