package com.google.android.gms.internal.icing;

import android.content.Context;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzbd extends zzbh {
    private final Context zza;
    private final zzbm zzb;

    zzbd(Context context, @Nullable zzbm zzbmVar) {
        Objects.requireNonNull(context, "Null context");
        this.zza = context;
        this.zzb = zzbmVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbh) {
            zzbh zzbhVar = (zzbh) obj;
            if (this.zza.equals(zzbhVar.zza()) && this.zzb.equals(zzbhVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode();
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zza);
        String strValueOf2 = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 46 + String.valueOf(strValueOf2).length());
        sb.append("FlagsContext{context=");
        sb.append(strValueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(strValueOf2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.icing.zzbh
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.icing.zzbh
    @Nullable
    final zzbm zzb() {
        return this.zzb;
    }
}
