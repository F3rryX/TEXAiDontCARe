package com.google.android.gms.internal.icing;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzbn<T> implements zzbm<T> {
    volatile zzbm<T> zza;

    zzbn(zzbm<T> zzbmVar) {
        this.zza = zzbmVar;
    }

    public final String toString() {
        Object string = this.zza;
        if (string == null) {
            StringBuilder sb = new StringBuilder("null".length() + 25);
            sb.append("<supplier that returned ");
            sb.append("null");
            sb.append(">");
            string = sb.toString();
        }
        String strValueOf = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 19);
        sb2.append("Suppliers.memoize(");
        sb2.append(strValueOf);
        sb2.append(")");
        return sb2.toString();
    }
}
