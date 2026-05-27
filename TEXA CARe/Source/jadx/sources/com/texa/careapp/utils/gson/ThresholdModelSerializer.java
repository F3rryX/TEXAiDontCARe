package com.texa.careapp.utils.gson;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.utils.DateTypeAdapter;
import java.lang.reflect.Type;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class ThresholdModelSerializer implements JsonSerializer<ThresholdModel> {
    public static final String PROPERTY_DATE = "date";
    public static final String PROPERTY_ODOMETER = "odometer";
    private Gson mGson = new GsonBuilder().registerTypeAdapter(Date.class, new DateTypeAdapter()).create();

    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(ThresholdModel thresholdModel, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        if (thresholdModel.getDate() != null) {
            jsonObject2.add("date", this.mGson.toJsonTree(thresholdModel.getDate()));
        }
        if (thresholdModel.getOdometer() != null) {
            jsonObject2.addProperty("odometer", thresholdModel.getOdometer());
        }
        jsonObject.add(this.mGson.toJsonTree(thresholdModel.getType()).getAsString(), jsonObject2);
        return jsonObject;
    }
}
