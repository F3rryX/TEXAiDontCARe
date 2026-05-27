package org.apache.commons.collections4;

/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface Transformer<I, O> {
    O transform(I i);
}
