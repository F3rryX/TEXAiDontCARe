package com.google.android.gms.internal.icing;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfl extends zzfm {
    zzfl(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zza(Object obj, long j, byte b) {
        if (zzfn.zzb) {
            zzfn.zzD(obj, j, b);
        } else {
            zzfn.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final boolean zzb(Object obj, long j) {
        return zzfn.zzb ? zzfn.zzv(obj, j) : zzfn.zzw(obj, j);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.icing.zzfn.zzx(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:80)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:50)
        Caused by: java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1695)
        	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1660)
        	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:139)
        	at jadx.core.dex.instructions.args.SSAVar.use(SSAVar.java:132)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:506)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:100)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:509)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1125)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1134)
        	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:89)
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:78)
        	... 1 more
        */
    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zzc(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.gms.internal.icing.zzfn.zzb
            if (r0 == 0) goto L8
            com.google.android.gms.internal.icing.zzfn.zzx(r2, r3, r5)
            return
        L8:
            com.google.android.gms.internal.icing.zzfn.zzy(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfl.zzc(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zze(Object obj, long j, float f) {
        zzl(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zzg(Object obj, long j, double d) {
        zzn(obj, j, Double.doubleToLongBits(d));
    }
}
