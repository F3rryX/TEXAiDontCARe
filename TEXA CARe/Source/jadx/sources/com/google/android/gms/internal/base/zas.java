package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
/* JADX INFO: loaded from: classes.dex */
public class zas extends Handler {
    private static zar zaa;

    public zas() {
    }

    public zas(Looper looper) {
        super(looper);
    }

    public zas(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
