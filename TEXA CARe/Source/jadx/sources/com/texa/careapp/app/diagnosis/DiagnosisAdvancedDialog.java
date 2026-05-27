package com.texa.careapp.app.diagnosis;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.DialogAdvancedDiagnosisBinding;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisAdvancedDialog extends Screen {
    private final boolean haveAdvancedDiagnosis;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "DiagnosisAdvancedDialog";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_advanced_diagnosis;
    }

    public DiagnosisAdvancedDialog(boolean z) {
        this.haveAdvancedDiagnosis = z;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        DialogAdvancedDiagnosisBinding dialogAdvancedDiagnosisBinding = (DialogAdvancedDiagnosisBinding) DataBindingUtil.bind(view);
        dialogAdvancedDiagnosisBinding.dialogAdvancedDiagnosisButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.diagnosis.DiagnosisAdvancedDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m213x2985b2b4(view2);
            }
        });
        dialogAdvancedDiagnosisBinding.dialogAdvancedDiagnosisText.setText(this.haveAdvancedDiagnosis ? R.string.diagnosis_advanced_available_dialog_description : R.string.diagnosis_advanced_not_available_dialog_description);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-diagnosis-DiagnosisAdvancedDialog, reason: not valid java name */
    public /* synthetic */ void m213x2985b2b4(View view) {
        getNavigator().goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }
}
