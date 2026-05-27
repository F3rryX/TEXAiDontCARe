package com.texa.careapp.app.onboarding;

import android.os.Bundle;
import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.base.BaseActivity;

/* JADX INFO: loaded from: classes2.dex */
public class CareSiteActivity extends BaseActivity {
    public static final String TAG = "CareSiteActivity";
    private Navigator mNavigator;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_care_site);
        findViewById(R.id.activity_care_site_back_btn).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.CareSiteActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m274xfb7ab9e9(view);
            }
        });
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.goTo(new CareSiteScreen(getCareApplication()));
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-onboarding-CareSiteActivity, reason: not valid java name */
    public /* synthetic */ void m274xfb7ab9e9(View view) {
        onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigator.onBackPressed()) {
            return;
        }
        super.onBackPressed();
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
