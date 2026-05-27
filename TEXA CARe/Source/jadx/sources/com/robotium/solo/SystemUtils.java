package com.robotium.solo;

import android.app.Instrumentation;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class SystemUtils {
    private Instrumentation instrumentation;

    public SystemUtils(Instrumentation instrumentation) {
        this.instrumentation = instrumentation;
    }

    public void setMobileData(Boolean bool) {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.instrumentation.getTargetContext().getSystemService("connectivity");
        try {
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("setMobileDataEnabled", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(connectivityManager, bool);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setWiFiData(Boolean bool) {
        try {
            ((WifiManager) this.instrumentation.getTargetContext().getSystemService("wifi")).setWifiEnabled(bool.booleanValue());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
