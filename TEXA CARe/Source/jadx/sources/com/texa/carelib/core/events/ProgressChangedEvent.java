package com.texa.carelib.core.events;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProgressChangedEvent extends EventBase {
    private final float mProgress;

    public ProgressChangedEvent(Object obj, float f) {
        super(obj);
        this.mProgress = f;
    }

    public float getProgress() {
        return this.mProgress;
    }
}
