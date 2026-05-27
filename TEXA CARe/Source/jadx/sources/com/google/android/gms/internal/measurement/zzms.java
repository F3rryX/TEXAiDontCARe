package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public enum zzms {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(false),
    STRING(""),
    BYTE_STRING(zzix.zzb),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzms(Object obj) {
        this.zzk = obj;
    }
}
