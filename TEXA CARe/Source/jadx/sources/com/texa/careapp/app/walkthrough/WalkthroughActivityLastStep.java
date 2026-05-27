package com.texa.careapp.app.walkthrough;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import com.texa.care.R;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.auth.LoginActivity;
import com.texa.careapp.app.onboarding.CareSiteActivity;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.onboarding.SellerMapActivity;
import com.texa.careapp.app.permission.PermissionActivity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.permission.CorePermission;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class WalkthroughActivityLastStep extends BaseActivity {
    public static final String TAG = "WalkthroughActivityLastStep";

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected LoginHelperRx mLoginHelperRx;

    @Inject
    protected SharedPreferences mPreferences;
    private boolean mShouldStartLogin;
    private boolean mShouldStartOutOfTheBox;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) WalkthroughActivityLastStep.class);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_walkthrough_final_step);
        getCareApplication().component().inject(this);
        findViewById(R.id.screen_walkthrough_description).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m523xe48d794c(view);
            }
        });
        findViewById(R.id.activity_walkthrough_btn_buy_it).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m524x78cbe8eb(view);
            }
        });
        findViewById(R.id.activity_walkthrough_btn_got_it).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m525xd0a588a(view);
            }
        });
        this.mShouldStartLogin = !this.mLoginHelperRx.isUserLogged();
        this.mShouldStartOutOfTheBox = Utils.shouldStartOutOfTheBox(this.mPreferences, this.mDongleDataManager);
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-walkthrough-WalkthroughActivityLastStep, reason: not valid java name */
    public /* synthetic */ void m523xe48d794c(View view) {
        openCareWebSite();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-texa-careapp-app-walkthrough-WalkthroughActivityLastStep, reason: not valid java name */
    public /* synthetic */ void m524x78cbe8eb(View view) {
        buyIt();
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-texa-careapp-app-walkthrough-WalkthroughActivityLastStep, reason: not valid java name */
    public /* synthetic */ void m525xd0a588a(View view) {
        proceed();
    }

    private void openCareWebSite() {
        startActivity(new Intent(this, (Class<?>) CareSiteActivity.class));
    }

    private void buyIt() {
        startActivity(new Intent(this, (Class<?>) SellerMapActivity.class));
    }

    private void proceed() {
        Class cls;
        if (this.mShouldStartLogin) {
            cls = LoginActivity.class;
        } else if (CorePermission.shouldRequestPermissions(this)) {
            cls = PermissionActivity.class;
        } else if (this.mShouldStartOutOfTheBox) {
            cls = OnBoardingActivity.class;
        } else {
            cls = MainActivity.class;
        }
        Intent intent = new Intent(this, (Class<?>) cls);
        overridePendingTransition(R.anim.fadein_animation, R.anim.fadeout_animation);
        startActivity(intent);
    }
}
