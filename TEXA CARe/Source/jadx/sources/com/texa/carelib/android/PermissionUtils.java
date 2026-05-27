package com.texa.carelib.android;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionUtils {
    public static int checkSelfPermission(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return context.checkSelfPermission(str);
        }
        return 0;
    }
}
