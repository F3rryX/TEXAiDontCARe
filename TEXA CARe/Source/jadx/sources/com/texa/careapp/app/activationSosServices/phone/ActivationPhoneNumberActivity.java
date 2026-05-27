package com.texa.careapp.app.activationSosServices.phone;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.HaveToCheckConsistentData;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.base.BaseActivity;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
public class ActivationPhoneNumberActivity extends BaseActivity {
    protected CareApplication mCareApplication;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) ActivationPhoneNumberActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_number_validator);
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new NumberValidatorScreen(this));
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        this.mEventBus.post(new HaveToCheckConsistentData(false));
        super.onBackPressed();
    }

    @Override // com.texa.careapp.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ShowProgressEvent showProgressEvent) {
        createProgressDialogScreen(showProgressEvent.getMessage().toString());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(CancelProgressEvent cancelProgressEvent) {
        dismissProgressDialogScreen();
    }

    @Subscribe
    public void onEvent(CloseActivityEvent closeActivityEvent) {
        if (closeActivityEvent.getActivity().equals(ActivationServiceContactActivity.class)) {
            finish();
        }
    }
}
