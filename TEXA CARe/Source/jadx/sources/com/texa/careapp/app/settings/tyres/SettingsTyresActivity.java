package com.texa.careapp.app.settings.tyres;

import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.TyresConfigurationCompletedEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.VehicleDataManager;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsTyresActivity extends BaseActivity {
    private static final String TAG = "SettingsTyresActivity";
    public static boolean blockSyncThresholds;
    public static boolean blockSyncVehicleData;
    CareApplication mCareApplication;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private VehicleModel mVehicleModel;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_tyres_settings);
        Timber.d("%s onCreate", TAG);
        CareApplication careApplication = (CareApplication) getApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(true);
            disableLogoActionBarToolbar();
        }
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container_tyres_settings);
        this.mNavigator.setActionBar(getSupportActionBar());
        try {
            this.mVehicleModel = this.mVehicleDataManager.getVehicleById(getIntent().getExtras().getString(VehicleModel.COLUMN_UID));
        } catch (Exception unused) {
            Timber.w("%s EXTRA_VEHICLE_ID null !", TAG);
        }
        Navigator navigator = this.mNavigator;
        if (navigator != null) {
            navigator.goTo(new TyresOptionsScreen(this.mVehicleModel));
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Timber.d("%s onResume", TAG);
        this.mEventBus.register(this);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Timber.d("%s onPause", TAG);
        this.mEventBus.unregister(this);
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }

    public void completeTyresConfiguration() {
        this.mEventBus.post(new TyresConfigurationCompletedEvent());
    }

    @Subscribe
    public void onEvent(TyresConfigurationCompletedEvent tyresConfigurationCompletedEvent) {
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }
}
