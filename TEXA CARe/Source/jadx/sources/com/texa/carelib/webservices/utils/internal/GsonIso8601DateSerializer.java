package com.texa.carelib.webservices.utils.internal;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class GsonIso8601DateSerializer implements JsonSerializer<Date>, JsonDeserializer<Date> {
    private static final String COMPAT_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static final String FULL_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    private static final int ISO8601_COLON_INDEX = 26;
    private static final char ISO8601_TZ_INFO_IS_JUST_Z = 'Z';

    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonSerializationContext) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        if (date == null) {
            return null;
        }
        return new JsonPrimitive(simpleDateFormat.format(date));
    }

    @Override // com.google.gson.JsonDeserializer
    public Date deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement.isJsonNull() || jsonElement.getAsString() == null || jsonElement.getAsString().isEmpty()) {
            return null;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(FULL_FORMAT_STRING, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        StringBuilder sb = new StringBuilder(jsonElement.getAsString().trim());
        if (sb.charAt(sb.length() - 1) == 'Z') {
            sb.replace(sb.length() - 1, sb.length(), "+0000");
        } else {
            sb.deleteCharAt(26);
        }
        try {
            return simpleDateFormat.parse(sb.toString());
        } catch (ParseException unused) {
            throw new IllegalArgumentException("Couldn't parse date string. Original: " + jsonElement.getAsString() + "; After custom processing: " + sb.toString());
        }
    }
}
