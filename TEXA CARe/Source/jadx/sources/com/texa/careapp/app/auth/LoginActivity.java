package com.texa.careapp.app.auth;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.dagger.AuthenticationClient;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.authentication.AccessToken;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.core.CareLibException;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Date;
import java.util.UUID;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LoginActivity extends BaseActivity {
    public static boolean DISABLE_PRIVACY_DIALOG = false;
    public static boolean ENABLE_RECOVER_PASSWORD = true;
    public static final String TAG = "LoginActivity";

    @Inject
    @AuthenticationClient
    protected AccessTokenPersistenceManager mAccessTokenPersistenceManagerClient;

    @Inject
    protected Accessory mAccessory;

    @Inject
    @ClientId
    protected String mClientId;

    @Inject
    @ClientSecret
    protected String mClientSecret;

    @Inject
    protected DataManagerConfiguration mDataManagerConfiguration;
    private Navigator mNavigator;

    @Inject
    protected TexaCareAuthService mTexaCareAuthService;

    @Inject
    protected UserDataManager mUserDataManager;
    private boolean optionDialog;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public boolean isOptionDialog() {
        return this.optionDialog;
    }

    public void setOptionDialog(boolean z) {
        this.optionDialog = z;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        findViewById(R.id.activity_login_back_btn).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.LoginActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m159lambda$onCreate$0$comtexacareappappauthLoginActivity(view);
            }
        });
        CareApplication careApplication = (CareApplication) getApplication();
        careApplication.component().inject(this);
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        checkClientToken();
        if (bundle == null) {
            this.mNavigator.goTo(new SignInScreen(careApplication, this));
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-auth-LoginActivity, reason: not valid java name */
    public /* synthetic */ void m159lambda$onCreate$0$comtexacareappappauthLoginActivity(View view) {
        onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    private void checkClientToken() {
        if (this.mAccessTokenPersistenceManagerClient.getAccessToken() == null || ((long) (this.mAccessTokenPersistenceManagerClient.getAccessToken().expires_in.intValue() * 1000)) + this.mAccessTokenPersistenceManagerClient.getAccessToken().timestamp.longValue() < new Date().getTime()) {
            this.mTexaCareAuthService.getClientToken(TexaCareAuthService.GRANT_TYPE_CLIENT_CREDENTIALS, this.mClientId, this.mClientSecret).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.auth.LoginActivity$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m158xee0cd42f((AccessToken) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.auth.LoginActivity$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "onError getClientToken", new Object[0]);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$checkClientToken$1$com-texa-careapp-app-auth-LoginActivity, reason: not valid java name */
    public /* synthetic */ void m158xee0cd42f(AccessToken accessToken) throws Exception {
        this.mAccessTokenPersistenceManagerClient.persist(accessToken);
    }

    protected void setDriverId() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        boolean zIsHostAuthenticated = this.mAccessory.isHostAuthenticated();
        Log.d(TAG, "isHostAuthenticated=" + zIsHostAuthenticated);
        if (zIsHostAuthenticated) {
            try {
                this.mDataManagerConfiguration.setDriverID(UUID.fromString(userCached.getUid()));
            } catch (CareLibException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }
}
