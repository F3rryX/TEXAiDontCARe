package com.texa.careapp.utils.broadcastreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class BootCompletedReceiver extends BroadcastReceiver {

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected SharedPreferences mPrefs;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ((CareApplication) context.getApplicationContext()).component().inject(this);
        if (!Utils.shouldStartOutOfTheBox(this.mPrefs, this.mDongleDataManager)) {
            Timber.d("shouldStartOutOfTheBox=FALSE -> service can starts on boot", new Object[0]);
            this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.LAUNCH_SERVICE_ON_BOOT);
            if (Build.VERSION.SDK_INT > 25) {
                ContextCompat.startForegroundService(context, new Intent(context, (Class<?>) CareService.class));
                return;
            } else {
                context.startService(new Intent(context, (Class<?>) CareService.class));
                return;
            }
        }
        Timber.d(" shouldStartOutOfTheBox=TRUE -> service cannot start on boot", new Object[0]);
    }
}
