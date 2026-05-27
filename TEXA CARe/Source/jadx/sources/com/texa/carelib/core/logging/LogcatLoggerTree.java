package com.texa.carelib.core.logging;

import android.util.Log;
import android.util.SparseArray;
import com.texa.carelib.core.logging.CareLog;

/* JADX INFO: loaded from: classes2.dex */
public class LogcatLoggerTree extends CareLog.LoggerTree {
    private static final int MAX_MESSAGE_LENGTH = 4000;
    private static SparseArray<DoLog> _Loggers;
    private final Object mLogcatLock;
    private int mMinLevel;

    /* JADX INFO: Access modifiers changed from: private */
    interface DoLog {
        void log(String str, String str2, Throwable th);
    }

    static {
        SparseArray<DoLog> sparseArray = new SparseArray<>();
        _Loggers = sparseArray;
        sparseArray.put(7, new DoLog() { // from class: com.texa.carelib.core.logging.LogcatLoggerTree$$ExternalSyntheticLambda5
            @Override // com.texa.carelib.core.logging.LogcatLoggerTree.DoLog
            public final void log(String str, String str2, Throwable th) {
                Log.wtf(str, str2, th);
            }
        });
        _Loggers.put(3, new DoLog() { // from class: com.texa.carelib.core.logging.LogcatLoggerTree$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.logging.LogcatLoggerTree.DoLog
            public final void log(String str, String str2, Throwable th) {
                Log.d(str, str2, th);
            }
        });
        _Loggers.put(6, new DoLog() { // from class: com.texa.carelib.core.logging.LogcatLoggerTree$$ExternalSyntheticLambda1
            @Override // com.texa.carelib.core.logging.LogcatLoggerTree.DoLog
            public final void log(String str, String str2, Throwable th) {
                Log.e(str, str2, th);
            }
        });
        _Loggers.put(4, new DoLog() { // from class: com.texa.carelib.core.logging.LogcatLoggerTree$$ExternalSyntheticLambda2
            @Override // com.texa.carelib.core.logging.LogcatLoggerTree.DoLog
            public final void log(String str, String str2, Throwable th) {
                Log.i(str, str2, th);
            }
        });
        _Loggers.put(2, new DoLog() { // from class: com.texa.carelib.core.logging.LogcatLoggerTree$$ExternalSyntheticLambda3
            @Override // com.texa.carelib.core.logging.LogcatLoggerTree.DoLog
            public final void log(String str, String str2, Throwable th) {
                Log.v(str, str2, th);
            }
        });
        _Loggers.put(5, new DoLog() { // from class: com.texa.carelib.core.logging.LogcatLoggerTree$$ExternalSyntheticLambda4
            @Override // com.texa.carelib.core.logging.LogcatLoggerTree.DoLog
            public final void log(String str, String str2, Throwable th) {
                Log.w(str, str2, th);
            }
        });
    }

    public LogcatLoggerTree() {
        this(4);
    }

    public LogcatLoggerTree(int i) {
        this.mLogcatLock = new Object();
        this.mMinLevel = i;
    }

    @Override // com.texa.carelib.core.logging.CareLog.LoggerTree
    protected boolean isLoggable(int i) {
        return this.mMinLevel <= i;
    }

    @Override // com.texa.carelib.core.logging.CareLog.LoggerTree
    protected void log(int i, String str, String str2, Throwable th) {
        DoLog doLog = _Loggers.get(i);
        if (doLog != null) {
            if (str2.length() > MAX_MESSAGE_LENGTH) {
                synchronized (this.mLogcatLock) {
                    int iRound = Math.round((str2.length() / 4000.0f) + 0.5f);
                    int i2 = 0;
                    while (i2 < iRound) {
                        int i3 = i2 * MAX_MESSAGE_LENGTH;
                        String strSubstring = str2.substring(i3, Math.min(i3 + MAX_MESSAGE_LENGTH, str2.length()));
                        StringBuilder sb = new StringBuilder();
                        sb.append("Chunk ");
                        i2++;
                        sb.append(i2);
                        sb.append(" of ");
                        sb.append(iRound);
                        sb.append(":");
                        sb.append(strSubstring);
                        doLog.log(str, sb.toString(), th);
                    }
                }
                return;
            }
            doLog.log(str, str2, th);
        }
    }
}
