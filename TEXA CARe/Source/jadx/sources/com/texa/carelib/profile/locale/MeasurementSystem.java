package com.texa.carelib.profile.locale;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum MeasurementSystem {
    International,
    ImperialUK,
    UnitedStates;

    private static final Map<MeasurementSystem, List<String>> CONFIG;

    static {
        MeasurementSystem measurementSystem = UnitedStates;
        HashMap map = new HashMap();
        CONFIG = map;
        map.put(measurementSystem, Arrays.asList("US", "USA"));
    }

    public static MeasurementSystem getDefault() {
        return forCountry(Locale.getDefault().getCountry());
    }

    public static MeasurementSystem forCountry(String str) {
        for (Map.Entry<MeasurementSystem, List<String>> entry : CONFIG.entrySet()) {
            if (entry.getValue().contains(str)) {
                return entry.getKey();
            }
        }
        return International;
    }
}
