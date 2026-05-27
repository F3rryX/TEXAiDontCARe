package com.texa.carelib.core.utils.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class Check {
    public static boolean same(Object obj, Object obj2) {
        return obj == obj2;
    }

    public static void notNull(Object obj) {
        Objects.requireNonNull(obj);
    }

    public static void notNull(Object obj, String str) {
        Objects.requireNonNull(obj, str);
    }
}
