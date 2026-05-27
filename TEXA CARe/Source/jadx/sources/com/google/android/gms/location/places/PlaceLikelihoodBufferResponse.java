package com.google.android.gms.location.places;

import com.google.android.gms.common.api.DataBufferResponse;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PlaceLikelihoodBufferResponse extends DataBufferResponse<PlaceLikelihood, PlaceLikelihoodBuffer> {
    PlaceLikelihoodBufferResponse() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CharSequence getAttributions() {
        return ((PlaceLikelihoodBuffer) getResult()).getAttributions();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        return ((PlaceLikelihoodBuffer) getResult()).toString();
    }
}
