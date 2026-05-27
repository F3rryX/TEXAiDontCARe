package org.apache.commons.collections4;

import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface SetValuedMap<K, V> extends MultiValuedMap<K, V> {
    @Override // org.apache.commons.collections4.MultiValuedMap
    Set<V> get(K k);

    @Override // org.apache.commons.collections4.MultiValuedMap
    Set<V> remove(Object obj);

    /* JADX INFO: renamed from: org.apache.commons.collections4.SetValuedMap$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }
}
