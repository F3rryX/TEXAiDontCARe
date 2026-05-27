package com.texa.carelib.utils.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class GsonEscapeStringSerializer implements JsonSerializer<String> {
    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(String str, Type type, JsonSerializationContext jsonSerializationContext) {
        return new JsonPrimitive(escapeJS(str));
    }

    public static String escapeJS(String str) {
        String[][] strArr = {new String[]{"\\", "\\\\"}, new String[]{"\"", "\\\""}};
        for (int i = 0; i < 2; i++) {
            String[] strArr2 = strArr[i];
            str = str.replace(strArr2[0], strArr2[1]);
        }
        return str;
    }
}
