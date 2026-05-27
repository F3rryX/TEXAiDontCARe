package com.texa.carelib.core.utils.internal;

import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.Version;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    public static final String TAG = "FileUtils";

    public static void copy(File file, File file2) throws IOException {
        if (file2.getParentFile() != null && !file2.getParentFile().exists() && !file2.getParentFile().mkdirs()) {
            throw new IOException("Could not create directory: " + file2.getParentFile().getAbsolutePath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = fileInputStream.read(bArr);
            if (i > 0) {
                fileOutputStream.write(bArr, 0, i);
            } else {
                fileInputStream.close();
                fileOutputStream.close();
                return;
            }
        }
    }

    public static void moveFile(File file, File file2) throws IOException {
        copy(file, file2);
        if (file.delete()) {
            return;
        }
        CareLog.e(TAG, "Could not delete file: %s", file.getAbsolutePath());
    }

    public static void cleanDirectory(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("Failed to list contents of " + file);
        }
        IOException e = null;
        for (File file2 : fileArrListFiles) {
            try {
                forceDelete(file2);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public static void deleteDirectory(File file) throws IOException {
        if (file.exists()) {
            if (!isSymlink(file)) {
                cleanDirectory(file);
            }
            if (file.delete()) {
                return;
            }
            throw new IOException("Unable to delete directory " + file + Version.SEPARATOR);
        }
    }

    public static void forceDelete(File file) throws IOException {
        if (file.isDirectory()) {
            deleteDirectory(file);
            return;
        }
        boolean zExists = file.exists();
        if (file.delete()) {
            return;
        }
        if (!zExists) {
            throw new FileNotFoundException("File does not exist: " + file);
        }
        throw new IOException("Unable to delete file: " + file);
    }

    public static long getFolderSize(File file) {
        long folderSize;
        long j = 0;
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                folderSize = file2.length();
            } else {
                folderSize = getFolderSize(file2);
            }
            j += folderSize;
        }
        return j;
    }

    public static boolean isSymlink(File file) throws IOException {
        if (File.separatorChar == '\\') {
            return false;
        }
        if (file.getParent() != null) {
            file = new File(file.getParentFile().getCanonicalFile(), file.getName());
        }
        return !file.getCanonicalFile().equals(file.getAbsoluteFile());
    }

    public static byte[] readAllBytes(File file) throws Throwable {
        byte[] bArr;
        RandomAccessFile randomAccessFile;
        if (!file.exists()) {
            throw new FileNotFoundException();
        }
        RandomAccessFile randomAccessFile2 = null;
        bArr = null;
        byte[] bArr2 = null;
        RandomAccessFile randomAccessFile3 = null;
        RandomAccessFile randomAccessFile4 = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileNotFoundException e) {
            e = e;
            bArr = null;
        } catch (IOException e2) {
            e = e2;
            bArr = null;
        }
        try {
            bArr2 = new byte[(int) randomAccessFile.length()];
            randomAccessFile.read(bArr2);
            try {
                randomAccessFile.close();
            } catch (IOException e3) {
                CareLog.e(TAG, e3, "", new Object[0]);
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            bArr = bArr2;
            randomAccessFile4 = randomAccessFile;
            CareLog.e(TAG, e, "File not found.", new Object[0]);
            if (randomAccessFile4 != null) {
                try {
                    randomAccessFile4.close();
                } catch (IOException e5) {
                    CareLog.e(TAG, e5, "", new Object[0]);
                }
            }
            bArr2 = bArr;
        } catch (IOException e6) {
            e = e6;
            bArr = bArr2;
            randomAccessFile2 = randomAccessFile;
            CareLog.e(TAG, e, "Generic IO error.", new Object[0]);
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (IOException e7) {
                    CareLog.e(TAG, e7, "", new Object[0]);
                }
            }
            bArr2 = bArr;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile3 = randomAccessFile;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.close();
                } catch (IOException e8) {
                    CareLog.e(TAG, e8, "", new Object[0]);
                }
            }
            throw th;
        }
        return bArr2 == null ? new byte[0] : bArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static String readAll(File file) throws Throwable {
        if (!file.exists()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ?? r2 = 0;
        r2 = 0;
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        int i = 0;
        i = 0;
        i = 0;
        i = 0;
        i = 0;
        i = 0;
        i = 0;
        try {
            try {
                BufferedReader bufferedReader3 = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String line = bufferedReader3.readLine();
                        if (line != null) {
                            sb.append(line);
                        } else {
                            try {
                                break;
                            } catch (IOException e) {
                                String str = TAG;
                                Object[] objArr = new Object[0];
                                CareLog.e(str, e, "Generic IO error.", objArr);
                                r2 = str;
                                i = objArr;
                            }
                        }
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        bufferedReader = bufferedReader3;
                        CareLog.e(TAG, e, "Fine not found.", new Object[0]);
                        r2 = bufferedReader;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                                r2 = bufferedReader;
                            } catch (IOException e3) {
                                String str2 = TAG;
                                Object[] objArr2 = new Object[0];
                                CareLog.e(str2, e3, "Generic IO error.", objArr2);
                                r2 = str2;
                                i = objArr2;
                            }
                        }
                    } catch (IOException e4) {
                        e = e4;
                        bufferedReader2 = bufferedReader3;
                        CareLog.e(TAG, e, "Generic IO error.", new Object[0]);
                        r2 = bufferedReader2;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                                r2 = bufferedReader2;
                            } catch (IOException e5) {
                                String str3 = TAG;
                                Object[] objArr3 = new Object[0];
                                CareLog.e(str3, e5, "Generic IO error.", objArr3);
                                r2 = str3;
                                i = objArr3;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        r2 = bufferedReader3;
                        if (r2 != 0) {
                            try {
                                r2.close();
                            } catch (IOException e6) {
                                CareLog.e(TAG, e6, "Generic IO error.", new Object[i]);
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader3.close();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        }
        return sb.toString();
    }

    public static String readAll(FileInputStream fileInputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        new DataInputStream(bufferedInputStream);
        StringBuilder sb = new StringBuilder();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = bufferedInputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                sb.append(new String(bArr, 0, i));
            }
        } catch (IOException e) {
            CareLog.e(TAG, e, "Could not read input stream.", new Object[0]);
        }
        return sb.toString();
    }

    public static String getFileNameWithoutExtension(String str) {
        int iLastIndexOf = str.lastIndexOf(Version.SEPARATOR);
        return iLastIndexOf < 0 ? str : str.substring(0, iLastIndexOf);
    }

    public static String getFileExtension(String str) {
        int iLastIndexOf = str.lastIndexOf(Version.SEPARATOR);
        return iLastIndexOf < 0 ? "" : str.substring(iLastIndexOf + 1);
    }
}
