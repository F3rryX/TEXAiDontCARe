package com.texa.careapp.app.schedule.addThreshold;

import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ScreenSetDefaultOdometerThresholdBinding;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SetDefaultOdometerThresholdScreen extends Screen {
    private static final String TAG = "SetDefaultOdometerThresholdScreen";

    @Inject
    protected EventBus mEventBus;
    private EditText mNewExpirationOdoEditText;

    @Inject
    protected ScheduleDataManager mScheduleDataManager;
    private final ThresholdModel mThreshold;
    private final VehicleModel mVehicle;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_set_default_odometer_threshold;
    }

    public SetDefaultOdometerThresholdScreen(ThresholdModel thresholdModel, VehicleModel vehicleModel) {
        this.mThreshold = thresholdModel;
        this.mVehicle = vehicleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSetDefaultOdometerThresholdBinding screenSetDefaultOdometerThresholdBinding = (ScreenSetDefaultOdometerThresholdBinding) DataBindingUtil.bind(view);
        this.mNewExpirationOdoEditText = screenSetDefaultOdometerThresholdBinding.editTextViewNewExp;
        screenSetDefaultOdometerThresholdBinding.layoutAddConfirmed.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetDefaultOdometerThresholdScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m357xfac6a7d1(view2);
            }
        });
        screenSetDefaultOdometerThresholdBinding.thresholdTitol.setText(ThresholdModel.TYPE_DESCRIPTION.get(this.mThreshold.getType()).intValue());
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetDefaultOdometerThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m357xfac6a7d1(View view) {
        addNewScheduleConfirmed();
    }

    public void dismissProgressDialogScreen() {
        this.mEventBus.post(new CancelProgressEvent());
    }

    @Subscribe
    public void onEvent(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        Timber.d("vehicle Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) AddNewThresholdActivity.class));
    }

    @Subscribe
    public void onEvent(UserUpdatedEvent userUpdatedEvent) {
        Timber.d("user Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) AddNewThresholdActivity.class));
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void addNewScheduleConfirmed() {
        if (Utils.isEmpty(Utils.getValue(this.mNewExpirationOdoEditText))) {
            Toast.makeText(getContext(), R.string.invalid_data, 1).show();
        } else {
            this.mScheduleDataManager.setScheduleFromThreshold(this.mThreshold, this.mVehicle, Integer.valueOf(Integer.parseInt(Utils.getValue(this.mNewExpirationOdoEditText))));
        }
    }
}
