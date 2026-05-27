package com.texa.careapp.app.schedule.addThreshold;

import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ScreenSetDefaultDataThresholdBinding;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.views.EditableDateView;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SetDefaultDateThresholdScreen extends Screen {
    private static final String TAG = "SetDefaultDateThresholdScreen";

    @Inject
    protected EventBus mEventBus;
    private EditableDateView mNewExpirationDatePicker;

    @Inject
    protected ScheduleDataManager mScheduleDataManager;
    private final ThresholdModel mThreshold;
    private TextView mThresholdTitleView;
    private final UserModel mUser;
    private final VehicleModel mVehicle;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_set_default_data_threshold;
    }

    SetDefaultDateThresholdScreen(ThresholdModel thresholdModel, VehicleModel vehicleModel, UserModel userModel) {
        this.mThreshold = thresholdModel;
        this.mVehicle = vehicleModel;
        this.mUser = userModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSetDefaultDataThresholdBinding screenSetDefaultDataThresholdBinding = (ScreenSetDefaultDataThresholdBinding) DataBindingUtil.bind(view);
        this.mThresholdTitleView = screenSetDefaultDataThresholdBinding.thresholdTitol;
        this.mNewExpirationDatePicker = screenSetDefaultDataThresholdBinding.editDateViewNewThreshold;
        screenSetDefaultDataThresholdBinding.layoutAddConfirmed.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetDefaultDateThresholdScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m355x9dd66552(view2);
            }
        });
        screenSetDefaultDataThresholdBinding.layoutNewExpDate.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetDefaultDateThresholdScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m356xb8475e71(view2);
            }
        });
        this.mThresholdTitleView.setText(ThresholdModel.TYPE_DESCRIPTION.get(this.mThreshold.getType()).intValue());
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetDefaultDateThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m355x9dd66552(View view) {
        addNewScheduleConfirmed();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-schedule-addThreshold-SetDefaultDateThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m356xb8475e71(View view) {
        this.mNewExpirationDatePicker.showDatePicker();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
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

    private void addNewScheduleConfirmed() {
        if (this.mNewExpirationDatePicker.isEmpty()) {
            Toast.makeText(getContext(), R.string.invalid_data, 1).show();
        } else {
            this.mScheduleDataManager.setScheduleFromThreshold(this.mThreshold, this.mVehicle, this.mNewExpirationDatePicker.getDate());
        }
    }
}
