package com.texa.careapp.utils;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class UniqueList<T> extends ArrayList<T> {
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t) {
        if (contains(t)) {
            set(indexOf(t), t);
            return true;
        }
        return super.add(t);
    }

    public T nullSafeGet(int i) {
        if (!isEmpty() && i < size()) {
            return get(i);
        }
        return null;
    }
}
