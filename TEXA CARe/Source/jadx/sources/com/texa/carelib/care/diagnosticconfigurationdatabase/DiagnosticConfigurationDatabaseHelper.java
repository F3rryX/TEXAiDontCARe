package com.texa.carelib.care.diagnosticconfigurationdatabase;

import com.texa.carelib.core.utils.internal.FileUtils;
import com.texa.carelib.core.utils.internal.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class DiagnosticConfigurationDatabaseHelper {
    public static String getBundleNameFromDatabaseName(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = FileUtils.getFileNameWithoutExtension(str).split("_");
        return strArrSplit.length >= 4 ? StringUtils.join(strArrSplit, "_", 2, Math.max(4, strArrSplit.length - 2)) : "";
    }

    private DiagnosticConfigurationDatabaseHelper() {
    }
}
