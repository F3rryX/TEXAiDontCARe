package com.google.android.gms.internal.places;

import com.google.android.gms.internal.places.zzm;
import com.google.android.gms.internal.places.zzo;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzo<MessageType extends zzm<MessageType, BuilderType>, BuilderType extends zzo<MessageType, BuilderType>> implements zzcj {
    protected abstract BuilderType zzb(MessageType messagetype);

    @Override // 
    /* JADX INFO: renamed from: zzx, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    @Override // com.google.android.gms.internal.places.zzcj
    public final /* synthetic */ zzcj zzb(zzck zzckVar) {
        if (!zzbg().getClass().isInstance(zzckVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return zzb((zzm) zzckVar);
    }
}
