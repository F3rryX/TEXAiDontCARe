package com.texa.careapp.app.schedule.addThreshold;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.base.BaseActivity;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
public class AddNewThresholdActivity extends BaseActivity {
    private static final String OPEN_SCREEN_KEY_ADD_THRESHOLD = "OPEN_SCREEN_KEY";
    public static final int SCREEN_SELECT_THRESHOLD = 1;
    public static final int SCREEN_SELECT_TYRES_OPTION = 2;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) AddNewThresholdActivity.class);
        intent.putExtra(OPEN_SCREEN_KEY_ADD_THRESHOLD, i);
        intent.addFlags(268435456);
        return intent;
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

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_activation_service);
        getCareApplication().component().inject(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        if (getIntent().getIntExtra(OPEN_SCREEN_KEY_ADD_THRESHOLD, 1) != 1) {
            return;
        }
        this.mNavigator.goTo(new SelectNewScheduleScreen());
    }

    @Subscribe
    public void onEvent(ShowProgressEvent showProgressEvent) {
        createProgressDialogScreen(showProgressEvent.getMessage());
    }

    @Subscribe
    public void onEvent(CancelProgressEvent cancelProgressEvent) {
        dismissProgressDialogScreen();
    }

    @Subscribe
    public void onEvent(CloseActivityEvent closeActivityEvent) {
        if (closeActivityEvent.getActivity().equals(AddNewThresholdActivity.class)) {
            finish();
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getItemId();
        onBackPressed();
        return true;
    }
}
