package com.texa.care.eco_driving.utils.jsonSerializer;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.texa.carelib.core.CounterInfo;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class CounterInfoSerializer implements JsonSerializer<CounterInfo> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(CounterInfo counterInfo, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(Integer.valueOf(counterInfo.getValue()));
    }
}
