package com.texa.carelib.core.utils.internal;

import com.texa.carelib.core.logging.CareLog;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FileCacheSupport {
    private static final String TAG = "FileCacheSupport";

    public static void clear(File file) throws IOException {
        clear(file, null);
    }

    public static void clear(File file, String str) throws IOException {
        if (StringUtils.isNullOrEmpty(str)) {
            FileUtils.cleanDirectory(file);
        } else {
            FileUtils.cleanDirectory(getDir(file, str));
        }
    }

    public static File create(File file, String str) throws IOException {
        return create(file, null, str, 0);
    }

    public static File create(File file, String str, String str2) throws IOException {
        return create(file, str, str2, 0);
    }

    public static File create(File file, String str, int i) throws IOException {
        return create(file, null, str, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static File create(File file, String str, String str2, int i) throws Throwable {
        Throwable th;
        RandomAccessFile randomAccessFile;
        IOException e;
        File file2 = new File(getDir(file, str), str2);
        if (!file2.createNewFile()) {
            throw new IOException("Cannot create file:" + file2.getAbsolutePath());
        }
        if (i > 0) {
            int i2 = 0;
            i2 = 0;
            i2 = 0;
            i2 = 0;
            i2 = 0;
            try {
                try {
                    randomAccessFile = new RandomAccessFile(file2, "rw");
                    try {
                        randomAccessFile.setLength(i);
                        try {
                            randomAccessFile.close();
                            str2 = randomAccessFile;
                        } catch (IOException e2) {
                            String str3 = TAG;
                            Object[] objArr = new Object[0];
                            CareLog.e(str3, e2, "Could not release file instance.", objArr);
                            i2 = objArr;
                            str2 = str3;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        CareLog.e(TAG, e, "Could not allocate space for the file.", new Object[0]);
                        str2 = randomAccessFile;
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                                str2 = randomAccessFile;
                            } catch (IOException e4) {
                                String str4 = TAG;
                                Object[] objArr2 = new Object[0];
                                CareLog.e(str4, e4, "Could not release file instance.", objArr2);
                                i2 = objArr2;
                                str2 = str4;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (str2 != 0) {
                        try {
                            str2.close();
                        } catch (IOException e5) {
                            CareLog.e(TAG, e5, "Could not release file instance.", new Object[i2]);
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                randomAccessFile = null;
                e = e6;
            } catch (Throwable th3) {
                str2 = 0;
                th = th3;
                if (str2 != 0) {
                }
                throw th;
            }
        }
        return file2;
    }

    public static boolean delete(File file, String str) throws IOException {
        File file2 = getFile(file, str);
        if (file2 == null || !file2.exists()) {
            return true;
        }
        return file2.delete();
    }

    public static boolean delete(File file, String str, String str2) throws IOException {
        File file2 = getFile(file, str, str2);
        if (file2 == null || !file2.exists()) {
            return true;
        }
        return file2.delete();
    }

    public static long getCacheSize(File file) throws IOException {
        return getCacheSize(file, null);
    }

    public static long getCacheSize(File file, String str) throws IOException {
        Iterator<File> it = getFiles(getDir(file, str)).iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }

    public static File getDir(File file) throws IOException {
        return getDir(file, null);
    }

    public static File getDir(File file, String str) throws IOException {
        if (StringUtils.isNullOrEmpty(str)) {
            return file;
        }
        File file2 = new File(file, str);
        if (file2.exists() || file2.mkdirs()) {
            return file2;
        }
        throw new IOException("Could not create the requested sub directory");
    }

    public static File getFile(File file, String str) throws IOException {
        return getFile(file, null, str);
    }

    public static File getFile(File file, String str, final String str2) throws IOException {
        if (StringUtils.isNullOrEmpty(str2)) {
            CareLog.e(TAG, "fileName cannot be null or empty.", new Object[0]);
            return null;
        }
        File[] fileArrListFiles = getDir(file, str).listFiles(new FilenameFilter() { // from class: com.texa.carelib.core.utils.internal.FileCacheSupport$$ExternalSyntheticLambda0
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str3) {
                return StringUtils.equals(str2, str3);
            }
        });
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return null;
        }
        return fileArrListFiles[0];
    }

    public static int getFileCount(File file) throws IOException {
        return getFiles(file).size();
    }

    public static int getFileCount(File file, String str) throws IOException {
        return getFiles(getDir(file, str)).size();
    }

    public static List<File> getFiles(File file) throws IOException {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                arrayList.add(file2);
            } else if (file2.isDirectory()) {
                arrayList.addAll(getFiles(file2));
            }
        }
        return arrayList;
    }

    public static List<File> getFiles(File file, String str) throws IOException {
        return getFiles(getDir(file, str));
    }

    public static File store(File file, String str, char[] cArr) throws IOException {
        byte[] byteArray = ConversionUtils.toByteArray(cArr);
        if (byteArray == null) {
            throw new IOException("Invalid data provided.");
        }
        return store(file, str, byteArray);
    }

    public static File store(File file, String str, byte[] bArr) throws IOException {
        return store(file, (String) null, str, bArr);
    }

    public static File store(File file, String str, String str2, char[] cArr) throws IOException {
        byte[] byteArray = ConversionUtils.toByteArray(cArr);
        if (byteArray == null) {
            throw new IOException("Invalid data provided.");
        }
        return store(file, str, str2, byteArray);
    }

    public static File store(File file, String str, String str2, byte[] bArr) throws IOException {
        if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("fileName cannot be null or empty.");
        }
        File file2 = new File(getDir(file, str), str2);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
        return file2;
    }

    public static File store(File file, String str, File file2) throws IOException {
        return store(file, (String) null, str, file2);
    }

    public static File store(File file, String str, String str2, File file2) throws IOException {
        if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("fileName cannot be null or empty.");
        }
        File file3 = new File(getDir(file, str).getAbsolutePath(), str2);
        FileUtils.copy(file2, file3);
        return file3;
    }
}
