package com.texa.careapp.app.onboarding.dialogs;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.onboarding.BaseVehicleDataScreen;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.databinding.DialogPlateValidationBinding;
import com.texa.careapp.model.VehicleDataModelResponseEntity;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class PlateValidationScreenDialog extends Screen {
    public static final String TAG = "PlateValidationScreenDialog";
    private CareApplication mApplication;

    @Inject
    protected EventBus mEventBus;
    private OnBoardingActivity mOnBoardingActivity;
    private VehicleDataModelResponseEntity mVehicleDataModelResponseEntity;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_plate_validation;
    }

    public PlateValidationScreenDialog(CareApplication careApplication, OnBoardingActivity onBoardingActivity, VehicleDataModelResponseEntity vehicleDataModelResponseEntity) {
        this.mApplication = careApplication;
        this.mOnBoardingActivity = onBoardingActivity;
        this.mVehicleDataModelResponseEntity = vehicleDataModelResponseEntity;
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        DialogPlateValidationBinding dialogPlateValidationBinding = (DialogPlateValidationBinding) DataBindingUtil.bind(view);
        dialogPlateValidationBinding.dialogPlateValidationDescription.setText(getContext().getString(R.string.dialog_plate_validation_description, this.mOnBoardingActivity.getBrand() + " " + this.mOnBoardingActivity.getModel(), this.mOnBoardingActivity.getPlate()));
        dialogPlateValidationBinding.dialogPlateValidationBtnConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.PlateValidationScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m325xd8a602fa(view2);
            }
        });
        dialogPlateValidationBinding.dialogPlateValidationBtnNegative.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.PlateValidationScreenDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m326xc9f7927b(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-PlateValidationScreenDialog, reason: not valid java name */
    public /* synthetic */ void m325xd8a602fa(View view) {
        plateIsCorrect();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-PlateValidationScreenDialog, reason: not valid java name */
    public /* synthetic */ void m326xc9f7927b(View view) {
        plateIsNotCorrect();
    }

    private void plateIsCorrect() {
        this.mEventBus.post(new PlateConfirmedEvent(this.mVehicleDataModelResponseEntity));
        goBack();
    }

    private void plateIsNotCorrect() {
        this.mOnBoardingActivity.setBrand("");
        this.mOnBoardingActivity.setModel("");
        this.mOnBoardingActivity.setPlate("");
        this.mOnBoardingActivity.setDescription("");
        goTo(new BaseVehicleDataScreen(this.mApplication, this.mOnBoardingActivity));
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    public class PlateConfirmedEvent {
        public VehicleDataModelResponseEntity mVehicleDataModelResponseEntity;

        PlateConfirmedEvent(VehicleDataModelResponseEntity vehicleDataModelResponseEntity) {
            this.mVehicleDataModelResponseEntity = vehicleDataModelResponseEntity;
        }
    }
}
