package com.robotium.solo;

/* JADX INFO: loaded from: classes.dex */
class Sleeper {
    private int miniPauseDuration;
    private int pauseDuration;

    private Sleeper() {
    }

    public Sleeper(int i, int i2) {
        this.pauseDuration = i;
        this.miniPauseDuration = i2;
    }

    public void sleep() {
        sleep(this.pauseDuration);
    }

    public void sleepMini() {
        sleep(this.miniPauseDuration);
    }

    public void sleep(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException unused) {
        }
    }
}
