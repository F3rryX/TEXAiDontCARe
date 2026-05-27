package com.texa.carelib.communication.internal;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes2.dex */
class DeviceConfigurationService {
    private static final String SHARED_PREFERENCE_NAME = "DeviceConfigurationService";
    private static DeviceConfigurationService _Instance;
    private static final Object mLock = new Object();

    private DeviceConfigurationService() {
    }

    public static synchronized DeviceConfigurationService get() {
        if (_Instance == null) {
            _Instance = new DeviceConfigurationService();
        }
        return _Instance;
    }

    public DeviceConfiguration get(Context context, String str) {
        DeviceConfiguration deviceConfigurationFromJson;
        synchronized (mLock) {
            deviceConfigurationFromJson = DeviceConfiguration.fromJson(getSharedPreferences(context).getString(str, ""));
        }
        return deviceConfigurationFromJson;
    }

    public void put(Context context, String str, DeviceConfiguration deviceConfiguration) {
        synchronized (mLock) {
            SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
            if (deviceConfiguration != null) {
                editorEdit.putString(str, DeviceConfiguration.toJson(deviceConfiguration));
            } else {
                editorEdit.remove(str);
            }
            editorEdit.apply();
        }
    }

    private SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(SHARED_PREFERENCE_NAME, 0);
    }
}
