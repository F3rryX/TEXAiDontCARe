package com.texa.careapp.app.sos.countdown;

/* JADX INFO: loaded from: classes2.dex */
public class CountdownUpdateEvent {
    private static final String TAG = "CountdownUpdateEvent";
    private int count;

    public int getCount() {
        return this.count;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public String toString() {
        return "CountdownUpdateEvent{count=" + this.count + '}';
    }
}
