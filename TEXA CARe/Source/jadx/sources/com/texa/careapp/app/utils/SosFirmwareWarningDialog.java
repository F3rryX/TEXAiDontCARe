package com.texa.careapp.app.utils;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.DialogCheckFirmwareSosBinding;
import com.texa.carelib.communication.Communication;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class SosFirmwareWarningDialog extends Screen {
    private TextView btnOk;
    private TextView btnUndo;
    private Activity mActivity;

    @Inject
    Communication mCommunication;
    private Navigator mNavigator;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "dialog_check_firmware_sos";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_check_firmware_sos;
    }

    public SosFirmwareWarningDialog(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        Navigator navigator = getNavigator();
        this.mNavigator = navigator;
        ((CareApplication) navigator.getApplication()).component().inject(this);
        DialogCheckFirmwareSosBinding dialogCheckFirmwareSosBinding = (DialogCheckFirmwareSosBinding) DataBindingUtil.bind(view);
        this.btnUndo = dialogCheckFirmwareSosBinding.dialogCheckFirmwareSosUndo;
        this.btnOk = dialogCheckFirmwareSosBinding.dialogCheckFirmwareSosOk;
        if (this.mCommunication.isConnected()) {
            this.btnUndo.setVisibility(0);
            this.btnUndo.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.utils.SosFirmwareWarningDialog$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m505xa9d4ae39(view2);
                }
            });
            this.btnOk.setText(R.string.dialog_check_firmware_sos_btn_manual_update);
            this.btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.utils.SosFirmwareWarningDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m506x370f5fba(view2);
                }
            });
            return;
        }
        this.btnUndo.setVisibility(8);
        this.btnOk.setText(R.string.dialog_check_firmware_sos_btn_ok);
        this.btnOk.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.utils.SosFirmwareWarningDialog$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m507xc44a113b(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-utils-SosFirmwareWarningDialog, reason: not valid java name */
    public /* synthetic */ void m505xa9d4ae39(View view) {
        this.mNavigator.goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-utils-SosFirmwareWarningDialog, reason: not valid java name */
    public /* synthetic */ void m506x370f5fba(View view) {
        this.mNavigator.goBack();
        this.mNavigator.goTo(new UpdateFirmwareDialog(this.mActivity));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-utils-SosFirmwareWarningDialog, reason: not valid java name */
    public /* synthetic */ void m507xc44a113b(View view) {
        this.mNavigator.goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }
}
