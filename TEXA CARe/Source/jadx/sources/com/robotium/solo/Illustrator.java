package com.robotium.solo;

import android.app.Instrumentation;
import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class Illustrator {
    private Instrumentation inst;

    public Illustrator(Instrumentation instrumentation) {
        this.inst = instrumentation;
    }

    public void illustrate(Illustration illustration) {
        if (illustration == null || illustration.getPoints().isEmpty()) {
            throw new IllegalArgumentException("Illustration must not be null and requires at least one point.");
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        SystemClock.uptimeMillis();
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = illustration.getToolType();
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        MotionEvent.PointerCoords[] pointerCoordsArr = {pointerCoords};
        ArrayList<PressurePoint> points = illustration.getPoints();
        int i = 0;
        while (i < points.size()) {
            PressurePoint pressurePoint = points.get(i);
            pointerCoords.x = pressurePoint.x;
            pointerCoords.y = pressurePoint.y;
            pointerCoords.pressure = pressurePoint.pressure;
            pointerCoords.size = 1.0f;
            int i2 = i;
            ArrayList<PressurePoint> arrayList = points;
            MotionEvent.PointerProperties[] pointerPropertiesArr2 = pointerPropertiesArr;
            MotionEvent.PointerCoords pointerCoords2 = pointerCoords;
            MotionEvent.PointerCoords[] pointerCoordsArr2 = pointerCoordsArr;
            try {
                this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), i == 0 ? 0 : 2, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
            } catch (SecurityException unused) {
            }
            i = i2 + 1;
            points = arrayList;
            pointerCoords = pointerCoords2;
            pointerPropertiesArr = pointerPropertiesArr2;
            pointerCoordsArr = pointerCoordsArr2;
        }
        ArrayList<PressurePoint> arrayList2 = points;
        MotionEvent.PointerCoords pointerCoords3 = pointerCoords;
        MotionEvent.PointerCoords[] pointerCoordsArr3 = pointerCoordsArr;
        pointerCoordsArr3[0] = pointerCoords3;
        PressurePoint pressurePoint2 = arrayList2.get(arrayList2.size() - 1);
        pointerCoords3.x = pressurePoint2.x;
        pointerCoords3.y = pressurePoint2.y;
        pointerCoords3.pressure = pressurePoint2.pressure;
        pointerCoords3.size = 1.0f;
        try {
            this.inst.sendPointerSync(MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, 1, pointerPropertiesArr, pointerCoordsArr3, 0, 0, 1.0f, 1.0f, 0, 0, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0));
        } catch (SecurityException unused2) {
        }
    }
}
