package com.google.android.gms.location.places.ui;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzd implements View.OnClickListener {
    private final /* synthetic */ PlaceAutocompleteFragment zzdl;

    zzd(PlaceAutocompleteFragment placeAutocompleteFragment) {
        this.zzdl = placeAutocompleteFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzdl.setText("");
    }
}
