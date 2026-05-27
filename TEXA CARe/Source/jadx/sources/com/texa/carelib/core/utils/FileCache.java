package com.texa.carelib.core.utils;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface FileCache {
    public static final String DIR_CRASH_REPORTS = "crash_reports";
    public static final String DIR_DIAGNOSIS_CONFIGURATION = "diagnosis_configuration";
    public static final String DIR_ECU_PROGRAMMING_REPORT = "ecu_programming_report";
    public static final String DIR_MISC = "misc";
    public static final String DIR_TEMP = "temp";
    public static final String DIR_TRIPS = "trips";
    public static final String DIR_TRIP_DATA_LOGS = "trip_data_logs";
    public static final String TAG = "FileCache";

    boolean clear() throws IOException;

    File create(String str, int i) throws IOException;

    File create(String str, String str2, int i) throws IOException;

    boolean delete(String str, String str2) throws IOException;

    File getFile(String str) throws IOException;

    File getFile(String str, String str2) throws IOException;

    File getFolder(String str) throws IOException;

    File store(String str, String str2, File file) throws IOException;

    File store(String str, String str2, byte[] bArr) throws IOException;
}
