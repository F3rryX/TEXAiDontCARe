package com.texa.careapp.app.settings.tyres;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenTyresOptionsBinding;
import com.texa.careapp.model.VehicleModel;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class TyresOptionsScreen extends Screen {
    private static String TAG = "TyresOptionsScreen";
    private final VehicleModel mVehicle;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_tyres_options;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return R.string.tyres_settings_title;
    }

    TyresOptionsScreen(VehicleModel vehicleModel) {
        this.mVehicle = vehicleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenTyresOptionsBinding screenTyresOptionsBinding = (ScreenTyresOptionsBinding) DataBindingUtil.bind(view);
        screenTyresOptionsBinding.buttonTyresNewInstallation.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.tyres.TyresOptionsScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onTyresNewInstallationClick(view2);
            }
        });
        screenTyresOptionsBinding.buttonTyresInversion.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.tyres.TyresOptionsScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.onTyresInversionClick(view2);
            }
        });
        getNavigator().updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTyresNewInstallationClick(View view) {
        Timber.d("%s onTyresNewInstallationClick()", TAG);
        getNavigator().goTo(new TyresNewInstallScreen(this.mVehicle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTyresInversionClick(View view) {
        Timber.d("%s onTyresInversionClick()", TAG);
        getNavigator().goTo(new TyresInversionScreen(this.mVehicle));
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }
}
