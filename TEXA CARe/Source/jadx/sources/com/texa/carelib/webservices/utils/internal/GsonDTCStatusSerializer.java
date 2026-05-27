package com.texa.carelib.webservices.utils.internal;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.care.vehicletroubles.DTCStatus;
import com.texa.carelib.core.logging.CareLog;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class GsonDTCStatusSerializer implements JsonSerializer<DTCStatus>, JsonDeserializer<DTCStatus> {
    public static final String TAG = "GsonDTCStatusSerializer";

    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(DTCStatus dTCStatus, Type type, JsonSerializationContext jsonSerializationContext) {
        if (dTCStatus == null) {
            dTCStatus = DTCStatus.Unsupported;
        }
        SerializedName serializedName = null;
        try {
            serializedName = (SerializedName) DTCStatus.class.getField(dTCStatus.name()).getAnnotation(SerializedName.class);
        } catch (NoSuchFieldException e) {
            CareLog.e(TAG, e, "Could not find DTCStatus: %s", dTCStatus.name());
        }
        return new JsonPrimitive(serializedName != null ? serializedName.value() : "");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.JsonDeserializer
    public DTCStatus deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement.isJsonNull() || jsonElement.getAsString() == null || jsonElement.getAsString().isEmpty()) {
            return DTCStatus.Unsupported;
        }
        for (DTCStatus dTCStatus : (DTCStatus[]) DTCStatus.class.getEnumConstants()) {
            SerializedName serializedName = null;
            try {
                serializedName = (SerializedName) DTCStatus.class.getField(dTCStatus.name()).getAnnotation(SerializedName.class);
            } catch (NoSuchFieldException e) {
                CareLog.e(TAG, e, "Unknown DTCStatus value: %s", dTCStatus.name());
            }
            if (serializedName != null && jsonElement.getAsString().equals(serializedName.value())) {
                return dTCStatus;
            }
        }
        return DTCStatus.Unsupported;
    }
}
