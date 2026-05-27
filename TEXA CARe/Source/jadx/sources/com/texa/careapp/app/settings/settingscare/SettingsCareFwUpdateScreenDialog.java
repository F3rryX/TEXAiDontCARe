package com.texa.careapp.app.settings.settingscare;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenDialogFwUpdateBinding;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsCareFwUpdateScreenDialog extends Screen {
    public static final String TAG = "SettingsCareFwUpdateScreenDialog";
    private int status;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_dialog_fw_update;
    }

    public SettingsCareFwUpdateScreenDialog(int i, CareApplication careApplication) {
        this.status = i;
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenDialogFwUpdateBinding screenDialogFwUpdateBinding = (ScreenDialogFwUpdateBinding) DataBindingUtil.bind(view);
        int i = this.status;
        if (i == -1) {
            screenDialogFwUpdateBinding.dialogFwUpdateDescription.setText(getContext().getString(R.string.alert_check_firmware_not_connected_message));
        } else if (i == 0) {
            screenDialogFwUpdateBinding.dialogFwUpdateDescription.setText(getContext().getString(R.string.alert_check_firmware_not_available_message));
        } else if (i == 1 || i == 2) {
            screenDialogFwUpdateBinding.dialogFwUpdateDescription.setText(getContext().getString(R.string.alert_check_firmware_upgrade_started_message));
        }
        screenDialogFwUpdateBinding.dialogFwUpdateBtn.setText(getContext().getString(R.string.alert_check_firmware_button));
        screenDialogFwUpdateBinding.dialogFwUpdateBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareFwUpdateScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m405x46355e9c(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-settingscare-SettingsCareFwUpdateScreenDialog, reason: not valid java name */
    public /* synthetic */ void m405x46355e9c(View view) {
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
