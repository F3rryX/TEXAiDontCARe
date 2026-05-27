package com.texa.carelib.utils.internal;

import android.text.TextUtils;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class GsonLocaleSerializer implements JsonSerializer<Locale>, JsonDeserializer<Locale> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(Locale locale, Type type, JsonSerializationContext jsonSerializationContext) {
        if (locale == null) {
            return null;
        }
        return new JsonPrimitive(locale.toString());
    }

    @Override // com.google.gson.JsonDeserializer
    public Locale deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement == null || jsonElement.isJsonNull() || TextUtils.isEmpty(jsonElement.getAsString())) {
            return null;
        }
        Matcher matcher = Pattern.compile("^([^_]*)(_([^_]*)(_#(.*))?)?$").matcher(jsonElement.getAsString().trim().replace('-', '_'));
        if (!matcher.find()) {
            return null;
        }
        if (TextUtils.isEmpty(matcher.group(5))) {
            if (TextUtils.isEmpty(matcher.group(3))) {
                if (TextUtils.isEmpty(matcher.group(1))) {
                    return null;
                }
                return new Locale(matcher.group(1));
            }
            return new Locale(matcher.group(1), matcher.group(3));
        }
        return new Locale(matcher.group(1), matcher.group(3), matcher.group(5));
    }
}
