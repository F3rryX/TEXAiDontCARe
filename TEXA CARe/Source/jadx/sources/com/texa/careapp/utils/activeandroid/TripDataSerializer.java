package com.texa.careapp.utils.activeandroid;

import android.util.Log;
import com.activeandroid.serializer.TypeSerializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.texa.careapp.model.TripModel;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class TripDataSerializer extends TypeSerializer {
    public static final String TAG = "TripDataSerializer";

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return TripModel.TripData.class;
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
        TripModel.TripData tripData = (TripModel.TripData) obj;
        jsonObject.addProperty("odo", Integer.valueOf(tripData.odo));
        if (tripData.time != null) {
            jsonObject.addProperty("time", Long.valueOf(tripData.time.getTime()));
        }
        return jsonObject.toString();
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public TripModel.TripData deserialize(Object obj) {
        TripModel.TripData tripData = new TripModel.TripData();
        if (obj == null) {
            Log.i(TAG, "deserialize obj null");
            return tripData;
        }
        JsonObject jsonObject = (JsonObject) new JsonParser().parse(obj.toString());
        JsonElement jsonElement = jsonObject.has("odo") ? jsonObject.get("odo") : null;
        JsonElement jsonElement2 = jsonObject.has("time") ? jsonObject.get("time") : null;
        if (jsonElement != null) {
            tripData.odo = jsonElement.getAsInt();
        }
        if (jsonElement2 != null) {
            tripData.time = new Date(jsonElement2.getAsLong());
        }
        return tripData;
    }
}
