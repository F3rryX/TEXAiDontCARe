package com.texa.careapp.app.permission;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.dashboard.PowerSaveScreenDialog;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivityPermissionBinding;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.careapp.utils.permission.Func;
import com.texa.careapp.views.NoSwipeableViewPager;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionActivity extends BaseActivity {
    private PermissionAdapter mAdapter;
    protected CareApplication mCareApplication;
    private CorePermission.PermissionRequestObject mPermissionRequest;

    @Inject
    protected SharedPreferences mSharedPreferences;
    protected TextView mSkipBtn;
    private NoSwipeableViewPager mViewPager;
    private List<PermissionModel> permissions;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) PermissionActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityPermissionBinding activityPermissionBinding = (ActivityPermissionBinding) DataBindingUtil.setContentView(this, R.layout.activity_permission);
        this.mViewPager = activityPermissionBinding.activityPermissionViewPager;
        TextView textView = activityPermissionBinding.activityPermissionBtnSkip;
        this.mSkipBtn = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.permission.PermissionActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m336x87ed7e0c(view);
            }
        });
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.permissions = getPermissions();
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.texa.careapp.app.permission.PermissionActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                PermissionActivity.this.mSkipBtn.setText(PermissionActivity.this.mAdapter.getSkipTextRes(i));
                PermissionActivity.this.mSkipBtn.setVisibility(PermissionActivity.this.mAdapter.getIsMandatory(i) ? 4 : 0);
            }
        });
        PermissionAdapter permissionAdapter = new PermissionAdapter(this, this.mCareApplication.component(), this.permissions);
        this.mAdapter = permissionAdapter;
        this.mViewPager.setAdapter(permissionAdapter);
        if (this.mAdapter.getCount() > 0) {
            this.mSkipBtn.setText(this.mAdapter.getSkipTextRes(0));
            this.mSkipBtn.setVisibility(this.mAdapter.getIsMandatory(0) ? 4 : 0);
        }
        if (((PowerManager) getSystemService("power")).isPowerSaveMode()) {
            Navigator instanceFor = Navigator.getInstanceFor(this);
            instanceFor.setContainerResId(R.id.container);
            instanceFor.goTo(new PowerSaveScreenDialog(this.mCareApplication));
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-permission-PermissionActivity, reason: not valid java name */
    public /* synthetic */ void m336x87ed7e0c(View view) {
        skipPermission();
    }

    public void requestPermission(String[] strArr) {
        if (strArr != null) {
            this.mPermissionRequest = CorePermission.with((AppCompatActivity) this).request(strArr).onAllGranted(new Func() { // from class: com.texa.careapp.app.permission.PermissionActivity.3
                @Override // com.texa.careapp.utils.permission.Func
                protected void call() {
                    PermissionActivity.this.mViewPager.setCurrentItem(PermissionActivity.this.mViewPager.getCurrentItem() + 1);
                    Timber.d("Permission enabled", new Object[0]);
                }
            }).onAnyDenied(new Func() { // from class: com.texa.careapp.app.permission.PermissionActivity.2
                @Override // com.texa.careapp.utils.permission.Func
                protected void call() {
                    Timber.d("Permission not enabled", new Object[0]);
                }
            }).ask(1);
        } else {
            proceed(true);
        }
    }

    private List<PermissionModel> getPermissions() {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 31 && !Utils.isPermissionEnabled(this, CorePermission.USE_NEARBY_DEVICES)) {
            arrayList.add(new PermissionModel(R.string.permission_bluetooth_title, R.string.permission_bluetooth_description, R.string.permission_grant_btn, com.texa.careapp.R.drawable.bluetooth_icon, CorePermission.USE_NEARBY_DEVICES, false, R.string.permission_location_skip, true));
        }
        if (!Utils.isPermissionEnabled(this, CorePermission.USE_ACCESS_LOCATION)) {
            arrayList.add(new PermissionModel(R.string.permission_location_title, R.string.permission_background_location_description, R.string.permission_location_btn, R.drawable.permission_location, CorePermission.USE_ACCESS_LOCATION, false, R.string.permission_location_skip, false));
        }
        if (Build.VERSION.SDK_INT >= 29 && !Utils.isPermissionEnabled(this, CorePermission.USE_ACCESS_BACKGROUND_LOCATION)) {
            arrayList.add(new PermissionModel(R.string.permission_location_title, R.string.permission_background_location_description, R.string.permission_location_btn, R.drawable.permission_location, CorePermission.USE_ACCESS_BACKGROUND_LOCATION, false, R.string.permission_location_skip, false));
        }
        if (!Utils.isPermissionEnabled(this, CorePermission.USE_PHONE)) {
            arrayList.add(new PermissionModel(R.string.permission_phone_title, R.string.permission_phone_description, R.string.permission_phone_btn, R.drawable.permission_phone, CorePermission.USE_PHONE, false, R.string.permission_phone_skip, false));
        }
        if (Build.VERSION.SDK_INT >= 24 && !Utils.isAlreadyIgnoringBatteryOptimization(this)) {
            arrayList.add(new PermissionModel(R.string.permission_white_list_title, R.string.permission_white_list_description, R.string.permission_white_list_confirm_button, com.texa.careapp.R.drawable.battery, new String[]{"android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"}, false, R.string.permission_phone_skip, false));
        }
        if (Build.VERSION.SDK_INT >= 29 && !Utils.canDrawOverlays(this)) {
            arrayList.add(new PermissionModel(R.string.permission_white_list_title, R.string.permission_white_list_description, R.string.permission_white_list_confirm_button, com.texa.careapp.R.drawable.battery, CorePermission.DRAW_OVERLAY, false, R.string.permission_phone_skip, true));
        }
        arrayList.add(new PermissionModel(R.string.permission_crash_title, R.string.permission_crash_description, R.string.permission_crash_btn, R.drawable.permission_impact, null, true, R.string.permission_crash_skip, false));
        return arrayList;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        CorePermission.PermissionRequestObject permissionRequestObject = this.mPermissionRequest;
        if (permissionRequestObject != null) {
            permissionRequestObject.onRequestPermissionsResult(i, strArr, iArr);
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    private void proceed(boolean z) {
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.putBoolean(Constants.PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION, z);
        editorEdit.apply();
        if (Utils.shouldStartOutOfTheBox(this.mPreferences, this.mDongleDataManager)) {
            startActivity(new Intent(this, (Class<?>) OnBoardingActivity.class));
        } else {
            startActivity(new Intent(this, (Class<?>) MainActivity.class));
        }
        finish();
    }

    private void skipPermission() {
        if (this.permissions.get(this.mViewPager.getCurrentItem()).getPermissionType() != null) {
            NoSwipeableViewPager noSwipeableViewPager = this.mViewPager;
            noSwipeableViewPager.setCurrentItem(noSwipeableViewPager.getCurrentItem() + 1);
        } else {
            proceed(false);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (7 != i || (Build.VERSION.SDK_INT >= 23 && !Utils.isAlreadyIgnoringBatteryOptimization(this))) {
            if (6 != i) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 29 && !Utils.canDrawOverlays(this)) {
                return;
            }
        }
        skipPermission();
    }
}
