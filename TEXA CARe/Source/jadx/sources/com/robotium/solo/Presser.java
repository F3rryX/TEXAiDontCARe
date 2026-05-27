package com.robotium.solo;

import android.app.Instrumentation;
import android.widget.EditText;
import android.widget.Spinner;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Presser {
    private final Clicker clicker;
    private final DialogUtils dialogUtils;
    private final Instrumentation inst;
    private final Sleeper sleeper;
    private final ViewFetcher viewFetcher;
    private final Waiter waiter;

    public Presser(ViewFetcher viewFetcher, Clicker clicker, Instrumentation instrumentation, Sleeper sleeper, Waiter waiter, DialogUtils dialogUtils) {
        this.viewFetcher = viewFetcher;
        this.clicker = clicker;
        this.inst = instrumentation;
        this.sleeper = sleeper;
        this.waiter = waiter;
        this.dialogUtils = dialogUtils;
    }

    public void pressMenuItem(int i) {
        pressMenuItem(i, 3);
    }

    public void pressMenuItem(int i, int i2) {
        int[] iArr = new int[4];
        for (int i3 = 1; i3 <= 3; i3++) {
            iArr[i3] = i2 * i3;
        }
        this.sleeper.sleep();
        try {
            this.inst.sendKeyDownUpSync(82);
            this.dialogUtils.waitForDialogToOpen(Timeout.getSmallTimeout(), true);
            this.inst.sendKeyDownUpSync(19);
            this.inst.sendKeyDownUpSync(19);
        } catch (SecurityException unused) {
            Assert.fail("Can not press the menu!");
        }
        if (i < iArr[1]) {
            for (int i4 = 0; i4 < i; i4++) {
                this.sleeper.sleepMini();
                this.inst.sendKeyDownUpSync(22);
            }
        } else if (i >= iArr[1] && i < iArr[2]) {
            this.inst.sendKeyDownUpSync(20);
            for (int i5 = iArr[1]; i5 < i; i5++) {
                this.sleeper.sleepMini();
                this.inst.sendKeyDownUpSync(22);
            }
        } else if (i >= iArr[2]) {
            this.inst.sendKeyDownUpSync(20);
            this.inst.sendKeyDownUpSync(20);
            for (int i6 = iArr[2]; i6 < i; i6++) {
                this.sleeper.sleepMini();
                this.inst.sendKeyDownUpSync(22);
            }
        }
        try {
            this.inst.sendKeyDownUpSync(66);
        } catch (SecurityException unused2) {
        }
    }

    public void pressSoftKeyboard(final int i) {
        ViewFetcher viewFetcher = this.viewFetcher;
        final EditText editText = (EditText) viewFetcher.getFreshestView(viewFetcher.getCurrentViews(EditText.class, true));
        if (editText != null) {
            this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.Presser.1
                @Override // java.lang.Runnable
                public void run() {
                    editText.onEditorAction(i);
                }
            });
        }
    }

    public void pressSpinnerItem(int i, int i2) {
        this.clicker.clickOnScreen(this.waiter.waitForAndGetView(i, Spinner.class));
        boolean z = true;
        this.dialogUtils.waitForDialogToOpen(Timeout.getSmallTimeout(), true);
        try {
            this.inst.sendKeyDownUpSync(20);
        } catch (SecurityException unused) {
        }
        if (i2 < 0) {
            i2 *= -1;
            z = false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            this.sleeper.sleepMini();
            if (z) {
                try {
                    this.inst.sendKeyDownUpSync(20);
                } catch (SecurityException unused2) {
                }
            } else {
                this.inst.sendKeyDownUpSync(19);
            }
        }
        try {
            this.inst.sendKeyDownUpSync(66);
        } catch (SecurityException unused3) {
        }
    }
}
