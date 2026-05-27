package com.texa.careapp.app.settings.generalsettings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.base.BaseActivity;

/* JADX INFO: loaded from: classes2.dex */
public class GeneralSettingsActivity extends BaseActivity {
    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context) {
        Bundle bundle = new Bundle();
        Intent intent = new Intent(context, (Class<?>) GeneralSettingsActivity.class);
        intent.addFlags(268435456);
        intent.putExtras(bundle);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_general_settings_preferences);
        getCareApplication().component().inject(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        instanceFor.setContainerResId(R.id.general_settings_preferences_container);
        instanceFor.goTo(new GeneralSettingsScreen());
    }
}
