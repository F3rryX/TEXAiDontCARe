package com.texa.carelib.care.diagnosticconfiguration.internal;

import com.texa.carelib.core.logging.CareLog;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationReportParser {
    private static final String TAG = "ConfigurationReportParser";

    public static boolean isGoodReport(int i) {
        return i == 0;
    }

    public static int getReportStatus(File file) throws FileNotFoundException {
        if (file != null) {
            return getReportStatus(readReportHeader(file));
        }
        return -1;
    }

    public static int getReportStatus(byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            return -1;
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getInt();
    }

    public static boolean isGoodReport(File file) throws FileNotFoundException {
        if (file == null) {
            return false;
        }
        return isGoodReport(readReportHeader(file));
    }

    public static boolean isGoodReport(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        return isGoodReport(getReportStatus(bArr));
    }

    protected static byte[] readReportHeader(File file) throws FileNotFoundException {
        if (!file.exists()) {
            throw new FileNotFoundException("File not found: " + file.getAbsolutePath());
        }
        try {
            if (!file.canRead()) {
                throw new IOException("Could not read report file. Check file permissions.");
            }
            return readReportHeader(new FileInputStream(file));
        } catch (IOException e) {
            CareLog.e(TAG, "Couldn't read the report header", e);
            return null;
        }
    }

    protected static byte[] readReportHeader(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte[] bArr = new byte[4];
        int i = dataInputStream.read(bArr);
        dataInputStream.close();
        if (i == 4) {
            return bArr;
        }
        throw new IOException("Invalid report header. Bytes read: " + i + " Expected: 4");
    }
}
