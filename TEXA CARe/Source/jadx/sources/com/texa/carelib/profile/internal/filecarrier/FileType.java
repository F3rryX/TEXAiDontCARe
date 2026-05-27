package com.texa.carelib.profile.internal.filecarrier;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public final class FileType {
    public static final int FILE_ECU_FLASH_FILE = 37;
    public static final int FILE_ECU_REPORT_FILE = 38;
    public static final int FILE_TYPE_AUTODETECT = 2;
    public static final int FILE_TYPE_CERTIFICATE = 32;
    public static final int FILE_TYPE_CONFIGURATION = 1;
    public static final int FILE_TYPE_CONFIG_REPORT = 17;
    public static final int FILE_TYPE_CRASH_DATA = 20;
    public static final int FILE_TYPE_DETECT_REPORT = 18;
    public static final int FILE_TYPE_DIAGNOSTIC_DATABASE = 21;
    public static final int FILE_TYPE_PATCH_RAM = 4;
    public static final int FILE_TYPE_SERVICE_FIRMWARE = 5;
    public static final int FILE_TYPE_TEST = 6;
    public static final int FILE_TYPE_TRIP_DATA = 19;
    public static final int FILE_TYPE_TRIP_DATA_LOG = 36;
    public static final int FILE_TYPE_UNDEFINED = 255;
    public static final int FILE_TYPE_USER_FIRMWARE = 3;
    private static SparseArray<String> _FileTypeNames;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        _FileTypeNames = sparseArray;
        sparseArray.append(1, "FILE_TYPE_CONFIGURATION");
        _FileTypeNames.append(2, "FILE_TYPE_AUTODETECT");
        _FileTypeNames.append(3, "FILE_TYPE_USER_FIRMWARE");
        _FileTypeNames.append(4, "FILE_TYPE_PATCH_RAM");
        _FileTypeNames.append(5, "FILE_TYPE_SERVICE_FIRMWARE");
        _FileTypeNames.append(6, "FILE_TYPE_TEST");
        _FileTypeNames.append(17, "FILE_TYPE_CONFIG_REPORT");
        _FileTypeNames.append(18, "FILE_TYPE_DETECT_REPORT");
        _FileTypeNames.append(19, "FILE_TYPE_TRIP_DATA");
        _FileTypeNames.append(20, "FILE_TYPE_CRASH_DATA");
        _FileTypeNames.append(32, "FILE_TYPE_CERTIFICATE");
        _FileTypeNames.append(36, "FILE_TYPE_TRIP_DATA_LOG");
        _FileTypeNames.append(37, "FILE_ECU_FLASH_FILE");
        _FileTypeNames.append(38, "FILE_ECU_REPORT_FILE");
    }

    public static String getName(int i) {
        return _FileTypeNames.get(i, "FILE_TYPE_UNDEFINED");
    }
}
