package com.google.firebase.appindexing.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.firebase.FirebaseExceptionMapper;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzr extends GoogleApi<Api.ApiOptions.NoOptions> {
    zzr(Context context) {
        super(context, com.google.android.gms.internal.icing.zze.zzb, Api.ApiOptions.NO_OPTIONS, new FirebaseExceptionMapper());
    }
}
