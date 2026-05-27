package com.texa.careapp.utils.broadcastreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.Constants;
import com.texa.careapp.utils.Utils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class GpsStateChangedReceiver extends BroadcastReceiver {
    private static final String GPS_ACTION_PROVIDERS_CHANGED = "android.location.PROVIDERS_CHANGED";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().matches(GPS_ACTION_PROVIDERS_CHANGED)) {
            Intent intent2 = new Intent(Constants.Actions.CHECK_GPS_STATE);
            intent2.putExtra(Constants.EXTRA_GPS_STATE, Utils.isGpsAvailable(context));
            intent2.putExtra(Constants.EXTRA_TIME_MILLIS_EVENT, new Date().getTime());
            LocalBroadcastManager.getInstance(context).sendBroadcast(intent2);
        }
    }
}
