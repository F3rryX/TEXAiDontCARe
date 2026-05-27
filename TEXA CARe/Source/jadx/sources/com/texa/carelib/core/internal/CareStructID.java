package com.texa.carelib.core.internal;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum CareStructID {
    UNDEF(0, "N.A."),
    CRASH_REPORT_STANDARD(59649, "CRASH_REPORT_STANDARD"),
    CRASH_REPORT_STANDARD_NOT_VALIDATED(59652, "CRASH_REPORT_STANDARD_NOT_VALIDATED"),
    CRASH_REPORT_STANDARD_LOW_POWER(59653, "CRASH_REPORT_STANDARD_LOW_POWER"),
    CRASH_REPORT_VERBOSE(59650, "CRASH_REPORT_VERBOSE"),
    CRANK_REPORT_STANDBY(59906, "CRANK_REPORT_STANDBY"),
    CRANK_REPORT_OPERATING(59907, "CRANK_REPORT_OPERATING"),
    ROTATION_MATRIX(59651, "ROTATION_MATRIX"),
    TRIP_BEGIN_INFO(59395, "TRIP_BEGIN_INFO"),
    TRIP_END_INFO(59396, "TRIP_END_INFO"),
    TRIP_STATISTICS_INFO(59404, "TRIP_STATISTICS_INFO"),
    TRIP_ERROR_INFO(59400, "TRIP_ERROR_INFO"),
    ETRUCK_TRIP_BEGIN_INFO(60163, "ETRUCK_TRIP_BEGIN_INFO"),
    ETRUCK_TRIP_END_INFO(60164, "ETRUCK_TRIP_END_INFO"),
    ETRUCK_TRIP_STATISTICS_INFO(60172, "ETRUCK_TRIP_STATISTICS_INFO");

    private static final Map<Integer, CareStructID> CACHE = new HashMap();
    private int mID;
    private String mName;

    static {
        for (CareStructID careStructID : values()) {
            CACHE.put(Integer.valueOf(careStructID.getID()), careStructID);
        }
    }

    CareStructID(int i, String str) {
        this.mID = i;
        this.mName = str;
    }

    public int getID() {
        return this.mID;
    }

    public String getName() {
        return this.mName;
    }

    public static String getBlockName(int i) {
        return fromBlockID(i).getName();
    }

    public static CareStructID fromBlockID(int i) {
        Map<Integer, CareStructID> map = CACHE;
        if (map.containsKey(Integer.valueOf(i))) {
            return map.get(Integer.valueOf(i));
        }
        return UNDEF;
    }

    public static boolean isValidBlockID(int i) {
        return i != UNDEF.getID() && CACHE.containsKey(Integer.valueOf(i));
    }
}
