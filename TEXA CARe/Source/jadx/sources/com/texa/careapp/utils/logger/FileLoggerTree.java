package com.texa.careapp.utils.logger;

import android.util.Log;
import com.texa.careapp.utils.FileUtils;
import com.texa.carelib.core.logging.CareLog;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FileLoggerTree extends CareLog.LoggerTree {
    private static final String TAG = "FileLoggerTree";
    private static final long THREE_MB = 3145728;
    private static final DateFormat sDateFormat = SimpleDateFormat.getDateTimeInstance();
    private final File mLogFile;
    private long mMaxSize = THREE_MB;

    public FileLoggerTree(File file) {
        this.mLogFile = file;
    }

    public FileLoggerTree setMaxSize(long j) {
        this.mMaxSize = j;
        return this;
    }

    @Override // com.texa.carelib.core.logging.CareLog.LoggerTree
    protected synchronized void log(int i, String str, String str2, Throwable th) {
        if (i == 2) {
            return;
        }
        if (this.mLogFile.length() >= this.mMaxSize) {
            backupLogFile();
        }
        try {
            append(str, str2);
            if (th != null) {
                append(str, Log.getStackTraceString(th));
            }
        } catch (StackOverflowError e) {
            e.printStackTrace();
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
            Timber.i("BACKUP LOG FILE --> %s", Boolean.valueOf(this.mLogFile.createNewFile()));
        } catch (Exception e) {
            Timber.e(e, "backupLogFile() fails.", new Object[0]);
        }
    }

    public void append(String str, String str2) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.mLogFile, true));
            bufferedWriter.append((CharSequence) sDateFormat.format(new Date()));
            if (str != null) {
                bufferedWriter.append((CharSequence) "|");
                bufferedWriter.append((CharSequence) str);
            }
            bufferedWriter.append((CharSequence) "|");
            bufferedWriter.append((CharSequence) str2);
            bufferedWriter.newLine();
            bufferedWriter.close();
        } catch (Exception e) {
            Timber.d(e, "got exception", new Object[0]);
        }
    }
}
