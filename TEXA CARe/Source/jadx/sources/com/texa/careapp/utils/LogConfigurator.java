package com.texa.careapp.utils;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.texa.careapp.utils.logger.CustomDebugTree;
import com.texa.careapp.utils.logger.FileLoggerTree;
import com.texa.carelib.core.CareLibConfig;
import com.texa.carelib.core.logging.LogcatLoggerTree;
import java.io.File;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LogConfigurator {
    private static final String TAG = "LogConfigurator";
    private FileLoggerTree mCAReLibFileLoggerTree;
    private CustomDebugTree mCustomDebugTree;
    private FileLoggerTree mFileLoggerTree;
    private LogcatLoggerTree mLogcatLoggerTree;

    public void logToLogcat(int i) {
        CustomDebugTree customDebugTree = this.mCustomDebugTree;
        if (customDebugTree != null) {
            Timber.uproot(customDebugTree);
            this.mCustomDebugTree = null;
        }
        LogcatLoggerTree logcatLoggerTree = this.mLogcatLoggerTree;
        if (logcatLoggerTree != null) {
            CareLibConfig.removeLogger(logcatLoggerTree);
            this.mLogcatLoggerTree = null;
        }
        CustomDebugTree customDebugTree2 = new CustomDebugTree();
        this.mCustomDebugTree = customDebugTree2;
        Timber.plant(customDebugTree2);
        LogcatLoggerTree logcatLoggerTree2 = new LogcatLoggerTree(i);
        this.mLogcatLoggerTree = logcatLoggerTree2;
        CareLibConfig.addLogger(logcatLoggerTree2);
    }

    public void logToFile(Context context) {
        if (this.mFileLoggerTree != null) {
            this.mFileLoggerTree = null;
        }
        FileLoggerTree fileLoggerTree = this.mCAReLibFileLoggerTree;
        if (fileLoggerTree != null) {
            CareLibConfig.removeLogger(fileLoggerTree);
            this.mCAReLibFileLoggerTree = null;
        }
        if (canReadWriteExternalStorage(context)) {
            File absoluteFile = Environment.getExternalStorageDirectory().getAbsoluteFile();
            this.mFileLoggerTree = new FileLoggerTree(new File(absoluteFile, "care.log"));
            FileLoggerTree fileLoggerTree2 = new FileLoggerTree(new File(absoluteFile, "carelib.log"));
            this.mCAReLibFileLoggerTree = fileLoggerTree2;
            CareLibConfig.addLogger(fileLoggerTree2);
        }
    }

    private boolean canReadWriteExternalStorage(Context context) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            Log.w(TAG, "Manifest.permission.READ_EXTERNAL_STORAGE");
            return false;
        }
        if (ContextCompat.checkSelfPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        Log.w(TAG, "Manifest.permission.WRITE_EXTERNAL_STORAGE DENIED");
        return false;
    }
}
