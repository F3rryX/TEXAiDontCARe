package com.texa.careapp.app.calibration;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.base.BaseActivity;

/* JADX INFO: loaded from: classes2.dex */
public class CalibrationActivity extends BaseActivity {
    public static final String HAVE_TO_VALIDATE_NUMBER = "HAVE_TO_VALIDATE_NUMBER";
    public static final String SHOULD_START_MAIN_ACTIVITY = "SHOULD_START_MAIN_ACTIVITY";

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context, boolean z) {
        return buildIntent(context, z, true);
    }

    public static Intent buildIntent(Context context, boolean z, boolean z2) {
        Intent intent = new Intent(context, (Class<?>) CalibrationActivity.class);
        intent.putExtra(SHOULD_START_MAIN_ACTIVITY, z);
        intent.putExtra(HAVE_TO_VALIDATE_NUMBER, z2);
        intent.addFlags(67108864);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_calibration);
        CareApplication careApplication = (CareApplication) getApplication();
        careApplication.component().inject(this);
        Navigator instanceFor = Navigator.getInstanceFor(this);
        instanceFor.setContainerResId(R.id.activity_calibration_container);
        instanceFor.goTo(new CalibrationScreen(careApplication, this));
    }
}
