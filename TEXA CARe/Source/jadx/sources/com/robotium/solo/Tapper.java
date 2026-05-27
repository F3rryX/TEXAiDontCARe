package com.robotium.solo;

import android.app.Instrumentation;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;

/* JADX INFO: loaded from: classes.dex */
class Tapper {
    public static final int EVENT_TIME_INTERVAL_MS = 10;
    public static final int GESTURE_DURATION_MS = 1000;
    private final Instrumentation _instrument;

    public Tapper(Instrumentation instrumentation) {
        this._instrument = instrumentation;
    }

    public void generateTapGesture(int i, PointF... pointFArr) {
        float f;
        MotionEvent.PointerProperties pointerProperties;
        long jUptimeMillis = SystemClock.uptimeMillis();
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        float f2 = pointFArr[0].x;
        float f3 = pointFArr[0].y;
        float f4 = 0.0f;
        if (pointFArr.length == 2) {
            f4 = pointFArr[1].x;
            f = pointFArr[1].y;
        } else {
            f = 0.0f;
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointFArr.length];
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = f2;
        pointerCoords.y = f3;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        pointerCoordsArr[0] = pointerCoords;
        MotionEvent.PointerCoords pointerCoords2 = new MotionEvent.PointerCoords();
        if (pointFArr.length == 2) {
            pointerCoords2.x = f4;
            pointerCoords2.y = f;
            pointerCoords2.pressure = 1.0f;
            pointerCoords2.size = 1.0f;
            pointerCoordsArr[1] = pointerCoords2;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointFArr.length];
        MotionEvent.PointerProperties pointerProperties2 = new MotionEvent.PointerProperties();
        pointerProperties2.id = 0;
        pointerProperties2.toolType = 1;
        pointerPropertiesArr[0] = pointerProperties2;
        MotionEvent.PointerProperties pointerProperties3 = new MotionEvent.PointerProperties();
        if (pointFArr.length == 2) {
            pointerProperties3.id = 1;
            pointerProperties3.toolType = 1;
            pointerPropertiesArr[1] = pointerProperties3;
        }
        int i2 = i;
        long j = jUptimeMillis2;
        int i3 = 0;
        while (i3 != i2) {
            int i4 = i3;
            MotionEvent.PointerProperties pointerProperties4 = pointerProperties3;
            MotionEvent.PointerProperties[] pointerPropertiesArr2 = pointerPropertiesArr;
            MotionEvent.PointerCoords[] pointerCoordsArr2 = pointerCoordsArr;
            this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j, 0, pointFArr.length, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
            if (pointFArr.length == 2) {
                this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j, (pointerProperties4.id << 8) + 5, pointFArr.length, pointerPropertiesArr2, pointerCoordsArr2, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
                j += 10;
                pointerProperties = pointerProperties4;
                this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j, (pointerProperties4.id << 8) + 6, pointFArr.length, pointerPropertiesArr2, pointerCoordsArr2, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
            } else {
                pointerProperties = pointerProperties4;
            }
            j += 10;
            this._instrument.sendPointerSync(MotionEvent.obtain(jUptimeMillis, j, 1, pointFArr.length, pointerPropertiesArr2, pointerCoordsArr2, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
            i3 = i4 + 1;
            i2 = i;
            pointerPropertiesArr = pointerPropertiesArr2;
            pointerCoordsArr = pointerCoordsArr2;
            pointerProperties3 = pointerProperties;
        }
    }
}
