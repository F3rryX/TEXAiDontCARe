package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
/* JADX INFO: loaded from: classes.dex */
final class zan implements Runnable {
    final /* synthetic */ zal zaa;
    private final zak zab;

    zan(zal zalVar, zak zakVar) {
        this.zaa = zalVar;
        this.zab = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zaa.zaa) {
            ConnectionResult connectionResultZab = this.zab.zab();
            if (connectionResultZab.hasResolution()) {
                this.zaa.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(this.zaa.getActivity(), (PendingIntent) Preconditions.checkNotNull(connectionResultZab.getResolution()), this.zab.zaa(), false), 1);
                return;
            }
            if (this.zaa.zac.getErrorResolutionIntent(this.zaa.getActivity(), connectionResultZab.getErrorCode(), null) != null) {
                this.zaa.zac.zaa(this.zaa.getActivity(), this.zaa.mLifecycleFragment, connectionResultZab.getErrorCode(), 2, this.zaa);
            } else if (connectionResultZab.getErrorCode() == 18) {
                this.zaa.zac.zaa(this.zaa.getActivity().getApplicationContext(), new zam(this, GoogleApiAvailability.zaa(this.zaa.getActivity(), this.zaa)));
            } else {
                this.zaa.zaa(connectionResultZab, this.zab.zaa());
            }
        }
    }
}
