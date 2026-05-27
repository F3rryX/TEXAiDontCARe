package com.robotium.solo;

import android.app.Instrumentation;
import android.view.View;
import android.widget.EditText;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class TextEnterer {
    private final Clicker clicker;
    private final DialogUtils dialogUtils;
    private final Instrumentation inst;

    public TextEnterer(Instrumentation instrumentation, Clicker clicker, DialogUtils dialogUtils) {
        this.inst = instrumentation;
        this.clicker = clicker;
        this.dialogUtils = dialogUtils;
    }

    public void setEditText(final EditText editText, final String str) {
        if (editText != null) {
            final String string = editText.getText().toString();
            this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.TextEnterer.1
                @Override // java.lang.Runnable
                public void run() {
                    editText.setInputType(0);
                    editText.performClick();
                    TextEnterer.this.dialogUtils.hideSoftKeyboard(editText, false, false);
                    if (str.equals("")) {
                        editText.setText(str);
                        return;
                    }
                    editText.setText(string + str);
                    editText.setCursorVisible(false);
                }
            });
        }
    }

    public void typeText(final EditText editText, String str) {
        if (editText != null) {
            this.inst.runOnMainSync(new Runnable() { // from class: com.robotium.solo.TextEnterer.2
                @Override // java.lang.Runnable
                public void run() {
                    editText.setInputType(0);
                }
            });
            boolean z = false;
            this.clicker.clickOnScreen((View) editText, false, 0);
            this.dialogUtils.hideSoftKeyboard(editText, true, true);
            int i = 0;
            while (!z && i < 10) {
                try {
                    this.inst.sendStringSync(str);
                    z = true;
                } catch (SecurityException unused) {
                    this.dialogUtils.hideSoftKeyboard(editText, true, true);
                    i++;
                }
            }
            if (z) {
                return;
            }
            Assert.fail("Text can not be typed!");
        }
    }
}
