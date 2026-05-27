package com.texa.careapp.app.activationSosServices;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.databinding.AlertDialogFirmwareVersionBinding;

/* JADX INFO: loaded from: classes.dex */
public class FirmwareVersionAlertDialog extends Screen {
    public static final String TAG = "FirmwareVersionAlertDialog";

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.alert_dialog_firmware_version;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        AlertDialogFirmwareVersionBinding alertDialogFirmwareVersionBinding = (AlertDialogFirmwareVersionBinding) DataBindingUtil.bind(view);
        alertDialogFirmwareVersionBinding.fwDialogTitle.setText(getContext().getString(R.string.firmware_alert_title));
        alertDialogFirmwareVersionBinding.fwDialogDescription.setText(getContext().getString(R.string.firmware_alert_description));
        alertDialogFirmwareVersionBinding.fwDialogOkButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.FirmwareVersionAlertDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m135x1631fc80(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-FirmwareVersionAlertDialog, reason: not valid java name */
    public /* synthetic */ void m135x1631fc80(View view) {
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
