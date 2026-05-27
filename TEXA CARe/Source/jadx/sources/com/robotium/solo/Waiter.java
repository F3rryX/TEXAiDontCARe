package com.robotium.solo;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Waiter {
    private final ActivityUtils activityUtils;
    private final Instrumentation instrumentation;
    private final Scroller scroller;
    private final Searcher searcher;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;

    public Waiter(Instrumentation instrumentation, ActivityUtils activityUtils, ViewFetcher viewFetcher, Searcher searcher, Scroller scroller, Sleeper sleeper) {
        this.instrumentation = instrumentation;
        this.activityUtils = activityUtils;
        this.viewFetcher = viewFetcher;
        this.searcher = searcher;
        this.scroller = scroller;
        this.sleeper = sleeper;
    }

    public boolean waitForActivity(String str) {
        return waitForActivity(str, Timeout.getSmallTimeout());
    }

    public boolean waitForActivity(String str, int i) {
        boolean z = false;
        if (isActivityMatching(this.activityUtils.getCurrentActivity(false, false), str)) {
            return true;
        }
        Instrumentation.ActivityMonitor activityMonitor = getActivityMonitor();
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j = ((long) i) + jUptimeMillis;
        while (true) {
            if (jUptimeMillis >= j) {
                break;
            }
            if (isActivityMatching(activityMonitor.waitForActivityWithTimeout(j - jUptimeMillis), str)) {
                z = true;
                break;
            }
            jUptimeMillis = SystemClock.uptimeMillis();
        }
        removeMonitor(activityMonitor);
        return z;
    }

    private boolean isActivityMatching(Activity activity, String str) {
        return activity != null && activity.getClass().getSimpleName().equals(str);
    }

    public boolean waitForActivity(Class<? extends Activity> cls) {
        return waitForActivity(cls, Timeout.getSmallTimeout());
    }

    public boolean waitForActivity(Class<? extends Activity> cls, int i) {
        boolean z = false;
        if (isActivityMatching(cls, this.activityUtils.getCurrentActivity(false, false))) {
            return true;
        }
        Instrumentation.ActivityMonitor activityMonitor = getActivityMonitor();
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j = ((long) i) + jUptimeMillis;
        while (true) {
            if (jUptimeMillis < j) {
                Activity activityWaitForActivityWithTimeout = activityMonitor.waitForActivityWithTimeout(j - jUptimeMillis);
                if (activityWaitForActivityWithTimeout != null && activityWaitForActivityWithTimeout.getClass().equals(cls)) {
                    z = true;
                    break;
                }
                jUptimeMillis = SystemClock.uptimeMillis();
            } else {
                break;
            }
        }
        removeMonitor(activityMonitor);
        return z;
    }

    private boolean isActivityMatching(Class<? extends Activity> cls, Activity activity) {
        return activity != null && activity.getClass().equals(cls);
    }

    private Instrumentation.ActivityMonitor getActivityMonitor() {
        return this.instrumentation.addMonitor((IntentFilter) null, (Instrumentation.ActivityResult) null, false);
    }

    private void removeMonitor(Instrumentation.ActivityMonitor activityMonitor) {
        try {
            this.instrumentation.removeMonitor(activityMonitor);
        } catch (Exception unused) {
        }
    }

    public <T extends View> boolean waitForView(Class<T> cls, int i, boolean z, boolean z2) {
        HashSet hashSet = new HashSet();
        do {
            if (z) {
                this.sleeper.sleep();
            }
            if (this.searcher.searchFor(hashSet, cls, i)) {
                return true;
            }
            if (z2 && !this.scroller.scrollDown()) {
                return false;
            }
        } while (z2);
        return false;
    }

    public <T extends View> boolean waitForView(Class<T> cls, int i, int i2, boolean z) {
        HashSet hashSet = new HashSet();
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i2);
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            this.sleeper.sleep();
            if (this.searcher.searchFor(hashSet, cls, i)) {
                return true;
            }
            if (z) {
                this.scroller.scrollDown();
            }
        }
        return false;
    }

    public <T extends View> boolean waitForViews(boolean z, Class<? extends T>... clsArr) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            for (Class<? extends T> cls : clsArr) {
                if (waitForView((Class) cls, 0, false, false)) {
                    return true;
                }
            }
            if (z) {
                this.scroller.scroll(0);
            } else {
                this.scroller.scrollDown();
            }
            this.sleeper.sleep();
        }
        return false;
    }

    public boolean waitForView(View view) {
        return waitForView(view, Timeout.getLargeTimeout(), true, true) != null;
    }

    public View waitForView(View view, int i) {
        return waitForView(view, i, true, true);
    }

    public View waitForView(View view, int i, boolean z, boolean z2) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i);
        if (view == null) {
            return null;
        }
        int i2 = 0;
        while (SystemClock.uptimeMillis() < jUptimeMillis) {
            boolean zSearchFor = this.searcher.searchFor(view);
            if (z2 && zSearchFor && !view.isShown()) {
                this.sleeper.sleepMini();
                i2++;
                View identicalView = this.viewFetcher.getIdenticalView(view);
                if (identicalView != null && !view.equals(identicalView)) {
                    view = identicalView;
                }
                if (i2 > 5) {
                    return view;
                }
            } else {
                if (zSearchFor) {
                    return view;
                }
                if (z) {
                    this.scroller.scrollDown();
                }
                this.sleeper.sleep();
            }
        }
        return view;
    }

    public View waitForView(int i, int i2, int i3) {
        if (i3 == 0) {
            i3 = Timeout.getSmallTimeout();
        }
        return waitForView(i, i2, i3, false);
    }

    public View waitForView(int i, int i2, int i3, boolean z) {
        HashSet hashSet = new HashSet();
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i3);
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            this.sleeper.sleep();
            for (View view : this.viewFetcher.getAllViews(false)) {
                if (Integer.valueOf(view.getId()).equals(Integer.valueOf(i))) {
                    hashSet.add(view);
                    if (hashSet.size() > i2) {
                        return view;
                    }
                }
            }
            if (z) {
                this.scroller.scrollDown();
            }
        }
        return null;
    }

    public View waitForView(Object obj, int i, int i2) {
        if (i2 == 0) {
            i2 = Timeout.getSmallTimeout();
        }
        return waitForView(obj, i, i2, false);
    }

    public View waitForView(Object obj, int i, int i2, boolean z) {
        if (obj == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i2);
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            this.sleeper.sleep();
            for (View view : this.viewFetcher.getAllViews(false)) {
                if (obj.equals(view.getTag())) {
                    hashSet.add(view);
                    if (hashSet.size() > i) {
                        return view;
                    }
                }
            }
            if (z) {
                this.scroller.scrollDown();
            }
        }
        return null;
    }

    public WebElement waitForWebElement(By by, int i, int i2, boolean z) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i2);
        while (true) {
            if (SystemClock.uptimeMillis() > jUptimeMillis) {
                this.searcher.logMatchesFound(by.getValue());
                return null;
            }
            this.sleeper.sleep();
            WebElement webElementSearchForWebElement = this.searcher.searchForWebElement(by, i);
            if (webElementSearchForWebElement != null) {
                return webElementSearchForWebElement;
            }
            if (z) {
                this.scroller.scrollDown();
            }
        }
    }

    public boolean waitForCondition(Condition condition, int i) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i);
        do {
            if (SystemClock.uptimeMillis() > jUptimeMillis) {
                return false;
            }
            this.sleeper.sleep();
        } while (!condition.isSatisfied());
        return true;
    }

    public TextView waitForText(String str) {
        return waitForText(str, 0, Timeout.getLargeTimeout(), true);
    }

    public TextView waitForText(String str, int i, long j) {
        return waitForText(str, i, j, true);
    }

    public TextView waitForText(String str, int i, long j, boolean z) {
        return waitForText(TextView.class, str, i, j, z, false, true);
    }

    public <T extends TextView> T waitForText(Class<T> cls, String str, int i, long j, boolean z) {
        return (T) waitForText(cls, str, i, j, z, false, true);
    }

    public TextView waitForText(String str, int i, long j, boolean z, boolean z2, boolean z3) {
        return waitForText(TextView.class, str, i, j, z, z2, z3);
    }

    public <T extends TextView> T waitForText(Class<T> cls, String str, int i, long j, boolean z, boolean z2, boolean z3) {
        T t;
        long jUptimeMillis = SystemClock.uptimeMillis() + j;
        long j2 = j;
        do {
            if (SystemClock.uptimeMillis() > jUptimeMillis) {
                return null;
            }
            this.sleeper.sleep();
            if (!z3) {
                j2 = 0;
            }
            t = (T) this.searcher.searchFor(cls, str, i, j2, z, z2);
        } while (t == null);
        return t;
    }

    public <T extends View> T waitForAndGetView(int i, Class<T> cls) {
        int size;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        while (SystemClock.uptimeMillis() <= jUptimeMillis && !waitForView((Class) cls, i, true, true)) {
        }
        int numberOfUniqueViews = this.searcher.getNumberOfUniqueViews();
        ArrayList arrayListRemoveInvisibleViews = RobotiumUtils.removeInvisibleViews(this.viewFetcher.getCurrentViews(cls, true));
        if (arrayListRemoveInvisibleViews.size() < numberOfUniqueViews && (size = i - (numberOfUniqueViews - arrayListRemoveInvisibleViews.size())) >= 0) {
            i = size;
        }
        try {
            return (T) arrayListRemoveInvisibleViews.get(i);
        } catch (IndexOutOfBoundsException unused) {
            int i2 = i + 1;
            if (i2 > 1) {
                Assert.fail(i2 + " " + cls.getSimpleName() + "s are not found!");
                return null;
            }
            Assert.fail(cls.getSimpleName() + " is not found!");
            return null;
        }
    }

    public boolean waitForFragment(String str, int i, int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i2);
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            if (getSupportFragment(str, i) != null || getFragment(str, i) != null) {
                return true;
            }
        }
        return false;
    }

    private Fragment getSupportFragment(String str, int i) {
        FragmentActivity fragmentActivity;
        try {
            fragmentActivity = (FragmentActivity) this.activityUtils.getCurrentActivity(false);
        } catch (Throwable unused) {
            fragmentActivity = null;
        }
        if (fragmentActivity != null) {
            try {
                if (str == null) {
                    return fragmentActivity.getSupportFragmentManager().findFragmentById(i);
                }
                return fragmentActivity.getSupportFragmentManager().findFragmentByTag(str);
            } catch (NoSuchMethodError unused2) {
            }
        }
        return null;
    }

    public boolean waitForLogMessage(String str, int i) {
        StringBuilder sb = new StringBuilder();
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i);
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            if (getLog(sb).lastIndexOf(str) != -1) {
                return true;
            }
            this.sleeper.sleep();
        }
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|2|(7:55|3|51|4|5|49|6)|(5:7|(1:9)(1:57)|46|47|48)|10|53|11|(4:12|(1:14)(1:58)|47|48)|15|(1:17)(2:18|19)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0066, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0085, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        r0.printStackTrace();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private StringBuilder getLog(StringBuilder sb) {
        BufferedReader bufferedReader;
        Exception e;
        Process processExec;
        InterruptedException e2;
        IOException e3;
        BufferedReader bufferedReader2;
        try {
            processExec = Runtime.getRuntime().exec("logcat -d");
            try {
                bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                try {
                    sb.setLength(0);
                } catch (IOException e4) {
                    e3 = e4;
                    bufferedReader = bufferedReader2;
                } catch (InterruptedException e5) {
                    e2 = e5;
                    bufferedReader = bufferedReader2;
                } catch (Exception e6) {
                    e = e6;
                    bufferedReader = bufferedReader2;
                }
            } catch (IOException e7) {
                bufferedReader = null;
                e3 = e7;
            } catch (InterruptedException e8) {
                bufferedReader = null;
                e2 = e8;
            } catch (Exception e9) {
                bufferedReader = null;
                e = e9;
            }
        } catch (IOException e10) {
            bufferedReader = null;
            e3 = e10;
            processExec = null;
        } catch (InterruptedException e11) {
            bufferedReader = null;
            e2 = e11;
            processExec = null;
        } catch (Exception e12) {
            bufferedReader = null;
            e = e12;
            processExec = null;
        }
        while (true) {
            String line = bufferedReader2.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
            e3.printStackTrace();
            destroy(processExec, bufferedReader);
            return sb;
        }
        bufferedReader2.close();
        StringBuilder sb2 = new StringBuilder();
        bufferedReader = new BufferedReader(new InputStreamReader(processExec.getErrorStream()));
        sb2.append("logcat returns error: ");
        while (true) {
            String line2 = bufferedReader.readLine();
            if (line2 == null) {
                break;
            }
            sb2.append(line2);
            destroy(processExec, bufferedReader);
            return sb;
        }
        bufferedReader.close();
        processExec.waitFor();
        if (processExec.exitValue() != 0) {
            destroy(processExec, bufferedReader);
            throw new Exception(sb2.toString());
        }
        destroy(processExec, bufferedReader);
        return sb;
    }

    public void clearLog() {
        try {
            Runtime.getRuntime().exec("logcat -c");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void destroy(Process process, BufferedReader bufferedReader) {
        process.destroy();
        try {
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private android.app.Fragment getFragment(String str, int i) {
        try {
            if (str == null) {
                return this.activityUtils.getCurrentActivity().getFragmentManager().findFragmentById(i);
            }
            return this.activityUtils.getCurrentActivity().getFragmentManager().findFragmentByTag(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
