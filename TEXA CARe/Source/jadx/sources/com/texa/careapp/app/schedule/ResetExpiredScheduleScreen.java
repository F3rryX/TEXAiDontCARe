package com.texa.careapp.app.schedule;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.databinding.ScreenResetExpireScheduleBinding;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.views.EditableDateView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ResetExpiredScheduleScreen extends Screen {
    private static final String TAG = "ResetExpiredScheduleScreen";
    DateFormat df = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());

    @Inject
    protected Context mContext;

    @Inject
    protected EventBus mEventBus;
    private EditableDateView mNewExpirationDate;
    private EditText mNewExpirationOdo;
    private IScheduleModel mSchedule;

    @Inject
    protected ScheduleDataManager mScheduleDataManager;

    @Inject
    TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_reset_expire_schedule;
    }

    public ResetExpiredScheduleScreen(IScheduleModel iScheduleModel) {
        this.mSchedule = iScheduleModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenResetExpireScheduleBinding screenResetExpireScheduleBinding = (ScreenResetExpireScheduleBinding) DataBindingUtil.bind(view);
        this.mNewExpirationDate = screenResetExpireScheduleBinding.editDateViewNewExp;
        this.mNewExpirationOdo = screenResetExpireScheduleBinding.editTextViewNewExp;
        if (this.mSchedule.getExpireDate() != null) {
            screenResetExpireScheduleBinding.layoutExpiredData.setVisibility(0);
            screenResetExpireScheduleBinding.layoutNewExpOdo.setVisibility(8);
            screenResetExpireScheduleBinding.textNewExp.setText(Utils.getScheduleTitle(this.mSchedule, this.mContext));
            screenResetExpireScheduleBinding.oldExpValue.setText(this.df.format(this.mSchedule.getExpireDate()));
            this.mNewExpirationDate.setDate(this.mSchedule.getExpireDate());
            screenResetExpireScheduleBinding.newExpConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.ResetExpiredScheduleScreen$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m340xe7cce684(view2);
                }
            });
            this.mNewExpirationDate.setTextSize(1, 24);
            return;
        }
        if (this.mSchedule.getExpireOdo() != null) {
            screenResetExpireScheduleBinding.layoutExpiredData.setVisibility(8);
            screenResetExpireScheduleBinding.layoutNewExpDate.setVisibility(8);
            screenResetExpireScheduleBinding.layoutNewExpOdo.setVisibility(0);
            screenResetExpireScheduleBinding.floatabelLabelNewExpOdo.setHint(Utils.getScheduleTitle(this.mSchedule, this.mContext));
            screenResetExpireScheduleBinding.newExpConfirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.ResetExpiredScheduleScreen$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m341x74b9fda3(view2);
                }
            });
            return;
        }
        Timber.e(" schedule havn't valid expiration data", new Object[0]);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-ResetExpiredScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m340xe7cce684(View view) {
        expirationDateButtonClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-schedule-ResetExpiredScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m341x74b9fda3(View view) {
        expirationOdometerButtonClicked();
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

    private void expirationOdometerButtonClicked() {
        if (Utils.isValidIntegerValuesFromEditText(this.mNewExpirationOdo)) {
            this.mScheduleDataManager.setSchedule(this.mSchedule, this.mVehicleObserver.getSelectedVehicle(), Integer.valueOf(Integer.parseInt(this.mNewExpirationOdo.getText().toString().trim())));
        } else {
            Toast.makeText(this.mContext, R.string.km_invalid_value, 1).show();
        }
    }

    private void expirationDateButtonClicked() {
        Date date = this.mNewExpirationDate.getDate();
        if (date != null) {
            this.mScheduleDataManager.setSchedule(this.mSchedule, this.mVehicleObserver.getSelectedVehicle(), date);
        } else {
            Toast.makeText(this.mContext, R.string.km_invalid_value, 1).show();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    public void createProgressDialogScreen() {
        ShowProgressEvent showProgressEvent = new ShowProgressEvent();
        showProgressEvent.setMessage(Constants.GCM_EXTRA_MESSAGE);
        this.mEventBus.post(showProgressEvent);
    }

    public void dismissProgressDialogScreen() {
        this.mEventBus.post(new CancelProgressEvent());
    }

    @Subscribe
    public void onEvent(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        Timber.d("vehicle Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        getNavigator().goBack();
    }

    @Subscribe
    public void onEvent(UserUpdatedEvent userUpdatedEvent) {
        Timber.d("user Sync completed", new Object[0]);
        dismissProgressDialogScreen();
        getNavigator().goBack();
    }
}
