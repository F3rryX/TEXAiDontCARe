package com.texa.careapp.app.sos;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.sos.countdown.CountdownTimerImpl;
import com.texa.careapp.base.GooglePlayServicesActivity;
import com.texa.careapp.databinding.ActivityAutomaticSosBinding;
import com.texa.careapp.impactdetection.ImpactEvent;
import com.texa.careapp.views.CircleDisplay;
import com.texa.carelib.care.impacts.Impact;
import java.util.Date;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class AutomaticSosActivity extends GooglePlayServicesActivity {
    private static final int COUNTDOWN_SECONDS = 15;
    protected static final String KEY_IMPACT_DATE = "impact-date-key";
    protected static final String KEY_IMPACT_TYPE = "impact-type-key";
    private static final String TAG = "AutomaticSosPresenter";
    protected CircleDisplay mCountdownView;
    private AutomaticSosPresenter mPresenter;

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
    }

    public static Intent buildIntent(Context context, int i, Date date, int i2) {
        Intent intent = new Intent(context, (Class<?>) AutomaticSosActivity.class);
        intent.setFlags(268435456);
        addImpactDateExtra(date, intent);
        addImpactTypeExtra(i, intent);
        addImpactSosServiceTypeExtra(i2, intent);
        return intent;
    }

    protected static Date getImpactDateExtra(Intent intent) {
        Date date = null;
        try {
            long longExtra = intent.getLongExtra(KEY_IMPACT_DATE, -1L);
            if (longExtra > 0) {
                date = new Date(longExtra);
            }
        } catch (Exception e) {
            Timber.d(e, "ignored exception", new Object[0]);
        }
        return date != null ? date : new Date();
    }

    protected static int getImpactTypeExtra(Intent intent) {
        int intExtra = intent.getIntExtra(KEY_IMPACT_TYPE, 0);
        int i = 1;
        if (intExtra != 1) {
            i = 2;
            if (intExtra != 2) {
                return 0;
            }
        }
        return i;
    }

    private static void addImpactDateExtra(Impact impact, Intent intent) {
        if (impact == null) {
            return;
        }
        addImpactDateExtra(impact.getDate(), intent);
    }

    private static void addImpactDateExtra(Date date, Intent intent) {
        if (date != null) {
            intent.putExtra(KEY_IMPACT_DATE, date.getTime());
        }
    }

    private static void addImpactTypeExtra(int i, Intent intent) {
        intent.putExtra(KEY_IMPACT_TYPE, i);
    }

    private static void addImpactSosServiceTypeExtra(int i, Intent intent) {
        intent.putExtra(Constants.KEY_SOS_SERVICE_TYPE, i);
    }

    private static void addImpactDateExtra(ImpactEvent impactEvent, Intent intent) {
        if (impactEvent == null || impactEvent.getImpactTime() == null) {
            return;
        }
        intent.putExtra(KEY_IMPACT_DATE, impactEvent.getImpactTime());
    }

    @Override // com.texa.careapp.base.GooglePlayServicesActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        unlockScreen();
        ActivityAutomaticSosBinding activityAutomaticSosBinding = (ActivityAutomaticSosBinding) DataBindingUtil.setContentView(this, R.layout.activity_automatic_sos);
        this.mCountdownView = activityAutomaticSosBinding.activityAutomaticSosCountDownView;
        CareApplication careApplication = (CareApplication) getApplication();
        Date impactDateExtra = getImpactDateExtra(getIntent());
        this.mPresenter = new AutomaticSosPresenter(activityAutomaticSosBinding, new CountdownTimerImpl(15), this, getImpactTypeExtra(getIntent()), impactDateExtra, getImpactSosServiceType(getIntent()));
        careApplication.component().inject(this.mPresenter);
        this.mCountdownView.showValue(15.0f, 15.0f, false);
        this.mCountdownView.setFormatDigits(0);
        this.mCountdownView.setTouchEnabled(false);
        this.mCountdownView.setTextSize(75.0f);
        this.mCountdownView.setUnit("");
        EventBus.getDefault().register(this.mPresenter);
        this.mPresenter.start();
    }

    private int getImpactSosServiceType(Intent intent) {
        return intent.getIntExtra(Constants.KEY_SOS_SERVICE_TYPE, -1);
    }

    @Override // com.texa.careapp.base.GooglePlayServicesActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Timber.d(" onStop() ", new Object[0]);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.mPresenter.onBackPressed();
        super.onBackPressed();
    }

    private void unlockScreen() {
        ((KeyguardManager) getApplicationContext().getSystemService("keyguard")).newKeyguardLock(TAG).disableKeyguard();
        ((PowerManager) getSystemService("power")).newWakeLock(805306394, "SosWakeLock").acquire();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mPresenter.resetVolume();
        this.mPresenter.stop();
        this.mPresenter.release();
        this.mPresenter.destroySub();
        EventBus.getDefault().unregister(this.mPresenter);
        Timber.d(" onDestroy() ", new Object[0]);
    }

    public AutomaticSosPresenter getAutomaticSosPresenter() {
        return this.mPresenter;
    }
}
