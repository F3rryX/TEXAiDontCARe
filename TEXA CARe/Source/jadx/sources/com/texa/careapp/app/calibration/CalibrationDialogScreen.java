package com.texa.careapp.app.calibration;

import android.view.View;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.carelib.care.attitude.Attitude;
import com.texa.carelib.core.CareLibException;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class CalibrationDialogScreen extends Screen {

    @Inject
    protected Attitude mAttitude;

    @Inject
    protected EventBus mEventBus;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_calibration;
    }

    CalibrationDialogScreen(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        view.findViewById(R.id.dialog_calibration_btn_no).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.calibration.CalibrationDialogScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m186x2e508af0(view2);
            }
        });
        view.findViewById(R.id.dialog_calibration_btn_yes).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.calibration.CalibrationDialogScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m187xbb3da20f(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-calibration-CalibrationDialogScreen, reason: not valid java name */
    public /* synthetic */ void m186x2e508af0(View view) {
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-calibration-CalibrationDialogScreen, reason: not valid java name */
    public /* synthetic */ void m187xbb3da20f(View view) {
        startCalibration();
    }

    private void startCalibration() {
        if (this.mAttitude.needsEstimation()) {
            try {
                this.mAttitude.beginEstimation();
            } catch (CareLibException unused) {
                this.mEventBus.post(new CalibrationProcedure(false));
            }
        }
        this.mEventBus.post(new CalibrationProcedure(true));
        getNavigator().goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return CalibrationDialogScreen.class.getName();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    class CalibrationProcedure {
        private boolean calibrationStarted;

        public boolean isCalibrationStarted() {
            return this.calibrationStarted;
        }

        CalibrationProcedure(boolean z) {
            this.calibrationStarted = z;
        }
    }
}
