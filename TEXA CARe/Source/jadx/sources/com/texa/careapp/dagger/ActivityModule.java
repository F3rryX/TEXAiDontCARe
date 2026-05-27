package com.texa.careapp.dagger;

import android.app.Activity;
import dagger.Module;
import dagger.Provides;

/* JADX INFO: loaded from: classes2.dex */
@Module
public class ActivityModule {
    private final Activity activity;

    public ActivityModule(Activity activity) {
        this.activity = activity;
    }

    @Provides
    @PerActivity
    Activity activity() {
        return this.activity;
    }
}
