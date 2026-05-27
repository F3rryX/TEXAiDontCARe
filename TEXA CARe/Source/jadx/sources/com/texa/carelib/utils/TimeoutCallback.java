package com.texa.carelib.utils;

/* JADX INFO: loaded from: classes2.dex */
public interface TimeoutCallback {
    boolean cancel();

    boolean set(Runnable runnable, long j);
}
