package com.robotium.solo;

import android.R;
import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.TextView;
import com.texa.careapp.fcm.FcmConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Clicker {
    private final String LOG_TAG = "Robotium";
    private final int MINI_WAIT = FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE;
    private final int WAIT_TIME = 1500;
    private final ActivityUtils activityUtils;
    private final DialogUtils dialogUtils;
    private final Instrumentation inst;
    private final Sender sender;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;
    private final Waiter waiter;
    private final WebUtils webUtils;

    public Clicker(ActivityUtils activityUtils, ViewFetcher viewFetcher, Sender sender, Instrumentation instrumentation, Sleeper sleeper, Waiter waiter, WebUtils webUtils, DialogUtils dialogUtils) {
        this.activityUtils = activityUtils;
        this.viewFetcher = viewFetcher;
        this.sender = sender;
        this.inst = instrumentation;
        this.sleeper = sleeper;
        this.waiter = waiter;
        this.webUtils = webUtils;
        this.dialogUtils = dialogUtils;
    }

    public void clickOnScreen(float f, float f2, View view) {
        String str;
        float f3 = f;
        float f4 = f2;
        SecurityException e = null;
        boolean z = false;
        int i = 0;
        while (!z && i < 20) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            float f5 = f3;
            float f6 = f4;
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 0, f5, f6, 0);
            MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 1, f5, f6, 0);
            try {
                this.inst.sendPointerSync(motionEventObtain);
                this.inst.sendPointerSync(motionEventObtain2);
                z = true;
            } catch (SecurityException e2) {
                e = e2;
                this.dialogUtils.hideSoftKeyboard(null, false, true);
                this.sleeper.sleep(FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE);
                i++;
                View identicalView = this.viewFetcher.getIdenticalView(view);
                if (identicalView != null) {
                    float[] clickCoordinates = getClickCoordinates(identicalView);
                    float f7 = clickCoordinates[0];
                    f4 = clickCoordinates[1];
                    f3 = f7;
                }
            }
        }
        if (z) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Click at (");
        sb.append(f3);
        sb.append(", ");
        sb.append(f4);
        sb.append(") can not be completed! (");
        if (e != null) {
            str = e.getClass().getName() + ": " + e.getMessage();
        } else {
            str = "null";
        }
        sb.append(str);
        sb.append(")");
        Assert.fail(sb.toString());
    }

    public void clickLongOnScreen(float f, float f2, int i, View view) {
        String str;
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 0, f, f2, 0);
        float f3 = f;
        float f4 = f2;
        SecurityException e = null;
        boolean z = false;
        int i2 = 0;
        while (!z && i2 < 20) {
            try {
                this.inst.sendPointerSync(motionEventObtain);
                try {
                    this.sleeper.sleep(FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE);
                    z = true;
                } catch (SecurityException e2) {
                    e = e2;
                    z = true;
                    this.dialogUtils.hideSoftKeyboard(null, false, true);
                    this.sleeper.sleep(FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE);
                    i2++;
                    View identicalView = this.viewFetcher.getIdenticalView(view);
                    if (identicalView != null) {
                        float[] clickCoordinates = getClickCoordinates(identicalView);
                        f3 = clickCoordinates[0];
                        f4 = clickCoordinates[1];
                    }
                }
            } catch (SecurityException e3) {
                e = e3;
            }
        }
        if (!z) {
            StringBuilder sb = new StringBuilder();
            sb.append("Long click at (");
            sb.append(f3);
            sb.append(", ");
            sb.append(f4);
            sb.append(") can not be completed! (");
            if (e != null) {
                str = e.getClass().getName() + ": " + e.getMessage();
            } else {
                str = "null";
            }
            sb.append(str);
            sb.append(")");
            Assert.fail(sb.toString());
        }
        this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 2, f3 + 1.0f, f4 + 1.0f, 0));
        if (i > 0) {
            this.sleeper.sleep(i);
        } else {
            this.sleeper.sleep((int) (ViewConfiguration.getLongPressTimeout() * 2.5f));
        }
        this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, f3, f4, 0));
        this.sleeper.sleep();
    }

    public void clickOnScreen(View view) {
        clickOnScreen(view, false, 0);
    }

    public void clickOnScreen(View view, boolean z, int i) {
        if (view == null) {
            Assert.fail("View is null and can therefore not be clicked!");
        }
        float[] clickCoordinates = getClickCoordinates(view);
        float f = clickCoordinates[0];
        float f2 = clickCoordinates[1];
        if (f == 0.0f || f2 == 0.0f) {
            this.sleeper.sleepMini();
            try {
                view = this.viewFetcher.getIdenticalView(view);
            } catch (Exception unused) {
            }
            if (view != null) {
                float[] clickCoordinates2 = getClickCoordinates(view);
                f = clickCoordinates2[0];
                f2 = clickCoordinates2[1];
            }
        }
        this.sleeper.sleep(FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE);
        if (z) {
            clickLongOnScreen(f, f2, i, view);
        } else {
            clickOnScreen(f, f2, view);
        }
    }

    private float[] getClickCoordinates(View view) {
        int[] iArr = new int[2];
        float[] fArr = new float[2];
        view.getLocationOnScreen(iArr);
        for (int i = 0; iArr[0] == 0 && iArr[1] == 0 && i < 10; i++) {
            this.sleeper.sleep(FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE);
            view.getLocationOnScreen(iArr);
        }
        int width = view.getWidth();
        float f = iArr[0] + (width / 2.0f);
        float height = iArr[1] + (view.getHeight() / 2.0f);
        fArr[0] = f;
        fArr[1] = height;
        return fArr;
    }

    public void clickLongOnTextAndPress(String str, int i) {
        clickOnText(str, true, 0, true, 0);
        this.dialogUtils.waitForDialogToOpen(Timeout.getSmallTimeout(), true);
        try {
            this.inst.sendKeyDownUpSync(20);
        } catch (SecurityException unused) {
            Assert.fail("Can not press the context menu!");
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.sleeper.sleepMini();
            this.inst.sendKeyDownUpSync(20);
        }
        this.inst.sendKeyDownUpSync(66);
    }

    private void openMenu() {
        this.sleeper.sleepMini();
        if (this.dialogUtils.waitForDialogToOpen(300L, false)) {
            return;
        }
        try {
            this.sender.sendKeyCode(82);
            this.dialogUtils.waitForDialogToOpen(1500L, true);
        } catch (SecurityException unused) {
            Assert.fail("Can not open the menu!");
        }
    }

    public void clickOnMenuItem(String str) {
        openMenu();
        clickOnText(str, false, 1, true, 0);
    }

    public void clickOnMenuItem(String str, boolean z) {
        this.sleeper.sleepMini();
        int[] iArr = new int[2];
        if (!this.dialogUtils.waitForDialogToOpen(300L, false)) {
            try {
                this.sender.sendKeyCode(82);
                this.dialogUtils.waitForDialogToOpen(1500L, true);
            } catch (SecurityException unused) {
                Assert.fail("Can not open the menu!");
            }
        }
        boolean z2 = this.waiter.waitForText(str, 1, 1500L, true) != null;
        View view = null;
        if (z && this.viewFetcher.getCurrentViews(TextView.class, true).size() > 5 && !z2) {
            for (TextView textView : this.viewFetcher.getCurrentViews(TextView.class, true)) {
                int i = iArr[0];
                int i2 = iArr[1];
                textView.getLocationOnScreen(iArr);
                if (iArr[0] > i || iArr[1] > i2) {
                    view = textView;
                }
            }
        }
        if (view != null) {
            clickOnScreen(view);
        }
        clickOnText(str, false, 1, true, 0);
    }

    public void clickOnActionBarItem(int i) {
        this.sleeper.sleep();
        Activity currentActivity = this.activityUtils.getCurrentActivity();
        if (currentActivity != null) {
            this.inst.invokeMenuActionSync(currentActivity, i, 0);
        }
    }

    public void clickOnActionBarHomeButton() {
        MenuItem menuItem;
        Activity currentActivity = this.activityUtils.getCurrentActivity();
        try {
            menuItem = (MenuItem) Class.forName("com.android.internal.view.menu.ActionMenuItem").getConstructor(Context.class, Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, CharSequence.class).newInstance(currentActivity, 0, Integer.valueOf(R.id.home), 0, 0, "");
        } catch (Exception unused) {
            Log.d("Robotium", "Can not find methods to invoke Home button!");
            menuItem = null;
        }
        if (menuItem != null) {
            try {
                currentActivity.getWindow().getCallback().onMenuItemSelected(0, menuItem);
            } catch (Exception unused2) {
            }
        }
    }

    public void clickOnWebElement(By by, int i, boolean z, boolean z2) {
        if (z2) {
            if (this.waiter.waitForWebElement(by, i, Timeout.getSmallTimeout(), false) == null) {
                Assert.fail("WebElement with " + this.webUtils.splitNameByUpperCase(by.getClass().getSimpleName()) + ": '" + by.getValue() + "' is not found!");
            }
            this.webUtils.executeJavaScript(by, true);
            return;
        }
        if (this.waiter.waitForWebElement(by, i, Timeout.getSmallTimeout(), z) == null) {
            if (i > 1) {
                Assert.fail(i + " WebElements with " + this.webUtils.splitNameByUpperCase(by.getClass().getSimpleName()) + ": '" + by.getValue() + "' are not found!");
            } else {
                Assert.fail("WebElement with " + this.webUtils.splitNameByUpperCase(by.getClass().getSimpleName()) + ": '" + by.getValue() + "' is not found!");
            }
        }
        clickOnScreen(r8.getLocationX(), r8.getLocationY(), (View) null);
    }

    public void clickOnText(String str, boolean z, int i, boolean z2, int i2) {
        TextView textViewWaitForText = this.waiter.waitForText(str, i, Timeout.getSmallTimeout(), z2, true, false);
        if (textViewWaitForText != null) {
            clickOnScreen(textViewWaitForText, z, i2);
            return;
        }
        if (i > 1) {
            Assert.fail(i + " matches of text string: '" + str + "' are not found!");
            return;
        }
        ArrayList arrayListRemoveInvisibleViews = RobotiumUtils.removeInvisibleViews(this.viewFetcher.getCurrentViews(TextView.class, true));
        arrayListRemoveInvisibleViews.addAll(this.webUtils.getTextViewsFromWebView());
        Iterator it = arrayListRemoveInvisibleViews.iterator();
        while (it.hasNext()) {
            Log.d("Robotium", "'" + str + "' not found. Have found: '" + ((Object) ((TextView) it.next()).getText()) + "'");
        }
        Assert.fail("Text string: '" + str + "' is not found!");
    }

    public <T extends TextView> void clickOn(Class<T> cls, String str) {
        TextView textViewWaitForText = this.waiter.waitForText(cls, str, 0, Timeout.getSmallTimeout(), true, true, false);
        if (textViewWaitForText != null) {
            clickOnScreen(textViewWaitForText);
            return;
        }
        Iterator it = RobotiumUtils.removeInvisibleViews(this.viewFetcher.getCurrentViews(cls, true)).iterator();
        while (it.hasNext()) {
            Log.d("Robotium", "'" + str + "' not found. Have found: '" + ((Object) ((TextView) it.next()).getText()) + "'");
        }
        Assert.fail(cls.getSimpleName() + " with text: '" + str + "' is not found!");
    }

    public <T extends View> void clickOn(Class<T> cls, int i) {
        clickOnScreen(this.waiter.waitForAndGetView(i, cls));
    }

    public ArrayList<TextView> clickInList(int i) {
        return clickInList(i, 0, 0, false, 0);
    }

    public void clickInList(int i, int i2) {
        clickInList(i, 0, i2, false, 0);
    }

    public ArrayList<TextView> clickInList(int i, int i2, int i3, boolean z, int i4) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        int i5 = i - 1;
        if (i5 < 0) {
            i5 = 0;
        }
        List<View> arrayList = new ArrayList<>();
        AbsListView absListView = (AbsListView) this.waiter.waitForAndGetView(i2, AbsListView.class);
        if (absListView == null) {
            Assert.fail("AbsListView is null!");
        }
        failIfIndexHigherThenChildCount(absListView, i5, jUptimeMillis);
        View viewOnAbsListLine = getViewOnAbsListLine(absListView, i2, i5);
        if (viewOnAbsListLine != null) {
            arrayList = RobotiumUtils.removeInvisibleViews(this.viewFetcher.getViews(viewOnAbsListLine, true));
            if (i3 == 0) {
                clickOnScreen(viewOnAbsListLine, z, i4);
            } else {
                clickOnScreen(getView(i3, arrayList));
            }
        }
        return RobotiumUtils.filterViews(TextView.class, arrayList);
    }

    public ArrayList<TextView> clickInRecyclerView(int i) {
        return clickInRecyclerView(i, 0, 0, false, 0);
    }

    public void clickInRecyclerView(int i, int i2) {
        clickInRecyclerView(i, 0, i2, false, 0);
    }

    public ArrayList<TextView> clickInRecyclerView(int i, int i2, int i3, boolean z, int i4) {
        View viewOnRecyclerItemIndex;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        if (i < 0) {
            i = 0;
        }
        ArrayList arrayList = new ArrayList();
        ViewGroup recyclerView = this.viewFetcher.getRecyclerView(i2, Timeout.getSmallTimeout());
        if (recyclerView == null) {
            Assert.fail("RecyclerView is not found!");
            viewOnRecyclerItemIndex = null;
        } else {
            failIfIndexHigherThenChildCount(recyclerView, i, jUptimeMillis);
            viewOnRecyclerItemIndex = getViewOnRecyclerItemIndex(recyclerView, i2, i);
        }
        if (viewOnRecyclerItemIndex != null) {
            arrayList = RobotiumUtils.removeInvisibleViews(this.viewFetcher.getViews(viewOnRecyclerItemIndex, true));
            if (i3 == 0) {
                clickOnScreen(viewOnRecyclerItemIndex, z, i4);
            } else {
                clickOnScreen(getView(i3, arrayList));
            }
        }
        return RobotiumUtils.filterViews(TextView.class, arrayList);
    }

    private View getView(int i, List<View> list) {
        for (View view : list) {
            if (i == view.getId()) {
                return view;
            }
        }
        return null;
    }

    private void failIfIndexHigherThenChildCount(ViewGroup viewGroup, int i, long j) {
        while (i > viewGroup.getChildCount()) {
            if (SystemClock.uptimeMillis() > j) {
                Assert.fail("Can not click on index " + i + " as there are only " + viewGroup.getChildCount() + " indexes available");
            }
            this.sleeper.sleep();
        }
    }

    private View getViewOnAbsListLine(AbsListView absListView, int i, int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        View childAt = absListView.getChildAt(i2);
        while (childAt == null) {
            if (SystemClock.uptimeMillis() > jUptimeMillis) {
                Assert.fail("View is null and can therefore not be clicked!");
            }
            this.sleeper.sleep();
            absListView = (AbsListView) this.viewFetcher.getIdenticalView(absListView);
            if (absListView == null) {
                absListView = (AbsListView) this.waiter.waitForAndGetView(i, AbsListView.class);
            }
            childAt = absListView.getChildAt(i2);
        }
        return childAt;
    }

    private View getViewOnRecyclerItemIndex(ViewGroup viewGroup, int i, int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) Timeout.getSmallTimeout());
        View childAt = viewGroup.getChildAt(i2);
        while (childAt == null) {
            if (SystemClock.uptimeMillis() > jUptimeMillis) {
                Assert.fail("View is null and can therefore not be clicked!");
            }
            this.sleeper.sleep();
            viewGroup = (ViewGroup) this.viewFetcher.getIdenticalView(viewGroup);
            if (viewGroup == null) {
                viewGroup = (ViewGroup) this.viewFetcher.getRecyclerView(false, i);
            }
            if (viewGroup != null) {
                childAt = viewGroup.getChildAt(i2);
            }
        }
        return childAt;
    }
}
