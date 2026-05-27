package com.texa.careapp.app.schedule;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.ShowAllDeleteButtonEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.base.BaseActivity;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleActivity extends BaseActivity {

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return false;
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context) {
        Bundle bundle = new Bundle();
        Intent intent = new Intent(context, (Class<?>) ScheduleActivity.class);
        intent.addFlags(268435456);
        intent.putExtras(bundle);
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
        this.mNavigator.goTo(new ScheduleScreen());
    }

    private void setupAddElementMenu(MenuItem menuItem) {
        menuItem.setIcon(com.texa.careapp.R.drawable.ic_deleteicon);
        menuItem.setTitle(R.string.delete_schedules);
    }

    @Override // com.texa.careapp.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void enableScheduleForDelete() {
        this.mEventBus.post(new ShowAllDeleteButtonEvent());
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
        if (closeActivityEvent.getActivity().equals(ScheduleActivity.class)) {
            finish();
        }
    }
}
