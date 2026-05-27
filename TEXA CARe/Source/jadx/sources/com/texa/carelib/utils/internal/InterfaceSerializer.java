package com.texa.carelib.utils.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class InterfaceSerializer<T> implements JsonSerializer<T> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(T t, Type type, JsonSerializationContext jsonSerializationContext) {
        return jsonSerializationContext.serialize(t, t.getClass());
    }
}
