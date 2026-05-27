package com.google.android.gms.internal.icing;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbi<T> {
    public static final /* synthetic */ int zza = 0;

    @Nullable
    private static volatile zzbh zzc = null;
    private static volatile boolean zzd = false;
    private static final Object zzb = new Object();
    private static final AtomicReference<Collection<zzbi<?>>> zze = new AtomicReference<>();
    private static final zzbk zzf = new zzbk(zzbg.zza);
    private static final AtomicInteger zzg = new AtomicInteger();

    @Deprecated
    public static void zza(final Context context) {
        synchronized (zzb) {
            zzbh zzbhVar = zzc;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzbhVar == null || zzbhVar.zza() != context) {
                zzbe.zza();
                zzbj.zza();
                zzc = new zzbd(context, zzbo.zza(new zzbm(context) { // from class: com.google.android.gms.internal.icing.zzbf
                    private final Context zza;

                    {
                        this.zza = context;
                    }
                }));
                zzg.incrementAndGet();
            }
        }
    }
}
