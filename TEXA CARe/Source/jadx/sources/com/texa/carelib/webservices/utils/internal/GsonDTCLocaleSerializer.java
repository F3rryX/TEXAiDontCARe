package com.texa.carelib.webservices.utils.internal;

import android.text.TextUtils;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class GsonDTCLocaleSerializer implements JsonSerializer<Locale>, JsonDeserializer<Locale> {
    public static final Locale LOCALE_DEFAULT = Locale.ENGLISH;
    public static final String LOCALE_DEFAULT_PLACEHOLDER = "default";

    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(Locale locale, Type type, JsonSerializationContext jsonSerializationContext) {
        if (locale == null) {
            return null;
        }
        return new JsonPrimitive(locale.toString());
    }

    @Override // com.google.gson.JsonDeserializer
    public Locale deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (jsonElement.isJsonNull() || jsonElement.getAsString() == null || jsonElement.getAsString().isEmpty()) {
            return null;
        }
        String strTrim = jsonElement.getAsString().trim();
        if (!StringUtils.isNullOrEmpty(strTrim) && LOCALE_DEFAULT_PLACEHOLDER.equalsIgnoreCase(strTrim)) {
            return LOCALE_DEFAULT;
        }
        String strReplace = strTrim.replace('-', '_');
        if (strReplace.contains("_")) {
            Matcher matcher = Pattern.compile("^([^_]*)(_([^_]*)(_#(.*))?)?$").matcher(strReplace);
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
        return new Locale(strReplace);
    }
}
