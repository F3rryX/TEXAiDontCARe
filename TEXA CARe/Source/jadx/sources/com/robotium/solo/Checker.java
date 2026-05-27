package com.robotium.solo;

import android.widget.CheckedTextView;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class Checker {
    private final ViewFetcher viewFetcher;
    private final Waiter waiter;

    public Checker(ViewFetcher viewFetcher, Waiter waiter) {
        this.viewFetcher = viewFetcher;
        this.waiter = waiter;
    }

    public <T extends CompoundButton> boolean isButtonChecked(Class<T> cls, int i) {
        return ((CompoundButton) this.waiter.waitForAndGetView(i, cls)).isChecked();
    }

    public <T extends CompoundButton> boolean isButtonChecked(Class<T> cls, String str) {
        CompoundButton compoundButton = (CompoundButton) this.waiter.waitForText(cls, str, 0, Timeout.getSmallTimeout(), true);
        return compoundButton != null && compoundButton.isChecked();
    }

    public boolean isCheckedTextChecked(String str) {
        CheckedTextView checkedTextView = (CheckedTextView) this.waiter.waitForText(CheckedTextView.class, str, 0, Timeout.getSmallTimeout(), true);
        return checkedTextView != null && checkedTextView.isChecked();
    }

    public boolean isSpinnerTextSelected(String str) {
        this.waiter.waitForAndGetView(0, Spinner.class);
        ArrayList currentViews = this.viewFetcher.getCurrentViews(Spinner.class, true);
        for (int i = 0; i < currentViews.size(); i++) {
            if (isSpinnerTextSelected(i, str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSpinnerTextSelected(int i, String str) {
        return ((TextView) ((Spinner) this.waiter.waitForAndGetView(i, Spinner.class)).getChildAt(0)).getText().equals(str);
    }
}
