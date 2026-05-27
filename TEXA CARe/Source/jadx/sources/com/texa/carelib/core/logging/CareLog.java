package com.texa.carelib.core.logging;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CareLog {
    private static final List<LoggerTree> _LOGGER_TREE_LIST = new ArrayList();
    private static volatile LoggerTree[] _LoggerTreeArray = new LoggerTree[0];

    public static void plant(LoggerTree loggerTree) {
        List<LoggerTree> list = _LOGGER_TREE_LIST;
        synchronized (list) {
            list.add(loggerTree);
            createTreeArray();
        }
    }

    public static void uproot(LoggerTree loggerTree) {
        List<LoggerTree> list = _LOGGER_TREE_LIST;
        synchronized (list) {
            if (!list.remove(loggerTree)) {
                throw new IllegalArgumentException("Cannot uproot tree which is not planted: " + loggerTree);
            }
            createTreeArray();
        }
    }

    private static void createTreeArray() {
        List<LoggerTree> list = _LOGGER_TREE_LIST;
        _LoggerTreeArray = (LoggerTree[]) list.toArray(new LoggerTree[list.size()]);
    }

    public static void uprootAll() {
        List<LoggerTree> list = _LOGGER_TREE_LIST;
        synchronized (list) {
            list.clear();
            createTreeArray();
        }
    }

    public static void v(String str, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.v(str, str2, objArr);
        }
    }

    public static void v(String str, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.v(str, th, str2, objArr);
        }
    }

    public static void d(String str, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.d(str, str2, objArr);
        }
    }

    public static void d(String str, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.d(str, th, str2, objArr);
        }
    }

    public static void i(String str, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.i(str, str2, objArr);
        }
    }

    public static void i(String str, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.i(str, th, str2, objArr);
        }
    }

    public static void w(String str, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.w(str, str2, objArr);
        }
    }

    public static void w(String str, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.w(str, th, str2, objArr);
        }
    }

    public static void e(String str, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.e(str, str2, objArr);
        }
    }

    public static void e(String str, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.e(str, th, str2, objArr);
        }
    }

    public static void wtf(String str, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.wtf(str, str2, objArr);
        }
    }

    public static void wtf(String str, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.wtf(str, th, str2, objArr);
        }
    }

    public static void log(String str, int i, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.log(str, i, str2, objArr);
        }
    }

    public static void log(String str, int i, Throwable th, String str2, Object... objArr) {
        for (LoggerTree loggerTree : _LoggerTreeArray) {
            loggerTree.log(str, i, th, str2, objArr);
        }
    }

    public static List<LoggerTree> getLoggers() {
        return Collections.unmodifiableList(_LOGGER_TREE_LIST);
    }

    public static abstract class LoggerTree {
        protected boolean isLoggable(int i) {
            return true;
        }

        protected abstract void log(int i, String str, String str2, Throwable th);

        public void v(String str, String str2, Object... objArr) {
            prepareLog(str, 2, null, str2, objArr);
        }

        public void v(String str, Throwable th, String str2, Object... objArr) {
            prepareLog(str, 2, th, str2, objArr);
        }

        public void d(String str, String str2, Object... objArr) {
            prepareLog(str, 3, null, str2, objArr);
        }

        public void d(String str, Throwable th, String str2, Object... objArr) {
            prepareLog(str, 3, th, str2, objArr);
        }

        public void i(String str, String str2, Object... objArr) {
            prepareLog(str, 4, null, str2, objArr);
        }

        public void i(String str, Throwable th, String str2, Object... objArr) {
            prepareLog(str, 4, th, str2, objArr);
        }

        public void w(String str, String str2, Object... objArr) {
            prepareLog(str, 5, null, str2, objArr);
        }

        public void w(String str, Throwable th, String str2, Object... objArr) {
            prepareLog(str, 5, th, str2, objArr);
        }

        public void e(String str, String str2, Object... objArr) {
            prepareLog(str, 6, null, str2, objArr);
        }

        public void e(String str, Throwable th, String str2, Object... objArr) {
            prepareLog(str, 6, th, str2, objArr);
        }

        public void wtf(String str, String str2, Object... objArr) {
            prepareLog(str, 7, null, str2, objArr);
        }

        public void wtf(String str, Throwable th, String str2, Object... objArr) {
            prepareLog(str, 7, th, str2, objArr);
        }

        public void log(String str, int i, String str2, Object... objArr) {
            prepareLog(str, i, null, str2, objArr);
        }

        public void log(String str, int i, Throwable th, String str2, Object... objArr) {
            prepareLog(str, i, th, str2, objArr);
        }

        protected void prepareLog(String str, int i, Throwable th, String str2, Object... objArr) {
            if (isLoggable(i)) {
                if (str2 != null && str2.length() == 0) {
                    str2 = null;
                }
                if (str2 != null) {
                    if (objArr.length > 0) {
                        str2 = String.format(str2, objArr);
                    }
                    if (th != null) {
                        str2 = str2 + "\n" + getStackTraceString(th);
                    }
                } else if (th == null) {
                    return;
                } else {
                    str2 = getStackTraceString(th);
                }
                log(i, str, str2, th);
            }
        }

        private String getStackTraceString(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }
    }
}
