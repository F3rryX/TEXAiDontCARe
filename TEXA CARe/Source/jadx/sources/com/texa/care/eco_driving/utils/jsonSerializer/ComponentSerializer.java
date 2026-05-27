package com.texa.care.eco_driving.utils.jsonSerializer;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.texa.care.eco_driving.score.OverallScore;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class ComponentSerializer implements JsonSerializer<OverallScore.Component> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(OverallScore.Component component, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("weight", Integer.valueOf(component.getWeight()));
        jsonObject.addProperty(FirebaseAnalytics.Param.SCORE, Integer.valueOf(component.getBaseScore().getScore()));
        jsonObject.addProperty("max_score", Integer.valueOf(component.getBaseScore().MAX_SCORE));
        jsonObject.addProperty("type", component.getBaseScore().getName());
        return jsonObject;
    }
}
