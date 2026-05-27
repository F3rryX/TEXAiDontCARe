package com.texa.care.eco_driving.utils.jsonSerializer;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;

/* JADX INFO: loaded from: classes.dex */
public class ExclusionForEventHub implements ExclusionStrategy {
    @Override // com.google.gson.ExclusionStrategy
    public boolean shouldSkipClass(Class<?> cls) {
        return false;
    }

    @Override // com.google.gson.ExclusionStrategy
    public boolean shouldSkipField(FieldAttributes fieldAttributes) {
        return fieldAttributes.getAnnotation(ExcludedFromEventHub.class) != null;
    }
}
