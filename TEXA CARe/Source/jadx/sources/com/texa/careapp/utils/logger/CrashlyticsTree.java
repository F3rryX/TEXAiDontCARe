package com.texa.careapp.utils.logger;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsTree extends Timber.Tree {
    private String priorityTAG(int i) {
        return i != 3 ? i != 4 ? i != 5 ? i != 6 ? i != 7 ? "V" : ExifInterface.GPS_MEASUREMENT_IN_PROGRESS : ExifInterface.LONGITUDE_EAST : ExifInterface.LONGITUDE_WEST : "I" : "D";
    }

    @Override // timber.log.Timber.Tree
    protected void log(int i, String str, String str2, Throwable th) {
        if (i == 2 || i == 3) {
            return;
        }
        FirebaseCrashlytics.getInstance().log(String.format("%1$s/%2$s: %3$s", priorityTAG(i), str, str2));
        if (th != null) {
            FirebaseCrashlytics.getInstance().recordException(th);
        }
    }
}
