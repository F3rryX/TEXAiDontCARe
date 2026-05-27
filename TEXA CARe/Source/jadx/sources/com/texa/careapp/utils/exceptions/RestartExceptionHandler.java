package com.texa.careapp.utils.exceptions;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Process;
import com.texa.careapp.app.SplashActivity;
import java.lang.Thread;

/* JADX INFO: loaded from: classes2.dex */
public class RestartExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "RestartExceptionHandler";
    private final String PREFS_KEY_RESTART_EXCEPTION_HANDLER;
    private final String PREFS_KEY_RESTART_EXCEPTION_HANDLER_TIMESTAMP;
    private final long RESTART_TIMER = 60000;
    private Context context;
    private SharedPreferences.Editor editor;
    private SharedPreferences mSharedPreferences;
    private Long timestamp;

    public RestartExceptionHandler(Context context) {
        String str = TAG;
        this.PREFS_KEY_RESTART_EXCEPTION_HANDLER = str;
        this.PREFS_KEY_RESTART_EXCEPTION_HANDLER_TIMESTAMP = "restart_exception_handler_timestamp";
        this.context = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        this.mSharedPreferences = sharedPreferences;
        this.editor = sharedPreferences.edit();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Long lValueOf = Long.valueOf(this.mSharedPreferences.getLong("restart_exception_handler_timestamp", -1L));
        this.timestamp = lValueOf;
        if (lValueOf.longValue() == -1) {
            Long lValueOf2 = Long.valueOf(System.currentTimeMillis());
            this.timestamp = lValueOf2;
            this.editor.putLong("restart_exception_handler_timestamp", lValueOf2.longValue());
            this.editor.commit();
            restartApp();
            return;
        }
        if (System.currentTimeMillis() - this.timestamp.longValue() > 60000) {
            this.editor.putLong("restart_exception_handler_timestamp", System.currentTimeMillis());
            this.editor.commit();
            restartApp();
        } else {
            Process.killProcess(Process.myPid());
            System.exit(2);
        }
    }

    private void restartApp() {
        try {
            Intent intent = new Intent(this.context, (Class<?>) SplashActivity.class);
            intent.addFlags(67108864);
            intent.addFlags(32768);
            intent.addFlags(268435456);
            this.context.startActivity(intent);
            Process.killProcess(Process.myPid());
            System.exit(2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
