package com.google.android.gms.location.places.ui;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zze implements View.OnClickListener {
    private final /* synthetic */ PlaceAutocompleteFragment zzdl;

    zze(PlaceAutocompleteFragment placeAutocompleteFragment) {
        this.zzdl = placeAutocompleteFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.zzdl.zzdh) {
            return;
        }
        this.zzdl.zzn();
    }
}
