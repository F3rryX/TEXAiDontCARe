package com.texa.careapp.utils.activeandroid;

import android.util.Log;
import com.activeandroid.serializer.TypeSerializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.texa.careapp.model.TripModel;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryStateSerializer extends TypeSerializer {
    public static final String TAG = "BatteryStateSerializer";

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return TripModel.BatteryState.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getSerializedType() {
        return String.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public String serialize(Object obj) {
        if (obj == null) {
            return "";
        }
        JsonObject jsonObject = new JsonObject();
        TripModel.BatteryState batteryState = (TripModel.BatteryState) obj;
        jsonObject.addProperty("off", Float.valueOf(batteryState.off));
        jsonObject.addProperty("on", Float.valueOf(batteryState.on));
        jsonObject.addProperty("min", Float.valueOf(batteryState.min));
        return jsonObject.toString();
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public TripModel.BatteryState deserialize(Object obj) {
        TripModel.BatteryState batteryState = new TripModel.BatteryState();
        if (obj == null) {
            Log.i(TAG, "deserialize obj null");
            return batteryState;
        }
        JsonObject jsonObject = (JsonObject) new JsonParser().parse(obj.toString());
        JsonElement jsonElement = jsonObject.has("off") ? jsonObject.get("off") : null;
        JsonElement jsonElement2 = jsonObject.has("on") ? jsonObject.get("on") : null;
        JsonElement jsonElement3 = jsonObject.has("min") ? jsonObject.get("min") : null;
        if (jsonElement != null) {
            batteryState.off = jsonElement.getAsFloat();
        }
        if (jsonElement2 != null) {
            batteryState.on = jsonElement2.getAsFloat();
        }
        if (jsonElement3 != null) {
            batteryState.min = jsonElement3.getAsFloat();
        }
        return batteryState;
    }
}
