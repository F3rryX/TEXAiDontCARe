package com.texa.carelib.core.internal;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ListenerList<T> extends ArrayList<T> {
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t) {
        return !super.contains(t) && super.add(t);
    }
}
