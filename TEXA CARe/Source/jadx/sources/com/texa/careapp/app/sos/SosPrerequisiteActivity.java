package com.texa.careapp.app.sos;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.Constants;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.ServiceDataManager;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SosPrerequisiteActivity extends BaseActivity {
    private static final String SOS_ID = "SOS_ID";
    private Navigator mNavigator;

    @Inject
    protected ServiceDataManager mServiceDataManager;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context, ServiceDataModel serviceDataModel) {
        Intent intent = new Intent(context, (Class<?>) SosPrerequisiteActivity.class);
        if (serviceDataModel != null) {
            intent.putExtra(SOS_ID, serviceDataModel.getUid());
        }
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_base);
        getCareApplication().component().inject(this);
        String stringExtra = getIntent().getStringExtra(SOS_ID);
        if (stringExtra == null) {
            Timber.e("ServiceDataModel uuid == null", new Object[0]);
        }
        if (getIntent() != null && getIntent().getBooleanExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, false)) {
            FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        Navigator navigator = this.mNavigator;
        ServiceDataManager serviceDataManager = this.mServiceDataManager;
        if (stringExtra == null) {
            stringExtra = "";
        }
        navigator.goTo(new SosPrerequisiteScreen(serviceDataManager.getServiceByUid(stringExtra), this));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }
}
