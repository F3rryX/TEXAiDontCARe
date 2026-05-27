package com.texa.careapp.base;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.material.snackbar.Snackbar;
import com.texa.care.R;
import com.texa.care.eco_driving.RxProfile;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda1;
import com.texa.careapp.app.auth.LoginActivity;
import com.texa.careapp.app.onboarding.CareAuthenticationScreen;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.ProgressDialogFragment;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.profile.events.AuthenticationErrorEvent;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseActivity extends AppCompatActivity implements OnAccountsUpdateListener {
    private AccountManager mAccountManager;
    private Toolbar mActionBarToolbar;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected LocalBroadcastManager mLocalBroadcastManager;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected SharedPreferences mPreferences;
    private ProgressDialogFragment mProgressDialogFragment;

    @Inject
    protected RxProfile mRxProfile;

    @Inject
    protected UserDataManager mUserDataManager;
    private Disposable profileDisposable;
    private Disposable refreshTokenExpiredDisposable;

    protected abstract boolean requiresAuthentication();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAccountManager = AccountManager.get(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (requiresAuthentication()) {
            checkUserData();
            this.mAccountManager.addOnAccountsUpdatedListener(this, null, true);
        }
        if (this.mRxProfile != null) {
            Utils.safeDispose(this.profileDisposable);
            this.profileDisposable = this.mRxProfile.observeAuthenticationError().filter(new Predicate() { // from class: com.texa.careapp.base.BaseActivity$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.m526lambda$onResume$0$comtexacareappbaseBaseActivity((AuthenticationErrorEvent) obj);
                }
            }).take(1L).subscribe(new Consumer() { // from class: com.texa.careapp.base.BaseActivity$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m527lambda$onResume$1$comtexacareappbaseBaseActivity((AuthenticationErrorEvent) obj);
                }
            });
        }
        if ((this instanceof LoginActivity) || this.mUserDataManager == null) {
            return;
        }
        Utils.safeDispose(this.refreshTokenExpiredDisposable);
        this.refreshTokenExpiredDisposable = this.mUserDataManager.observeRefreshTokenExpired().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).filter(new Predicate() { // from class: com.texa.careapp.base.BaseActivity$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        }).take(1L).subscribe(new Consumer() { // from class: com.texa.careapp.base.BaseActivity$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m528lambda$onResume$3$comtexacareappbaseBaseActivity((Boolean) obj);
            }
        }, MainActivity$$ExternalSyntheticLambda1.INSTANCE);
    }

    /* JADX INFO: renamed from: lambda$onResume$0$com-texa-careapp-base-BaseActivity, reason: not valid java name */
    public /* synthetic */ boolean m526lambda$onResume$0$comtexacareappbaseBaseActivity(AuthenticationErrorEvent authenticationErrorEvent) throws Exception {
        return !Utils.shouldStartOutOfTheBox(this.mPreferences, this.mDongleDataManager);
    }

    /* JADX INFO: renamed from: lambda$onResume$1$com-texa-careapp-base-BaseActivity, reason: not valid java name */
    public /* synthetic */ void m527lambda$onResume$1$comtexacareappbaseBaseActivity(AuthenticationErrorEvent authenticationErrorEvent) throws Exception {
        this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_CONN, ServerLogModel.ResultForLog.FAILED, "pin error after onboarding");
        Navigator.getInstanceFor(this).goTo(new CareAuthenticationScreen(this, authenticationErrorEvent.getDeviceInfo()));
    }

    /* JADX INFO: renamed from: lambda$onResume$3$com-texa-careapp-base-BaseActivity, reason: not valid java name */
    public /* synthetic */ void m528lambda$onResume$3$comtexacareappbaseBaseActivity(Boolean bool) throws Exception {
        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
        finish();
    }

    private void checkUserData() {
        if (this.mUserDataManager.getUserCached() == null) {
            Utils.removeAccount(this.mAccountManager);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Utils.safeDispose(this.profileDisposable);
        Utils.safeDispose(this.refreshTokenExpiredDisposable);
        if (requiresAuthentication()) {
            this.mAccountManager.removeOnAccountsUpdatedListener(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        getActionBarToolbar();
    }

    protected final CareApplication getCareApplication() {
        return (CareApplication) getApplication();
    }

    public Toolbar getActionBarToolbar() {
        if (this.mActionBarToolbar == null) {
            Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_actionbar);
            this.mActionBarToolbar = toolbar;
            if (toolbar != null) {
                setSupportActionBar(toolbar);
                if (getSupportActionBar() != null) {
                    getSupportActionBar().setDisplayShowTitleEnabled(false);
                }
            }
        }
        return this.mActionBarToolbar;
    }

    public void disableLogoActionBarToolbar() {
        Toolbar toolbar = this.mActionBarToolbar;
        if (toolbar != null) {
            ((ImageView) toolbar.findViewById(R.id.logo_toolbar_actionbar)).setVisibility(8);
        }
    }

    @Override // android.accounts.OnAccountsUpdateListener
    public void onAccountsUpdated(Account[] accountArr) {
        for (Account account : accountArr) {
            if (Constants.ACCOUNT_TYPE.equals(account.type)) {
                return;
            }
        }
        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
        finish();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    protected Snackbar snackbarInfo(String str) {
        return Snackbar.make(findViewById(android.R.id.content), str, 0);
    }

    protected void createProgressDialogScreen(CharSequence charSequence) {
        if (this.mProgressDialogFragment == null) {
            this.mProgressDialogFragment = new ProgressDialogFragment();
        }
        this.mProgressDialogFragment.setMessage(charSequence);
        if (this.mProgressDialogFragment.isAdded()) {
            return;
        }
        this.mProgressDialogFragment.show(getSupportFragmentManager(), NotificationCompat.CATEGORY_PROGRESS);
    }

    protected void dismissProgressDialogScreen() {
        ProgressDialogFragment progressDialogFragment = this.mProgressDialogFragment;
        if (progressDialogFragment != null) {
            progressDialogFragment.dismiss();
        }
    }
}
