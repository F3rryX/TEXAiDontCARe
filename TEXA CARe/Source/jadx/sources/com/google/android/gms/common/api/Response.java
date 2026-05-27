package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class Response<T extends Result> {
    private T zza;

    public Response() {
    }

    protected Response(T t) {
        this.zza = t;
    }

    protected T getResult() {
        return this.zza;
    }

    public void setResult(T t) {
        this.zza = t;
    }
}
