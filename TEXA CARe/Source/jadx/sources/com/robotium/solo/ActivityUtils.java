package com.robotium.solo;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.util.Log;
import com.robotium.solo.Solo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import java.util.Timer;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class ActivityUtils {
    private final String LOG_TAG = "Robotium";
    private final int MINISLEEP = 100;
    private Stack<String> activitiesStoredInActivityStack;
    private Activity activity;
    private Instrumentation.ActivityMonitor activityMonitor;
    private Stack<WeakReference<Activity>> activityStack;
    private Timer activitySyncTimer;
    Thread activityThread;
    private final Solo.Config config;
    private final Instrumentation inst;
    private volatile boolean registerActivities;
    private final Sleeper sleeper;
    private WeakReference<Activity> weakActivityReference;

    public ActivityUtils(Solo.Config config, Instrumentation instrumentation, Activity activity, Sleeper sleeper) {
        this.config = config;
        this.inst = instrumentation;
        this.activity = activity;
        this.sleeper = sleeper;
        createStackAndPushStartActivity();
        this.activitySyncTimer = new Timer();
        this.activitiesStoredInActivityStack = new Stack<>();
        setupActivityMonitor();
        setupActivityStackListener();
    }

    private void createStackAndPushStartActivity() {
        this.activityStack = new Stack<>();
        if (this.activity == null || !this.config.trackActivities) {
            return;
        }
        WeakReference<Activity> weakReference = new WeakReference<>(this.activity);
        this.activity = null;
        this.activityStack.push(weakReference);
    }

    public ArrayList<Activity> getAllOpenedActivities() {
        ArrayList<Activity> arrayList = new ArrayList<>();
        Iterator<WeakReference<Activity>> it = this.activityStack.iterator();
        while (it.hasNext()) {
            Activity activity = it.next().get();
            if (activity != null) {
                arrayList.add(activity);
            }
        }
        return arrayList;
    }

    private void setupActivityMonitor() {
        if (this.config.trackActivities) {
            try {
                this.activityMonitor = this.inst.addMonitor((IntentFilter) null, (Instrumentation.ActivityResult) null, false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean shouldRegisterActivities() {
        return this.registerActivities;
    }

    public void setRegisterActivities(boolean z) {
        this.registerActivities = z;
    }

    private void setupActivityStackListener() {
        if (this.activityMonitor == null) {
            return;
        }
        setRegisterActivities(true);
        RegisterActivitiesThread registerActivitiesThread = new RegisterActivitiesThread(this);
        this.activityThread = registerActivitiesThread;
        registerActivitiesThread.start();
    }

    void monitorActivities() {
        Activity activityWaitForActivityWithTimeout;
        Instrumentation.ActivityMonitor activityMonitor = this.activityMonitor;
        if (activityMonitor == null || (activityWaitForActivityWithTimeout = activityMonitor.waitForActivityWithTimeout(2000L)) == null) {
            return;
        }
        if (this.activitiesStoredInActivityStack.remove(activityWaitForActivityWithTimeout.toString())) {
            removeActivityFromStack(activityWaitForActivityWithTimeout);
        }
        if (activityWaitForActivityWithTimeout.isFinishing()) {
            return;
        }
        addActivityToStack(activityWaitForActivityWithTimeout);
    }

    private void removeActivityFromStack(Activity activity) {
        Iterator<WeakReference<Activity>> it = this.activityStack.iterator();
        while (it.hasNext()) {
            Activity activity2 = it.next().get();
            if (activity2 == null) {
                it.remove();
            }
            if (activity != null && activity2 != null && activity2.equals(activity)) {
                it.remove();
            }
        }
    }

    public Instrumentation.ActivityMonitor getActivityMonitor() {
        return this.activityMonitor;
    }

    public void setActivityOrientation(int i) {
        Activity currentActivity = getCurrentActivity();
        if (currentActivity != null) {
            currentActivity.setRequestedOrientation(i);
        }
    }

    public Activity getCurrentActivity(boolean z) {
        return getCurrentActivity(z, true);
    }

    public Activity getCurrentActivity() {
        return getCurrentActivity(true, true);
    }

    private void addActivityToStack(Activity activity) {
        this.activitiesStoredInActivityStack.push(activity.toString());
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.weakActivityReference = weakReference;
        this.activityStack.push(weakReference);
    }

    private final void waitForActivityIfNotAvailable() {
        if (this.activityStack.isEmpty() || this.activityStack.peek().get() == null) {
            Instrumentation.ActivityMonitor activityMonitor = this.activityMonitor;
            if (activityMonitor != null) {
                Activity lastActivity = activityMonitor.getLastActivity();
                while (lastActivity == null) {
                    this.sleeper.sleepMini();
                    lastActivity = this.activityMonitor.getLastActivity();
                }
                addActivityToStack(lastActivity);
                return;
            }
            if (this.config.trackActivities) {
                this.sleeper.sleepMini();
                setupActivityMonitor();
                waitForActivityIfNotAvailable();
            }
        }
    }

    public String getCurrentActivityName() {
        return !this.activitiesStoredInActivityStack.isEmpty() ? this.activitiesStoredInActivityStack.peek() : "";
    }

    public Activity getCurrentActivity(boolean z, boolean z2) {
        if (z) {
            this.sleeper.sleep();
        }
        if (!this.config.trackActivities) {
            return this.activity;
        }
        if (z2) {
            waitForActivityIfNotAvailable();
        }
        if (!this.activityStack.isEmpty()) {
            this.activity = this.activityStack.peek().get();
        }
        return this.activity;
    }

    public boolean isActivityStackEmpty() {
        return this.activityStack.isEmpty();
    }

    public void goBackToActivity(String str) {
        boolean z;
        ArrayList<Activity> allOpenedActivities = getAllOpenedActivities();
        int i = 0;
        while (true) {
            if (i >= allOpenedActivities.size()) {
                z = false;
                break;
            } else {
                if (allOpenedActivities.get(i).getClass().getSimpleName().equals(str)) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (z) {
            while (!getCurrentActivity().getClass().getSimpleName().equals(str)) {
                try {
                    this.inst.sendKeyDownUpSync(4);
                } catch (SecurityException unused) {
                }
            }
            return;
        }
        for (int i2 = 0; i2 < allOpenedActivities.size(); i2++) {
            Log.d("Robotium", "Activity priorly opened: " + allOpenedActivities.get(i2).getClass().getSimpleName());
        }
        Assert.fail("No Activity named: '" + str + "' has been priorly opened");
    }

    public String getString(int i) {
        Activity currentActivity = getCurrentActivity(false);
        return currentActivity == null ? "" : currentActivity.getString(i);
    }

    public void finalize() throws Throwable {
        this.activitySyncTimer.cancel();
        stopActivityMonitor();
        super.finalize();
    }

    private void stopActivityMonitor() {
        try {
            Instrumentation.ActivityMonitor activityMonitor = this.activityMonitor;
            if (activityMonitor != null) {
                this.inst.removeMonitor(activityMonitor);
                this.activityMonitor = null;
            }
        } catch (Exception unused) {
        }
    }

    public void finishOpenedActivities() {
        this.activitySyncTimer.cancel();
        if (!this.config.trackActivities) {
            useGoBack(3);
            return;
        }
        ArrayList<Activity> allOpenedActivities = getAllOpenedActivities();
        for (int size = allOpenedActivities.size() - 1; size >= 0; size--) {
            this.sleeper.sleep(100);
            finishActivity(allOpenedActivities.get(size));
        }
        this.sleeper.sleep(100);
        finishActivity(getCurrentActivity(true, false));
        stopActivityMonitor();
        setRegisterActivities(false);
        this.activity = null;
        this.sleeper.sleepMini();
        useGoBack(1);
        clearActivityStack();
    }

    private void useGoBack(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                this.inst.sendKeyDownUpSync(4);
                this.sleeper.sleep(100);
                this.inst.sendKeyDownUpSync(4);
            } catch (Throwable unused) {
            }
        }
    }

    private void clearActivityStack() {
        this.activityStack.clear();
        this.activitiesStoredInActivityStack.clear();
    }

    private void finishActivity(Activity activity) {
        if (activity != null) {
            try {
                activity.finish();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static final class RegisterActivitiesThread extends Thread {
        public static final long REGISTER_ACTIVITY_THREAD_SLEEP_MS = 16;
        private final WeakReference<ActivityUtils> activityUtilsWR;

        RegisterActivitiesThread(ActivityUtils activityUtils) {
            super("activityMonitorThread");
            this.activityUtilsWR = new WeakReference<>(activityUtils);
            setPriority(1);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (shouldMonitor()) {
                monitorActivities();
                SystemClock.sleep(16L);
            }
        }

        private boolean shouldMonitor() {
            ActivityUtils activityUtils = this.activityUtilsWR.get();
            return activityUtils != null && activityUtils.shouldRegisterActivities();
        }

        private void monitorActivities() {
            ActivityUtils activityUtils = this.activityUtilsWR.get();
            if (activityUtils != null) {
                activityUtils.monitorActivities();
            }
        }
    }
}
