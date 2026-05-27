package com.texa.carelib.core.utils.internal;

import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadUtils {
    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
