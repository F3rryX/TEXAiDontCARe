package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;

/* JADX INFO: compiled from: com.android.billingclient:billing@@4.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {
    private ResultReceiver zza;
    private boolean zzb;

    private final Intent zza() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onActivityResult(int i, int i2, Intent intent) {
        ResultReceiver resultReceiver;
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            int responseCode = com.google.android.gms.internal.play_billing.zza.zzg(intent, "ProxyBillingActivity").getResponseCode();
            if (i2 != -1) {
                StringBuilder sb = new StringBuilder(85);
                sb.append("Activity finished with resultCode ");
                sb.append(i2);
                sb.append(" and billing's responseCode: ");
                sb.append(responseCode);
                com.google.android.gms.internal.play_billing.zza.zzk("ProxyBillingActivity", sb.toString());
                resultReceiver = this.zza;
                if (resultReceiver != null) {
                    resultReceiver.send(responseCode, intent == null ? null : intent.getExtras());
                } else {
                    Intent intentZza = zza();
                    if (intent != null) {
                        if (intent.getExtras() != null) {
                            intentZza.putExtras(intent.getExtras());
                        } else {
                            com.google.android.gms.internal.play_billing.zza.zzk("ProxyBillingActivity", "Got null bundle!");
                            intentZza.putExtra("RESPONSE_CODE", 6);
                            intentZza.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                        }
                    }
                    sendBroadcast(intentZza);
                }
            } else if (responseCode != 0) {
                i2 = -1;
                StringBuilder sb2 = new StringBuilder(85);
                sb2.append("Activity finished with resultCode ");
                sb2.append(i2);
                sb2.append(" and billing's responseCode: ");
                sb2.append(responseCode);
                com.google.android.gms.internal.play_billing.zza.zzk("ProxyBillingActivity", sb2.toString());
                resultReceiver = this.zza;
                if (resultReceiver != null) {
                }
            } else {
                responseCode = 0;
                resultReceiver = this.zza;
                if (resultReceiver != null) {
                }
            }
        } else {
            StringBuilder sb3 = new StringBuilder(69);
            sb3.append("Got onActivityResult with wrong requestCode: ");
            sb3.append(i);
            sb3.append("; skipping...");
            com.google.android.gms.internal.play_billing.zza.zzk("ProxyBillingActivity", sb3.toString());
        }
        this.zzb = false;
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            com.google.android.gms.internal.play_billing.zza.zzj("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.zzb = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.zza = (ResultReceiver) bundle.getParcelable("result_receiver");
                return;
            }
            return;
        }
        com.google.android.gms.internal.play_billing.zza.zzj("ProxyBillingActivity", "Launching Play Store billing flow");
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.zza = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
        } else {
            pendingIntent = null;
        }
        try {
            this.zzb = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 53);
            sb.append("Got exception while trying to start a purchase flow: ");
            sb.append(strValueOf);
            com.google.android.gms.internal.play_billing.zza.zzk("ProxyBillingActivity", sb.toString());
            ResultReceiver resultReceiver = this.zza;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                Intent intentZza = zza();
                intentZza.putExtra("RESPONSE_CODE", 6);
                intentZza.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                sendBroadcast(intentZza);
            }
            this.zzb = false;
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.zzb) {
            Intent intentZza = zza();
            intentZza.putExtra("RESPONSE_CODE", 1);
            intentZza.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(intentZza);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.zza;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.zzb);
    }
}
