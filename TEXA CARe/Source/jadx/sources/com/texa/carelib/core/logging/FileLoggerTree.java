package com.texa.carelib.core.logging;

import android.util.Log;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.FileUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class FileLoggerTree extends CareLog.LoggerTree {
    private static final String TAG = "FileLoggerTree";
    private static final long THREE_MB = 3145728;
    private static final DateFormat _DateFormat = SimpleDateFormat.getDateTimeInstance();
    private final Object mFileLock;
    private File mLogFile;
    private long mMaxSize;
    private int mMinPriority;

    public FileLoggerTree(File file) {
        this(file, 4);
    }

    public FileLoggerTree(File file, int i) {
        this.mFileLock = new Object();
        this.mMinPriority = i;
        this.mLogFile = file;
        this.mMaxSize = THREE_MB;
        createLogFile();
    }

    public FileLoggerTree setMaxSize(long j) {
        this.mMaxSize = j;
        return this;
    }

    private void createLogFile() {
        if (this.mLogFile.exists()) {
            return;
        }
        try {
            if (!this.mLogFile.getParentFile().exists()) {
                this.mLogFile.getParentFile().mkdirs();
            }
            this.mLogFile.createNewFile();
        } catch (IOException e) {
            this.mLogFile = null;
            Log.d(TAG, "got exception", e);
        }
    }

    @Override // com.texa.carelib.core.logging.CareLog.LoggerTree
    protected boolean isLoggable(int i) {
        return this.mMinPriority <= i;
    }

    @Override // com.texa.carelib.core.logging.CareLog.LoggerTree
    protected void log(int i, String str, String str2, Throwable th) {
        synchronized (this.mFileLock) {
            append(str, str2);
            if (this.mLogFile.length() >= this.mMaxSize) {
                backupLogFile();
            }
            if (th != null) {
                append(str, Log.getStackTraceString(th));
            }
        }
    }

    private void backupLogFile() {
        try {
            File file = new File(this.mLogFile.getAbsolutePath() + ".bak");
            if (file.exists()) {
                FileUtils.forceDelete(file);
            }
            FileUtils.copy(this.mLogFile, file);
            FileUtils.forceDelete(this.mLogFile);
            this.mLogFile.createNewFile();
        } catch (IOException unused) {
        }
    }

    public void append(String str, String str2) {
        if (this.mLogFile == null) {
            Log.d(TAG, "mLogFile is null!");
            return;
        }
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(this.mLogFile, true));
            outputStreamWriter.append((CharSequence) _DateFormat.format(new Date()));
            if (str != null) {
                outputStreamWriter.append((CharSequence) "|");
                outputStreamWriter.append((CharSequence) str);
            }
            outputStreamWriter.append((CharSequence) "|");
            outputStreamWriter.append((CharSequence) str2);
            outputStreamWriter.append((CharSequence) System.getProperty("line.separator"));
            outputStreamWriter.close();
        } catch (IOException e) {
            Log.d(TAG, "got exception", e);
        }
    }
}
