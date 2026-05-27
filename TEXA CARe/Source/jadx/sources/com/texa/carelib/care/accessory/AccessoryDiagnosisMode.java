package com.texa.carelib.care.accessory;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessoryDiagnosisMode {
    public static final int CONFIGURATION = 2;
    public static final int DIAGNOSIS_FORCED_STOP = 3;
    public static final int UNDEF = 0;
    public static final int WORKING = 1;
    private static SparseArray<String> mDiagnosisModeNames;

    private AccessoryDiagnosisMode() {
    }

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        mDiagnosisModeNames = sparseArray;
        sparseArray.put(0, "UNDEF");
        mDiagnosisModeNames.put(2, "CONFIGURATION");
        mDiagnosisModeNames.put(1, "WORKING");
        mDiagnosisModeNames.put(3, "DIAGNOSIS_FORCED_STOP");
    }

    public static String getName(int i) {
        return mDiagnosisModeNames.get(i, "Unknown");
    }
}
