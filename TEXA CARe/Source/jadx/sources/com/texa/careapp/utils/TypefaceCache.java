package com.texa.careapp.utils;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TypefaceCache {
    private static final Map<String, Typeface> CACHE = new HashMap();

    public static Typeface getTypeface(Context context, String str) {
        if (str == null) {
            return null;
        }
        Map<String, Typeface> map = CACHE;
        Typeface typeface = map.get(str);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), str);
        map.put(str, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }
}
