package com.texa.careapp.app.activationSosServices;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.DialogActivationServiceVehicleBinding;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public class ActivationServiceVehicleDialog extends Screen {

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "ActivationServiceVehicleDialog";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_activation_service_vehicle;
    }

    ActivationServiceVehicleDialog() {
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        DialogActivationServiceVehicleBinding dialogActivationServiceVehicleBinding = (DialogActivationServiceVehicleBinding) DataBindingUtil.bind(view);
        dialogActivationServiceVehicleBinding.dialogActivationServiceVehicleUndo.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m131x9457462e(view2);
            }
        });
        dialogActivationServiceVehicleBinding.dialogActivationServiceVehicleConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m132xc80570ef(view2);
            }
        });
        dialogActivationServiceVehicleBinding.dialogActivationServiceVehicleDescription.setText(String.format(getContext().getString(R.string.sos_dialog_right_vehicle_description), Utils.formatVehicleModel(this.mVehicleObserver.getSelectedVehicle())));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationServiceVehicleDialog, reason: not valid java name */
    public /* synthetic */ void m131x9457462e(View view) {
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-ActivationServiceVehicleDialog, reason: not valid java name */
    public /* synthetic */ void m132xc80570ef(View view) {
        this.mEventBus.post(new VehicleConfirmed());
        goBack();
    }

    class VehicleConfirmed {
        VehicleConfirmed() {
        }
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }
}
