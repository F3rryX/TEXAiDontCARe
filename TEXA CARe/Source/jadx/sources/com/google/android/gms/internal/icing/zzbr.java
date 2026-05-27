package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzbr;
import com.google.android.gms.internal.icing.zzbs;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbr<MessageType extends zzbs<MessageType, BuilderType>, BuilderType extends zzbr<MessageType, BuilderType>> implements zzed {
    @Override // 
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    protected abstract BuilderType zze(MessageType messagetype);

    @Override // com.google.android.gms.internal.icing.zzed
    public final /* bridge */ /* synthetic */ zzed zzf(zzee zzeeVar) {
        if (zzm().getClass().isInstance(zzeeVar)) {
            return zze((zzbs) zzeeVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
