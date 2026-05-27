package com.robotium.solo;

import android.app.Activity;
import android.app.ActivityManager;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Asserter {
    private final ActivityUtils activityUtils;
    private final Waiter waiter;

    public Asserter(ActivityUtils activityUtils, Waiter waiter) {
        this.activityUtils = activityUtils;
        this.waiter = waiter;
    }

    public void assertCurrentActivity(String str, String str2) {
        if (this.waiter.waitForActivity(str2)) {
            return;
        }
        Activity currentActivity = this.activityUtils.getCurrentActivity();
        if (currentActivity != null) {
            Assert.assertEquals(str, str2, currentActivity.getClass().getSimpleName());
        } else {
            Assert.assertEquals(str, str2, "No actvity found");
        }
    }

    public void assertCurrentActivity(String str, Class<? extends Activity> cls) {
        if (cls == null) {
            Assert.fail("The specified Activity is null!");
        }
        if (this.waiter.waitForActivity(cls)) {
            return;
        }
        Activity currentActivity = this.activityUtils.getCurrentActivity();
        if (currentActivity != null) {
            Assert.assertEquals(str, cls.getName(), currentActivity.getClass().getName());
        } else {
            Assert.assertEquals(str, cls.getName(), "No activity found");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void assertCurrentActivity(String str, String str2, boolean z) {
        assertCurrentActivity(str, str2);
        Activity currentActivity = this.activityUtils.getCurrentActivity();
        if (currentActivity != null) {
            assertCurrentActivity(str, (Class<? extends Activity>) currentActivity.getClass(), z);
        }
    }

    public void assertCurrentActivity(String str, Class<? extends Activity> cls, boolean z) {
        assertCurrentActivity(str, cls);
        Activity currentActivity = this.activityUtils.getCurrentActivity(false);
        if (currentActivity == null) {
            Assert.assertNotSame(str, Boolean.valueOf(z), false);
            return;
        }
        boolean z2 = false;
        for (int i = 0; i < this.activityUtils.getAllOpenedActivities().size() - 1; i++) {
            if (this.activityUtils.getAllOpenedActivities().get(i).toString().equals(currentActivity.toString())) {
                z2 = true;
            }
        }
        Assert.assertNotSame(str, Boolean.valueOf(z), Boolean.valueOf(z2));
    }

    public void assertMemoryNotLow() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) this.activityUtils.getCurrentActivity().getSystemService("activity")).getMemoryInfo(memoryInfo);
        Assert.assertFalse("Low memory available: " + memoryInfo.availMem + " bytes!", memoryInfo.lowMemory);
    }
}
