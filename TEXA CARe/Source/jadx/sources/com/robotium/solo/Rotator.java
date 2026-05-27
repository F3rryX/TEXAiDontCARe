package com.robotium.solo;

import android.app.Instrumentation;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;

/* JADX INFO: loaded from: classes.dex */
class Rotator {
    private static final int EVENT_TIME_INTERVAL_MS = 10;
    public static final int LARGE = 0;
    public static final int SMALL = 1;
    private final Instrumentation _instrument;

    public Rotator(Instrumentation instrumentation) {
        this._instrument = instrumentation;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00ce A[LOOP:0: B:10:0x00c3->B:12:0x00ce, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void generateRotateGesture(int i, PointF pointF, PointF pointF2) {
        double d;
        double d2;
        double d3;
        float f = pointF.x;
        float f2 = pointF.y;
        float f3 = pointF2.x;
        float f4 = pointF2.y;
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        MotionEvent.PointerCoords pointerCoords2 = new MotionEvent.PointerCoords();
        pointerCoords.x = f;
        pointerCoords.y = f2;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        pointerCoords2.x = f3;
        pointerCoords2.y = f4;
        pointerCoords2.pressure = 1.0f;
        pointerCoords2.size = 1.0f;
        MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords, pointerCoords2};
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        MotionEvent.PointerProperties pointerProperties2 = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = 1;
        pointerProperties2.id = 1;
        pointerProperties2.toolType = 1;
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties, pointerProperties2};
        this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 0, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
        this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, (pointerProperties2.id << 8) + 5, 2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
        if (i == 0) {
            d = 0.01d;
        } else {
            if (i != 1) {
                d2 = 0.0d;
                long j = jUptimeMillis2;
                d3 = 0.0d;
                while (d3 < 3.141592653589793d) {
                    long j2 = j + 10;
                    MotionEvent.PointerCoords pointerCoords3 = pointerCoordsArr[0];
                    pointerCoords3.x = (float) (((double) pointerCoords3.x) + Math.cos(d3));
                    MotionEvent.PointerCoords pointerCoords4 = pointerCoordsArr[0];
                    pointerCoords4.y = (float) (((double) pointerCoords4.y) + Math.sin(d3));
                    MotionEvent.PointerCoords pointerCoords5 = pointerCoordsArr[1];
                    double d4 = d3 + 3.141592653589793d;
                    pointerCoords5.x = (float) (((double) pointerCoords5.x) + Math.cos(d4));
                    MotionEvent.PointerCoords pointerCoords6 = pointerCoordsArr[1];
                    pointerCoords6.y = (float) (((double) pointerCoords6.y) + Math.sin(d4));
                    this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j2, 2, 2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
                    d3 += d2;
                    j = j2;
                }
                long j3 = j + 10;
                this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j3, (pointerProperties2.id << 8) + 6, 2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
                this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j3 + 10, 1, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
            }
            d = 0.1d;
        }
        d2 = d;
        long j4 = jUptimeMillis2;
        d3 = 0.0d;
        while (d3 < 3.141592653589793d) {
        }
        long j32 = j4 + 10;
        this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j32, (pointerProperties2.id << 8) + 6, 2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
        this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j32 + 10, 1, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
    }
}
