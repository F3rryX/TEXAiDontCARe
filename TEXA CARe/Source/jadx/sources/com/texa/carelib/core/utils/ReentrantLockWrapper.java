package com.texa.carelib.core.utils;

import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class ReentrantLockWrapper {
    private static final boolean D = false;
    private static final String TAG = "ReentrantLockWrapper";
    private final String mClassName;
    private boolean mIsDisposed = false;
    private final ReentrantLock mLock = new ReentrantLock();
    private final String mLockName;

    public ReentrantLockWrapper(String str, String str2) {
        this.mClassName = str;
        this.mLockName = str2;
    }

    protected void finalize() throws Throwable {
        if (!this.mIsDisposed) {
            this.mIsDisposed = true;
            if (this.mLock.isLocked()) {
                unlock("finalize()");
            }
        }
        super.finalize();
    }

    public boolean lock(String str) {
        this.mLock.lock();
        return true;
    }

    public boolean unlock(String str) {
        this.mLock.unlock();
        return true;
    }

    protected boolean isLock() {
        return this.mLock.isLocked();
    }
}
