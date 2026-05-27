package com.texa.careapp.utils;

import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class DimensionConverter {
    public static final Map<String, Integer> dimensionConstantLookup = initDimensionConstantLookup();
    private static final Pattern DIMENSION_PATTERN = Pattern.compile("^\\s*(\\d+(\\.\\d+)*)\\s*([a-zA-Z]+)\\s*$");

    private static Map<String, Integer> initDimensionConstantLookup() {
        HashMap map = new HashMap();
        map.put("px", 0);
        map.put("dip", 1);
        map.put("dp", 1);
        map.put("sp", 2);
        map.put("pt", 3);
        map.put("in", 4);
        map.put("mm", 5);
        return Collections.unmodifiableMap(map);
    }

    public static int stringToDimensionPixelSize(String str, DisplayMetrics displayMetrics) {
        InternalDimension internalDimensionStringToInternalDimension = stringToInternalDimension(str);
        float f = internalDimensionStringToInternalDimension.value;
        int iApplyDimension = (int) (TypedValue.applyDimension(internalDimensionStringToInternalDimension.unit, f, displayMetrics) + 0.5f);
        if (iApplyDimension != 0) {
            return iApplyDimension;
        }
        if (f == 0.0f) {
            return 0;
        }
        return f > 0.0f ? 1 : -1;
    }

    public static float stringToDimension(String str, DisplayMetrics displayMetrics) {
        InternalDimension internalDimensionStringToInternalDimension = stringToInternalDimension(str);
        return TypedValue.applyDimension(internalDimensionStringToInternalDimension.unit, internalDimensionStringToInternalDimension.value, displayMetrics);
    }

    private static InternalDimension stringToInternalDimension(String str) {
        Matcher matcher = DIMENSION_PATTERN.matcher(str);
        if (matcher.matches()) {
            float fFloatValue = Float.valueOf(matcher.group(1)).floatValue();
            Integer num = dimensionConstantLookup.get(matcher.group(3).toLowerCase());
            if (num == null) {
                throw new NumberFormatException();
            }
            return new InternalDimension(fFloatValue, num.intValue());
        }
        throw new NumberFormatException();
    }

    private static class InternalDimension {
        int unit;
        float value;

        public InternalDimension(float f, int i) {
            this.value = f;
            this.unit = i;
        }
    }
}
