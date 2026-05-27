package org.apache.commons.collections4;

/* JADX INFO: loaded from: classes2.dex */
public interface BoundedMap<K, V> extends IterableMap<K, V> {
    boolean isFull();

    int maxSize();
}
