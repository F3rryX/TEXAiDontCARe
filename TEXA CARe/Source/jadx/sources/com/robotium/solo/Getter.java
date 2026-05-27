package com.robotium.solo;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.texa.careapp.Constants;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Getter {
    private final int TIMEOUT = 1000;
    private final ActivityUtils activityUtils;
    private final Instrumentation instrumentation;
    private final Waiter waiter;

    public Getter(Instrumentation instrumentation, ActivityUtils activityUtils, Waiter waiter) {
        this.instrumentation = instrumentation;
        this.activityUtils = activityUtils;
        this.waiter = waiter;
    }

    public <T extends View> T getView(Class<T> cls, int i) {
        return (T) this.waiter.waitForAndGetView(i, cls);
    }

    public <T extends TextView> T getView(Class<T> cls, String str, boolean z) {
        T t = (T) this.waiter.waitForText(cls, str, 0, Timeout.getSmallTimeout(), false, z, false);
        if (t == null) {
            Assert.fail(cls.getSimpleName() + " with text: '" + str + "' is not found!");
        }
        return t;
    }

    public String getString(int i) {
        Activity currentActivity = this.activityUtils.getCurrentActivity(false);
        return currentActivity == null ? "" : currentActivity.getString(i);
    }

    public String getString(String str) {
        Context targetContext = this.instrumentation.getTargetContext();
        int identifier = targetContext.getResources().getIdentifier(str, "string", targetContext.getPackageName());
        if (identifier == 0) {
            identifier = targetContext.getResources().getIdentifier(str, "string", Constants.THIRD_PART_LICENSE_NAME);
        }
        return getString(identifier);
    }

    public View getView(int i, int i2, int i3) {
        return this.waiter.waitForView(i, i2, i3);
    }

    public View getView(int i, int i2) {
        return getView(i, i2, 0);
    }

    public View getView(String str, int i) {
        int identifier;
        Context targetContext = this.instrumentation.getTargetContext();
        int identifier2 = targetContext.getResources().getIdentifier(str, "id", targetContext.getPackageName());
        View view = identifier2 != 0 ? getView(identifier2, i, 1000) : null;
        if (view == null && (identifier = targetContext.getResources().getIdentifier(str, "id", Constants.THIRD_PART_LICENSE_NAME)) != 0) {
            view = getView(identifier, i, 1000);
        }
        return view != null ? view : getView(identifier2, i);
    }

    public View getView(Object obj, int i, int i2) {
        Window window;
        View decorView;
        View viewFindViewWithTag = null;
        if (obj == null) {
            return null;
        }
        Activity currentActivity = this.activityUtils.getCurrentActivity(false);
        if (i < 1) {
            if (currentActivity != null && (window = currentActivity.getWindow()) != null && (decorView = window.getDecorView()) != null) {
                viewFindViewWithTag = decorView.findViewWithTag(obj);
            }
            i = 0;
        }
        return viewFindViewWithTag != null ? viewFindViewWithTag : this.waiter.waitForView(obj, i, i2);
    }

    public View getView(Object obj, int i) {
        return getView(obj, i, 0);
    }
}
