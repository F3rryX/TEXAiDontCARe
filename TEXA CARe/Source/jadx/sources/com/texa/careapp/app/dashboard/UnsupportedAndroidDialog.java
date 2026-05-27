package com.texa.careapp.app.dashboard;

import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;

/* JADX INFO: loaded from: classes2.dex */
public class UnsupportedAndroidDialog extends Screen {
    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_android_support_drop;
    }

    public UnsupportedAndroidDialog(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        view.findViewById(R.id.dialog_power_saving_mode_btn).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.UnsupportedAndroidDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m199x9e5c0fe6(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-UnsupportedAndroidDialog, reason: not valid java name */
    public /* synthetic */ void m199x9e5c0fe6(View view) {
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return PowerSaveScreenDialog.class.getName();
    }
}
