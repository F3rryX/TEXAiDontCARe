package com.robotium.solo;

import android.app.Activity;
import android.view.View;
import android.widget.DatePicker;
import android.widget.ProgressBar;
import android.widget.SlidingDrawer;
import android.widget.TimePicker;

/* JADX INFO: loaded from: classes.dex */
class Setter {
    private final int CLOSED = 0;
    private final int OPENED = 1;
    private final ActivityUtils activityUtils;
    private final Clicker clicker;
    private final Getter getter;
    private final Waiter waiter;

    public Setter(ActivityUtils activityUtils, Getter getter, Clicker clicker, Waiter waiter) {
        this.activityUtils = activityUtils;
        this.getter = getter;
        this.clicker = clicker;
        this.waiter = waiter;
    }

    public void setDatePicker(final DatePicker datePicker, final int i, final int i2, final int i3) {
        Activity currentActivity;
        if (datePicker == null || (currentActivity = this.activityUtils.getCurrentActivity(false)) == null) {
            return;
        }
        currentActivity.runOnUiThread(new Runnable() { // from class: com.robotium.solo.Setter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    datePicker.updateDate(i, i2, i3);
                } catch (Exception unused) {
                }
            }
        });
    }

    public void setTimePicker(final TimePicker timePicker, final int i, final int i2) {
        Activity currentActivity;
        if (timePicker == null || (currentActivity = this.activityUtils.getCurrentActivity(false)) == null) {
            return;
        }
        currentActivity.runOnUiThread(new Runnable() { // from class: com.robotium.solo.Setter.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    timePicker.setCurrentHour(Integer.valueOf(i));
                    timePicker.setCurrentMinute(Integer.valueOf(i2));
                } catch (Exception unused) {
                }
            }
        });
    }

    public void setProgressBar(final ProgressBar progressBar, final int i) {
        Activity currentActivity;
        if (progressBar == null || (currentActivity = this.activityUtils.getCurrentActivity(false)) == null) {
            return;
        }
        currentActivity.runOnUiThread(new Runnable() { // from class: com.robotium.solo.Setter.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    progressBar.setProgress(i);
                } catch (Exception unused) {
                }
            }
        });
    }

    public void setSlidingDrawer(final SlidingDrawer slidingDrawer, final int i) {
        Activity currentActivity;
        if (slidingDrawer == null || (currentActivity = this.activityUtils.getCurrentActivity(false)) == null) {
            return;
        }
        currentActivity.runOnUiThread(new Runnable() { // from class: com.robotium.solo.Setter.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int i2 = i;
                    if (i2 == 0) {
                        slidingDrawer.close();
                    } else if (i2 == 1) {
                        slidingDrawer.open();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public void setNavigationDrawer(int i) {
        View view = this.getter.getView("home", 0);
        final View view2 = this.getter.getView("left_drawer", 0);
        try {
            if (i != 0) {
                if (i != 1 || view2 == null || view == null) {
                    return;
                }
                if (!view2.isShown()) {
                    this.clicker.clickOnScreen(view);
                    this.waiter.waitForCondition(new Condition() { // from class: com.robotium.solo.Setter.5
                        @Override // com.robotium.solo.Condition
                        public boolean isSatisfied() {
                            return view2.isShown();
                        }
                    }, Timeout.getSmallTimeout());
                }
            } else {
                if (view2 == null || view == null) {
                    return;
                }
                if (view2.isShown()) {
                    this.clicker.clickOnScreen(view);
                }
            }
        } catch (Exception unused) {
        }
    }
}
