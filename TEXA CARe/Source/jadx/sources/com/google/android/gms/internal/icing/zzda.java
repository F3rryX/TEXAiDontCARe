package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzcx;
import com.google.android.gms.internal.icing.zzda;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzda<MessageType extends zzda<MessageType, BuilderType>, BuilderType extends zzcx<MessageType, BuilderType>> extends zzbs<MessageType, BuilderType> {
    private static final Map<Object, zzda<?, ?>> zzb = new ConcurrentHashMap();
    protected zzfe zzc = zzfe.zza();
    protected int zzd = -1;

    static <T extends zzda> T zzp(Class<T> cls) {
        Map<Object, zzda<?, ?>> map = zzb;
        zzda<?, ?> zzdaVar = map.get(cls);
        if (zzdaVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzdaVar = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzdaVar == null) {
            zzdaVar = (zzda) ((zzda) zzfn.zzc(cls)).zzf(6, null, null);
            if (zzdaVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzdaVar);
        }
        return zzdaVar;
    }

    protected static <T extends zzda> void zzq(Class<T> cls, T t) {
        zzb.put(cls, t);
    }

    protected static Object zzr(zzee zzeeVar, String str, Object[] objArr) {
        return new zzeo(zzeeVar, str, objArr);
    }

    static Object zzs(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static zzdf zzt() {
        return zzdt.zzd();
    }

    protected static zzdd zzu() {
        return zzco.zzd();
    }

    protected static zzdc zzv() {
        return zzbv.zzd();
    }

    protected static <E> zzdg<E> zzw() {
        return zzen.zzd();
    }

    protected static <E> zzdg<E> zzx(zzdg<E> zzdgVar) {
        int size = zzdgVar.size();
        return zzdgVar.zze(size == 0 ? 10 : size + size);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzem.zza().zzb(getClass()).zza(this, (zzda) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZzb = zzem.zza().zzb(getClass()).zzb(this);
        this.zza = iZzb;
        return iZzb;
    }

    public final String toString() {
        return zzeg.zza(this, super.toString());
    }

    protected abstract Object zzf(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.icing.zzbs
    final int zzi() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.icing.zzbs
    final void zzj(int i) {
        this.zzd = i;
    }

    protected final <MessageType extends zzda<MessageType, BuilderType>, BuilderType extends zzcx<MessageType, BuilderType>> BuilderType zzl() {
        return (BuilderType) zzf(5, null, null);
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final /* bridge */ /* synthetic */ zzee zzm() {
        return (zzda) zzf(6, null, null);
    }

    @Override // com.google.android.gms.internal.icing.zzee
    public final void zzn(zzcm zzcmVar) throws IOException {
        zzem.zza().zzb(getClass()).zzi(this, zzcn.zza(zzcmVar));
    }

    @Override // com.google.android.gms.internal.icing.zzee
    public final int zzo() {
        int i = this.zzd;
        if (i != -1) {
            return i;
        }
        int iZzd = zzem.zza().zzb(getClass()).zzd(this);
        this.zzd = iZzd;
        return iZzd;
    }

    @Override // com.google.android.gms.internal.icing.zzee
    public final /* bridge */ /* synthetic */ zzed zzy() {
        zzcx zzcxVar = (zzcx) zzf(5, null, null);
        zzcxVar.zzk(this);
        return zzcxVar;
    }
}
