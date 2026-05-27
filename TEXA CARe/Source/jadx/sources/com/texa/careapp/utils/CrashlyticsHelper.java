package com.texa.careapp.utils;

import android.os.Build;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.texa.careapp.model.UserModel;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsHelper implements PropertyChangeListener {
    public CrashlyticsHelper(UserDataManager userDataManager) {
        setUser(userDataManager.getUserCached());
    }

    @Override // java.beans.PropertyChangeListener
    public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
        FirebaseCrashlytics.getInstance().setCustomKey(propertyChangeEvent.getPropertyName(), String.valueOf(propertyChangeEvent.getNewValue()));
    }

    public static void initSmartphoneInfos() {
        String radioVersion = Build.getRadioVersion();
        if (!Utils.isEmpty(radioVersion)) {
            FirebaseCrashlytics.getInstance().setCustomKey("BRANDBASE_VERSION", radioVersion);
        }
        String str = Build.FINGERPRINT;
        if (Utils.isEmpty(str)) {
            return;
        }
        FirebaseCrashlytics.getInstance().setCustomKey("FINGERPRINT", str);
    }

    public void setUser(UserModel userModel) {
        if (userModel != null) {
            if (!Utils.isEmpty(userModel.getEmail())) {
                FirebaseCrashlytics.getInstance().setCustomKey("user_email", userModel.getEmail());
            } else {
                FirebaseCrashlytics.getInstance().setCustomKey("user_email", userModel.getUserName());
            }
            FirebaseCrashlytics.getInstance().setUserId(userModel.getUid());
        }
    }
}
