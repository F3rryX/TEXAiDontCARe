package com.texa.careapp.utils.broadcastreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.Constants;
import com.texa.careapp.app.utils.NetworkStateManagementFragment;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkStateChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent(Constants.Actions.CHECK_INTERNET_STATE);
        intent2.putExtra(Constants.EXTRA_INTERNET_STATE, NetworkStateManagementFragment.isInternetConnected(context));
        intent2.putExtra(Constants.EXTRA_TIME_MILLIS_EVENT, new Date().getTime());
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent2);
    }
}
