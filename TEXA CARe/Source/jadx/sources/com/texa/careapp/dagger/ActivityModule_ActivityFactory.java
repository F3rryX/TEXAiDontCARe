package com.texa.careapp.dagger;

import android.app.Activity;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivityModule_ActivityFactory implements Factory<Activity> {
    private final ActivityModule module;

    public ActivityModule_ActivityFactory(ActivityModule activityModule) {
        this.module = activityModule;
    }

    @Override // javax.inject.Provider
    public Activity get() {
        return activity(this.module);
    }

    public static ActivityModule_ActivityFactory create(ActivityModule activityModule) {
        return new ActivityModule_ActivityFactory(activityModule);
    }

    public static Activity activity(ActivityModule activityModule) {
        return (Activity) Preconditions.checkNotNullFromProvides(activityModule.activity());
    }
}
