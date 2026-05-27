package com.texa.carelib.core.utils;

/* JADX INFO: loaded from: classes2.dex */
public interface GenericAdapter<F, T> {
    T adaptee(F f);

    boolean equals(Object obj);
}
