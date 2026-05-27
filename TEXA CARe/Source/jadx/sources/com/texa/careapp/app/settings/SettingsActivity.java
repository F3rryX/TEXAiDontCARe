package com.texa.careapp.app.settings;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsActivity extends BaseActivity {
    public static final String SCROLL_TO_SERVICE = "SCROLL_TO_SERVICE";

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context) {
        Bundle bundle = new Bundle();
        Intent intent = new Intent(context, (Class<?>) SettingsActivity.class);
        intent.addFlags(268435456);
        intent.putExtras(bundle);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mEventBus.register(this);
        if (Utils.shouldStartService(this, CareService.class)) {
            startService(CareService.buildConnectToDongleIntent(getApplicationContext()));
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Subscribe
    public void onEvent(ShowProgressEvent showProgressEvent) {
        createProgressDialogScreen(showProgressEvent.getMessage());
    }

    @Subscribe
    public void onEvent(CancelProgressEvent cancelProgressEvent) {
        dismissProgressDialogScreen();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings);
        getCareApplication().component().inject(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new SettingsScreen(this, getIntent().getBooleanExtra(SCROLL_TO_SERVICE, false)));
    }
}
