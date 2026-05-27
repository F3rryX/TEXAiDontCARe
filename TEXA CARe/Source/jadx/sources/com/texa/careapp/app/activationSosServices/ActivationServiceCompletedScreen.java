package com.texa.careapp.app.activationSosServices;

import android.content.ContentProviderOperation;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ScreenActivationServiceCompletedBinding;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public class ActivationServiceCompletedScreen extends Screen {
    static final int PERMISSIONS_REQUEST_WRITE_CONTACTS = 100;
    private static final String TAG = "ActivationServiceCompletedScreen";

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;
    private AppCompatTextView mCarText;

    @Inject
    EventBus mEventBus;
    private TextView mNameText;
    private AppCompatTextView mPlateText;
    private TextView mTextActivationDay;
    private TextView mTextActivationMonth;
    private TextView mTextLabel;

    @Inject
    UserDataManager mUserDataManager;
    private ServiceDataModel service;
    private DateFormat mDayFormat = new SimpleDateFormat("dd", Locale.getDefault());
    private DateFormat mMonthFormat = new SimpleDateFormat("MMM\nyyyy", Locale.getDefault());
    private ArrayList<ContentProviderOperation> ops = new ArrayList<>();

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_activation_service_completed;
    }

    ActivationServiceCompletedScreen(ServiceDataModel serviceDataModel) {
        this.service = serviceDataModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenActivationServiceCompletedBinding screenActivationServiceCompletedBinding = (ScreenActivationServiceCompletedBinding) DataBindingUtil.bind(view);
        this.mTextLabel = screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionLabel;
        this.mTextActivationDay = screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionDueDay;
        this.mTextActivationMonth = screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionDueMonth;
        this.mCarText = screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardPlusCar;
        this.mPlateText = screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardPlusPlate;
        this.mNameText = screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardLightCar;
        screenActivationServiceCompletedBinding.okButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationServiceCompletedScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m130x629b1eb1(view2);
            }
        });
        if (this.service.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardPlus.setVisibility(0);
            screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardLight.setVisibility(8);
            setCardSosPlus(this.service.isTrial());
        } else if (this.service.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_ACTIVATED.getTag(), null);
            screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardPlus.setVisibility(8);
            screenActivationServiceCompletedBinding.screenAcceptationSosServiceDescriptionCardLight.setVisibility(0);
            setCardSosLight();
        }
        this.mCAReWorkerManager.scheduleOneOffJob(-1, null);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationServiceCompletedScreen, reason: not valid java name */
    public /* synthetic */ void m130x629b1eb1(View view) {
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) ActivationServiceActivity.class));
    }

    private void setCardSosPlus(boolean z) {
        if (z) {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_TRIAL_ACTIVATION_SOS_TRIAL_ACTIVATED.getTag(), null);
            this.mTextLabel.setText(R.string.sos_complete_due_label);
            this.mTextActivationDay.setVisibility(0);
            this.mTextActivationMonth.setVisibility(0);
            this.mTextActivationDay.setText(this.mDayFormat.format(this.service.getExpiration()));
            this.mTextActivationMonth.setText(this.mMonthFormat.format(this.service.getExpiration()));
        } else {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_PREMIUM_ACTIVATION_SOS_PREMIUM_ACTIVATED.getTag(), null);
            this.mTextLabel.setText(R.string.sos_plus_complete_description);
            this.mTextActivationDay.setVisibility(8);
            this.mTextActivationMonth.setVisibility(8);
        }
        this.mCarText.setText(Utils.formatVehicleModel(this.service.getDongle().getSelectedVehicle()));
        this.mPlateText.setText(this.service.getDongle().getSelectedVehicle().getPlate());
    }

    private void setCardSosLight() {
        this.mNameText.setText(String.format(getContext().getString(R.string.format_string_space), this.mUserDataManager.getUserCached().getFirstName(), this.mUserDataManager.getUserCached().getLastName()));
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) ActivationServiceActivity.class));
        return true;
    }
}
