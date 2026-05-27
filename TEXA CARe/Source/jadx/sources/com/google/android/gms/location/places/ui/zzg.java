package com.google.android.gms.location.places.ui;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class zzg implements View.OnClickListener {
    private final /* synthetic */ SupportPlaceAutocompleteFragment zzdm;

    zzg(SupportPlaceAutocompleteFragment supportPlaceAutocompleteFragment) {
        this.zzdm = supportPlaceAutocompleteFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.zzdm.zzdh) {
            return;
        }
        this.zzdm.zzn();
    }
}
