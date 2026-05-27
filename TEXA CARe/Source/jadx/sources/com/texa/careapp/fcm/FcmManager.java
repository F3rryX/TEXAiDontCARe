package com.texa.careapp.fcm;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import com.texa.careapp.Constants;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FcmManager {
    public static final String TAG = "FcmManager";
    private Context mContext;
    private SharedPreferences mSharedPreferences;

    public FcmManager(Context context) {
        this.mSharedPreferences = context.getSharedPreferences(Constants.FCM_REGISTRATION_TOKEN, 0);
        this.mContext = context;
    }

    public void saveCurrentToken(String str) {
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.putString(Constants.FCM_CURRENT_TOKEN, str);
        editorEdit.putInt(Constants.FCM_APP_VERSION, getAppVersion(this.mContext));
        editorEdit.apply();
    }

    private static int getAppVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Could not get package name: " + e);
        }
    }

    public String getNotificationToken() {
        String string = this.mSharedPreferences.getString(Constants.FCM_CURRENT_TOKEN, "");
        if (string.isEmpty()) {
            Log.i(TAG, "Registration not found.");
            FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: com.texa.careapp.fcm.FcmManager$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f$0.m611lambda$getNotificationToken$0$comtexacareappfcmFcmManager(task);
                }
            });
        }
        if (this.mSharedPreferences.getInt(Constants.FCM_APP_VERSION, Integer.MIN_VALUE) == getAppVersion(this.mContext)) {
            return string;
        }
        Log.i(TAG, "App version changed.");
        return "";
    }

    /* JADX INFO: renamed from: lambda$getNotificationToken$0$com-texa-careapp-fcm-FcmManager, reason: not valid java name */
    public /* synthetic */ void m611lambda$getNotificationToken$0$comtexacareappfcmFcmManager(Task task) {
        if (task.isSuccessful()) {
            saveCurrentToken((String) task.getResult());
        } else {
            Timber.e(task.getException(), "Exception while getting fcm token", new Object[0]);
        }
    }

    public void checkPlayServices(Activity activity) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        int iIsGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(activity);
        if (iIsGooglePlayServicesAvailable == 0 || !googleApiAvailability.isUserResolvableError(iIsGooglePlayServicesAvailable)) {
            return;
        }
        googleApiAvailability.getErrorDialog(activity, iIsGooglePlayServicesAvailable, 2404).show();
    }
}
