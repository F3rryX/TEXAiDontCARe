package com.texa.careapp.app.onboarding.dialogs;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.onboarding.BaseVehicleDataScreen;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep;
import com.texa.careapp.databinding.DialogVehicleAlreadyConfiguredBinding;
import com.texa.careapp.model.VehicleOwnershipEntity;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.utils.Utils;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleAlreadyConfiguredScreenDialog extends Screen {
    private static final int ACTION_NOTIFICATION = 0;
    private static final int ACTION_OPEN_REPORT = 1;
    public static final String TAG = "VehicleAlreadyConfiguredScreenDialog";
    private String hwId;
    private int mAction;
    private CareApplication mApplication;
    private OnBoardingActivity mOnBoardingActivity;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private String vehicleId;
    private String vin;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_vehicle_already_configured;
    }

    public VehicleAlreadyConfiguredScreenDialog(CareApplication careApplication, OnBoardingActivity onBoardingActivity, String str, String str2, String str3, int i) {
        this.mApplication = careApplication;
        careApplication.component().inject(this);
        this.mOnBoardingActivity = onBoardingActivity;
        this.hwId = str;
        this.vin = str2;
        this.vehicleId = str3;
        this.mAction = i;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        DialogVehicleAlreadyConfiguredBinding dialogVehicleAlreadyConfiguredBinding = (DialogVehicleAlreadyConfiguredBinding) DataBindingUtil.bind(view);
        TextView textView = dialogVehicleAlreadyConfiguredBinding.dialogVehicleAlreadyConfiguredDescription;
        TextView textView2 = dialogVehicleAlreadyConfiguredBinding.dialogVehicleAlreadyConfiguredBtn;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m327x9a8a8e67(view2);
            }
        });
        if (Utils.isEmpty(this.mOnBoardingActivity.getModel()) || Utils.isEmpty(this.mOnBoardingActivity.getPlate())) {
            return;
        }
        int i = this.mAction;
        if (i == 0) {
            textView.setText(getContext().getString(R.string.dialog_vehicle_already_configured_to_confirm, this.mOnBoardingActivity.getModel(), this.mOnBoardingActivity.getPlate()));
            textView2.setText(getContext().getString(R.string.dialog_vehicle_already_configured_to_confirm_button));
        } else {
            if (i != 1) {
                return;
            }
            textView.setText(getContext().getString(R.string.dialog_vehicle_already_configured_open_segnalation, this.mOnBoardingActivity.getModel(), this.mOnBoardingActivity.getPlate()));
            textView2.setText(getContext().getString(R.string.dialog_vehicle_already_configured_open_segnalation_button));
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-VehicleAlreadyConfiguredScreenDialog, reason: not valid java name */
    public /* synthetic */ void m327x9a8a8e67(View view) {
        goToBaseVehicleData();
    }

    private void goToBaseVehicleData() {
        goBack();
        int i = this.mAction;
        if (i != 0) {
            if (i == 1) {
                openReport();
            }
        } else {
            this.mOnBoardingActivity.setBrand("");
            this.mOnBoardingActivity.setModel("");
            this.mOnBoardingActivity.setPlate("");
            this.mOnBoardingActivity.setDescription("");
            goTo(new BaseVehicleDataScreen(this.mApplication, this.mOnBoardingActivity));
        }
    }

    private void openReport() {
        this.mTexaCareApiServiceUser.openSegnalation(new VehicleOwnershipEntity(this.hwId, this.mOnBoardingActivity.getPlate(), this.vin, this.vehicleId)).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m328x9104151e((ServerResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("Error opening report", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$openReport$1$com-texa-careapp-app-onboarding-dialogs-VehicleAlreadyConfiguredScreenDialog, reason: not valid java name */
    public /* synthetic */ void m328x9104151e(ServerResponse serverResponse) throws Exception {
        this.mOnBoardingActivity.finish();
        Intent intent = new Intent(getContext(), (Class<?>) WalkthroughActivityLastStep.class);
        intent.addFlags(268435456);
        getContext().startActivity(intent);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }
}
