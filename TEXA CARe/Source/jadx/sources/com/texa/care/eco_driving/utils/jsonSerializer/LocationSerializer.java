package com.texa.care.eco_driving.utils.jsonSerializer;

import android.location.Location;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
public class LocationSerializer implements JsonSerializer<Location> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(Location location, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("lat", Double.valueOf(location.getLatitude()));
        jsonObject.addProperty("lng", Double.valueOf(location.getLongitude()));
        jsonObject.addProperty("accuracy", Float.valueOf(location.getAccuracy()));
        return jsonObject;
    }
}
