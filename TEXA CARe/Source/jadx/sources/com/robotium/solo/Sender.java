package com.robotium.solo;

import android.app.Instrumentation;
import junit.framework.Assert;

/* JADX INFO: loaded from: classes.dex */
class Sender {
    private final Instrumentation inst;
    private final Sleeper sleeper;

    Sender(Instrumentation instrumentation, Sleeper sleeper) {
        this.inst = instrumentation;
        this.sleeper = sleeper;
    }

    public void sendKeyCode(int i) {
        this.sleeper.sleep();
        try {
            this.inst.sendCharacterSync(i);
        } catch (SecurityException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can not complete action! (");
            sb.append(e.getClass().getName() + ": " + e.getMessage());
            sb.append(")");
            Assert.fail(sb.toString());
        }
    }

    public void goBack() {
        this.sleeper.sleep();
        try {
            this.inst.sendKeyDownUpSync(4);
            this.sleeper.sleep();
        } catch (Throwable unused) {
        }
    }
}
