package com.texa.carelib.care.accessory;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessoryStatus {
    public static final int BASIC_CONFIGURATION_AND_OBD_CONNECTED = 132;
    public static final int BASIC_CONFIGURATION_BUT_OBD_NOT_CONNECTED = 130;
    public static final int BUSY = 0;
    public static final int CONFIGURATION_VERIFY_IN_PROGRESS = 1;
    public static final int CONFIGURED_AND_OBD_CONNECTED = 4;
    public static final int CONFIGURED_BUT_OBD_NOT_CONNECTED = 2;
    public static final int CORRUPTED_DEVICE = 5;
    public static final int MEMORY_PROBLEM = 6;
    public static final int NOT_CONFIGURED_AND_OBD_NOT_CONNECTED = 7;
    public static final int NOT_CONFIGURED_BUT_OBD_CONNECTED = 3;
    public static final int UNDEF = 255;
    private static SparseArray<String> mStatusNames;

    private AccessoryStatus() {
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        mStatusNames = sparseArray;
        sparseArray.put(255, "UNDEF");
        mStatusNames.put(0, "BUSY");
        mStatusNames.put(1, "CONFIGURATION_VERIFY_IN_PROGRESS");
        mStatusNames.put(2, "CONFIGURED_BUT_OBD_NOT_CONNECTED");
        mStatusNames.put(3, "NOT_CONFIGURED_BUT_OBD_CONNECTED");
        mStatusNames.put(4, "CONFIGURED_AND_OBD_CONNECTED");
        mStatusNames.put(5, "CORRUPTED_DEVICE");
        mStatusNames.put(6, "MEMORY_PROBLEM");
        mStatusNames.put(7, "NOT_CONFIGURED_AND_OBD_NOT_CONNECTED");
        mStatusNames.put(130, "BASIC_CONFIGURATION_BUT_OBD_NOT_CONNECTED");
        mStatusNames.put(132, "BASIC_CONFIGURATION_AND_OBD_CONNECTED");
    }

    public static String getName(int i) {
        return mStatusNames.get(i, "Unknown");
    }
}
