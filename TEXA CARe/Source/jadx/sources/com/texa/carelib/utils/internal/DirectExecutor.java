package com.texa.carelib.utils.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class DirectExecutor implements Executor {
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
