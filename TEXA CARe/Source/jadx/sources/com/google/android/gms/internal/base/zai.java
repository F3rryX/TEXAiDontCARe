package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
/* JADX INFO: loaded from: classes.dex */
final class zai extends Drawable.ConstantState {
    int zaa;
    int zab;

    zai(zai zaiVar) {
        if (zaiVar != null) {
            this.zaa = zaiVar.zaa;
            this.zab = zaiVar.zab;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zaf(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.zaa;
    }
}
