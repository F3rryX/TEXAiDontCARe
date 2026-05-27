package com.google.android.gms.location.places.ui;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzf implements View.OnClickListener {
    private final /* synthetic */ SupportPlaceAutocompleteFragment zzdm;

    zzf(SupportPlaceAutocompleteFragment supportPlaceAutocompleteFragment) {
        this.zzdm = supportPlaceAutocompleteFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzdm.setText("");
    }
}
