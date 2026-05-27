package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@17.5.0 */
/* JADX INFO: loaded from: classes.dex */
public interface zam {
    ExecutorService zaa(int i, int i2);

    ExecutorService zaa(int i, ThreadFactory threadFactory, int i2);

    ExecutorService zaa(ThreadFactory threadFactory, int i);
}
