package com.texa.care.eco_driving.utils.jsonSerializer;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.texa.care.eco_driving.score.ScoreConfigurationProvider;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class ScoreConfigurationSerializer implements JsonSerializer<ScoreConfigurationProvider> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(ScoreConfigurationProvider scoreConfigurationProvider, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("driverProfile", scoreConfigurationProvider.getDrivingProfile().name());
        return jsonObject;
    }
}
