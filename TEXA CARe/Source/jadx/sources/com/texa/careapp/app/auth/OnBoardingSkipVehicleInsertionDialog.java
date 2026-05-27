package com.texa.careapp.app.auth;

import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.onboarding.InstallationHelpScreen;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class OnBoardingSkipVehicleInsertionDialog extends Screen {
    private static final String TAG = "OnBoardingSkipVehicleInsertionDialog";
    private final OnBoardingActivity mActivity;
    private final CareApplication mApplication;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_skip_vehicle_insertion;
    }

    public OnBoardingSkipVehicleInsertionDialog(OnBoardingActivity onBoardingActivity, CareApplication careApplication) {
        Objects.requireNonNull(onBoardingActivity, "activity is marked @NonNull but is null");
        Objects.requireNonNull(careApplication, "careApplication is marked @NonNull but is null");
        this.mActivity = onBoardingActivity;
        this.mApplication = careApplication;
    }

    private void skipInsertion() {
        goTo(new InstallationHelpScreen(this.mApplication, this.mActivity, true));
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        view.findViewById(R.id.dialog_skip_vehicle_insertion_skip).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.OnBoardingSkipVehicleInsertionDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m160x4f1df7f(view2);
            }
        });
        view.findViewById(R.id.dialog_skip_vehicle_insertion_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.auth.OnBoardingSkipVehicleInsertionDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m161x8352e35e(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-auth-OnBoardingSkipVehicleInsertionDialog, reason: not valid java name */
    public /* synthetic */ void m160x4f1df7f(View view) {
        skipInsertion();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-auth-OnBoardingSkipVehicleInsertionDialog, reason: not valid java name */
    public /* synthetic */ void m161x8352e35e(View view) {
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
