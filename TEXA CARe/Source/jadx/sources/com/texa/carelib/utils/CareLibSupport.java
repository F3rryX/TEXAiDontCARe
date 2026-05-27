package com.texa.carelib.utils;

import android.util.Log;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class CareLibSupport {
    private static final String TAG = "CareLibSupport";

    public boolean rebootVCI(FirmwareUpgradeProcedure firmwareUpgradeProcedure, int i) {
        return rebootVCI(firmwareUpgradeProcedure, i, 0);
    }

    public boolean rebootVCI(FirmwareUpgradeProcedure firmwareUpgradeProcedure, int i, int i2) {
        Method method;
        try {
            method = firmwareUpgradeProcedure.getClass().getMethod("rebootVCI", Integer.TYPE, Integer.TYPE);
        } catch (NoSuchMethodException unused) {
            method = null;
        }
        if (method == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(firmwareUpgradeProcedure, Integer.valueOf(i), Integer.valueOf(i2))).booleanValue();
        } catch (IllegalAccessException e) {
            Log.e(TAG, "rebootVCI throws an exception.", e);
            return false;
        } catch (InvocationTargetException e2) {
            Log.e(TAG, "rebootVCI throws an exception.", e2);
            return false;
        }
    }
}
