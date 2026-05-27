package com.robotium.solo;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.os.SystemClock;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
class DialogUtils {
    private static final int TIMEOUT_DIALOG_TO_CLOSE = 1000;
    private final int MINISLEEP = 200;
    private final ActivityUtils activityUtils;
    private final Instrumentation instrumentation;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;

    public DialogUtils(Instrumentation instrumentation, ActivityUtils activityUtils, ViewFetcher viewFetcher, Sleeper sleeper) {
        this.instrumentation = instrumentation;
        this.activityUtils = activityUtils;
        this.viewFetcher = viewFetcher;
        this.sleeper = sleeper;
    }

    public boolean waitForDialogToClose(long j) {
        waitForDialogToOpen(1000L, false);
        long jUptimeMillis = SystemClock.uptimeMillis() + j;
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            if (!isDialogOpen()) {
                return true;
            }
            this.sleeper.sleep(200);
        }
        return false;
    }

    public boolean waitForDialogToOpen(long j, boolean z) {
        long jUptimeMillis = SystemClock.uptimeMillis() + j;
        boolean zIsDialogOpen = isDialogOpen();
        if (z) {
            this.sleeper.sleep();
        }
        if (zIsDialogOpen) {
            return true;
        }
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            if (isDialogOpen()) {
                return true;
            }
            this.sleeper.sleepMini();
        }
        return false;
    }

    private boolean isDialogOpen() {
        Activity currentActivity = this.activityUtils.getCurrentActivity(false);
        View[] windowDecorViews = this.viewFetcher.getWindowDecorViews();
        if (isDialog(currentActivity, this.viewFetcher.getRecentDecorView(windowDecorViews))) {
            return true;
        }
        for (View view : windowDecorViews) {
            if (isDialog(currentActivity, view)) {
                return true;
            }
        }
        return false;
    }

    private boolean isDialog(Activity activity, View view) {
        if (view == null || !view.isShown() || activity == null) {
            return false;
        }
        Context context = view != null ? view.getContext() : null;
        if (context instanceof ContextThemeWrapper) {
            context = ((ContextThemeWrapper) context).getBaseContext();
        }
        return (activity.equals(context) || activity.getBaseContext().equals(context)) && view != activity.getWindow().getDecorView();
    }

    public void hideSoftKeyboard(EditText editText, boolean z, boolean z2) {
        InputMethodManager inputMethodManager;
        Activity currentActivity = this.activityUtils.getCurrentActivity(z);
        if (currentActivity == null) {
            inputMethodManager = (InputMethodManager) this.instrumentation.getTargetContext().getSystemService("input_method");
        } else {
            inputMethodManager = (InputMethodManager) currentActivity.getSystemService("input_method");
        }
        if (editText != null) {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
            return;
        }
        View currentFocus = currentActivity.getCurrentFocus();
        if (!(currentFocus instanceof EditText)) {
            ViewFetcher viewFetcher = this.viewFetcher;
            EditText editText2 = (EditText) viewFetcher.getFreshestView(viewFetcher.getCurrentViews(EditText.class, true));
            if (editText2 != null) {
                currentFocus = editText2;
            }
        }
        if (currentFocus != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        if (z2) {
            this.sleeper.sleep();
        }
    }
}
