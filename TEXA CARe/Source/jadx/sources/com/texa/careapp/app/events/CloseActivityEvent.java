package com.texa.careapp.app.events;

import com.texa.careapp.base.BaseActivity;

/* JADX INFO: loaded from: classes2.dex */
public class CloseActivityEvent {
    private Class<? extends BaseActivity> activity;
    private String activityCanonicalName;

    public CloseActivityEvent(String str) {
        this.activityCanonicalName = str;
    }

    public CloseActivityEvent(Class<? extends BaseActivity> cls) {
        this.activity = cls;
    }

    public String getActivityTag() {
        return this.activityCanonicalName;
    }

    public Class<? extends BaseActivity> getActivity() {
        return this.activity;
    }
}
