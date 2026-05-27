package com.google.android.gms.location.places;

import com.google.android.gms.common.api.DataBufferResponse;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PlaceBufferResponse extends DataBufferResponse<Place, PlaceBuffer> {
    PlaceBufferResponse() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CharSequence getAttributions() {
        return ((PlaceBuffer) getResult()).getAttributions();
    }
}
