package com.texa.careapp.app.diagnosis;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.sos.MechanicActivity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisDataActivity extends BaseActivity {
    protected CareApplication mCareApplication;
    private Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) DiagnosisDataActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(DiagnosisDataPagerAdapter.PAGE_PARAM_FLAG, i);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_diagnosis_data);
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        if (getIntent() != null && getIntent().getBooleanExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, false)) {
            FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
        }
        findViewById(R.id.call_mechanic_floating_button).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisDataActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m214xe43edf9e(view);
            }
        });
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Bundle extras = getIntent().getExtras();
        int i = extras != null ? extras.getInt(DiagnosisDataPagerAdapter.PAGE_PARAM_FLAG) : 0;
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new DiagnosisDataScreen(this.mCareApplication, i));
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-diagnosis-DiagnosisDataActivity, reason: not valid java name */
    public /* synthetic */ void m214xe43edf9e(View view) {
        startMechanicActivity();
    }

    private void startMechanicActivity() {
        Intent intent = new Intent(this, (Class<?>) MechanicActivity.class);
        intent.addFlags(335544320);
        startActivity(intent);
    }
}
