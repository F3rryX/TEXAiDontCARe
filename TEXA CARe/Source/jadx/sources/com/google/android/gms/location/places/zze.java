package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.Client;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.zzm;

/* JADX INFO: loaded from: classes.dex */
public abstract class zze<A extends Api.Client> extends zzm.zzb<PlacePhotoResult, A> {
    public zze(Api api, GoogleApiClient googleApiClient) {
        super(api, googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected /* synthetic */ Result createFailedResult(Status status) {
        return new PlacePhotoResult(status, null);
    }
}
