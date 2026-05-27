package com.robotium.solo;

import android.app.Instrumentation;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class Swiper {
    public static final int EVENT_TIME_INTERVAL_MS = 10;
    public static final int GESTURE_DURATION_MS = 1000;
    private final Instrumentation _instrument;

    public Swiper(Instrumentation instrumentation) {
        this._instrument = instrumentation;
    }

    public void generateSwipeGesture(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        float f = pointF.x;
        float f2 = pointF.y;
        float f3 = pointF2.x;
        float f4 = pointF2.y;
        float f5 = pointF3.x;
        float f6 = pointF3.y;
        float f7 = pointF4.x;
        float f8 = pointF4.y;
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
        this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 0, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0));
        this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, (pointerProperties2.id << 8) + 5, 2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0));
        float f9 = f5 - f;
        float f10 = 100;
        float f11 = f9 / f10;
        float f12 = (f6 - f2) / f10;
        float f13 = (f7 - f3) / f10;
        float f14 = (f8 - f4) / f10;
        int i = 0;
        for (int i2 = 100; i < i2; i2 = 100) {
            jUptimeMillis2 += 10;
            pointerCoordsArr[0].x += f11;
            pointerCoordsArr[0].y += f12;
            pointerCoordsArr[1].x += f13;
            pointerCoordsArr[1].y += f14;
            this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 2, 2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0));
            i++;
        }
    }
}
