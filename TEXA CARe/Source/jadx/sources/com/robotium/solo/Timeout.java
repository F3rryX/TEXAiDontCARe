package com.robotium.solo;

/* JADX INFO: loaded from: classes.dex */
public class Timeout {
    private static int largeTimeout;
    private static int smallTimeout;

    public static void setLargeTimeout(int i) {
        largeTimeout = i;
    }

    public static void setSmallTimeout(int i) {
        smallTimeout = i;
    }

    public static int getLargeTimeout() {
        return largeTimeout;
    }

    public static int getSmallTimeout() {
        return smallTimeout;
    }
}
