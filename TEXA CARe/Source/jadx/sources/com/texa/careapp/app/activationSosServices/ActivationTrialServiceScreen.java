package com.texa.careapp.app.activationSosServices;

import android.text.SpannableString;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog;
import com.texa.careapp.databinding.ScreenActivationTrialServiceBinding;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.CareTypefaceSpan;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class ActivationTrialServiceScreen extends Screen {
    private static final String TAG = "ActivationTrialServiceScreen";

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private final ServiceDataModel service;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_activation_trial_service;
    }

    public ActivationTrialServiceScreen(ServiceDataModel serviceDataModel) {
        this.service = serviceDataModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenActivationTrialServiceBinding screenActivationTrialServiceBinding = (ScreenActivationTrialServiceBinding) DataBindingUtil.bind(view);
        screenActivationTrialServiceBinding.screenActivationTrialServiceBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationTrialServiceScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m133x87cd5b1a(view2);
            }
        });
        String string = getContext().getString(R.string.sos_badge_free_trial_time);
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new CareTypefaceSpan(ResourcesCompat.getFont(getContext(), R.font.font_bold)), string.split("4")[0].length(), string.length(), 33);
        screenActivationTrialServiceBinding.screenActivationTrialServiceBadge.setText(spannableString);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationTrialServiceScreen, reason: not valid java name */
    public /* synthetic */ void m133x87cd5b1a(View view) {
        buttonGoToTosClicked();
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
    public String getId() {
        return TAG;
    }

    private void buttonGoToTosClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_TRIAL_ACTIVATION_TAPPED_SOS_TRIAL_ACTIVATION_BUTTON.getTag(), null);
        if (this.mVehicleDataManager.getAllVehicles().size() > 1) {
            goTo(new ActivationServiceVehicleDialog());
        } else {
            finalStep();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ActivationServiceVehicleDialog.VehicleConfirmed vehicleConfirmed) {
        finalStep();
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.activationSosServices.ActivationTrialServiceScreen$1, reason: invalid class name */
    class AnonymousClass1 extends AcceptationTermsSosServiceScreen {
        AnonymousClass1(ServiceDataModel serviceDataModel) {
            super(serviceDataModel);
        }

        @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
        public void acceptedCondition() {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_COMMON_TERMS_ACCEPTED.getTag(), null);
            Utils.safeDispose(getDisposable());
            setDisposable(observerForPlusTrialActivation().subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationTrialServiceScreen$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m134x324f598b(obj);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$0$com-texa-careapp-app-activationSosServices-ActivationTrialServiceScreen$1, reason: not valid java name */
        public /* synthetic */ void m134x324f598b(Object obj) throws Exception {
            scheduleSyncServiceDataTask();
        }
    }

    private void finalStep() {
        goTo(new AnonymousClass1(this.service));
    }
}
