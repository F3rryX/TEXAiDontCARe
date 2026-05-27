package org.apache.commons.collections4;

/* JADX INFO: loaded from: classes2.dex */
public interface OrderedBidiMap<K, V> extends BidiMap<K, V>, OrderedMap<K, V> {
    @Override // org.apache.commons.collections4.BidiMap
    OrderedBidiMap<V, K> inverseBidiMap();

    /* JADX INFO: renamed from: org.apache.commons.collections4.OrderedBidiMap$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
