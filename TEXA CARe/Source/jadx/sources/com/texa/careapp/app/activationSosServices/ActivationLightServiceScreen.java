package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockEntity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockResponseEntity;
import com.texa.careapp.databinding.ScreenActivationLightServiceBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.CareTypefaceSpan;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class ActivationLightServiceScreen extends Screen {
    public static final String TAG = "ActivationLightServiceScreen";
    private boolean isSosLightPurchasable = false;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;
    private RelativeLayout purchaseButton;
    private TextView purchaseInfo;
    private final ServiceDataModel serviceSosLight;
    private final ServiceDataModel serviceSosPlus;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "ActivationLightServiceScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_activation_light_service;
    }

    ActivationLightServiceScreen(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2) {
        this.serviceSosLight = serviceDataModel;
        this.serviceSosPlus = serviceDataModel2;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenActivationLightServiceBinding screenActivationLightServiceBinding = (ScreenActivationLightServiceBinding) DataBindingUtil.bind(view);
        this.purchaseButton = screenActivationLightServiceBinding.screenActivationLightPurchaseButton;
        this.purchaseInfo = screenActivationLightServiceBinding.screenActivationLightPurchaseInfo;
        screenActivationLightServiceBinding.screenActivationLightServicePurchaseLight.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m122x4e0ff51a(view2);
            }
        });
        screenActivationLightServiceBinding.screenActivationLightServicePurchase.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m123x151bdc1b(view2);
            }
        });
        SpannableString spannableString = new SpannableString(getContext().getString(R.string.sos_badge_subscription));
        spannableString.setSpan(new RelativeSizeSpan(2.3f), 0, 2, 33);
        spannableString.setSpan(new CareTypefaceSpan(ResourcesCompat.getFont(getContext(), R.font.font_bold)), 0, 2, 33);
        screenActivationLightServiceBinding.screenActivationLightServiceBadge.setText(spannableString);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen, reason: not valid java name */
    public /* synthetic */ void m122x4e0ff51a(View view) {
        buttonGoToServiceLightTOS();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen, reason: not valid java name */
    public /* synthetic */ void m123x151bdc1b(View view) {
        buttonGoToServicePlusTOS();
    }

    private void initViews(ServiceDataModel serviceDataModel) {
        if (serviceDataModel != null) {
            this.purchaseButton.setActivated(true);
            this.purchaseButton.setVisibility(0);
            this.purchaseInfo.setVisibility(0);
        } else {
            this.purchaseButton.setActivated(false);
            this.purchaseButton.setVisibility(8);
            this.purchaseInfo.setVisibility(8);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        initViews(this.serviceSosPlus);
        this.mDisposable.add(this.mTexaCareApiService.checkLockStatus(new PurchaseLockEntity(ServiceDataModel.DongleServiceId.SOS_LIGHT.name(), "", Utils.getUniqueDeviceId(this.mSharedPreferences))).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m124x11424792((PurchaseLockResponseEntity) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error checking lock status", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$onResume$2$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen, reason: not valid java name */
    public /* synthetic */ void m124x11424792(PurchaseLockResponseEntity purchaseLockResponseEntity) throws Exception {
        this.isSosLightPurchasable = !purchaseLockResponseEntity.isAlreadyPending();
    }

    private void buttonGoToServicePlusTOS() {
        if (this.serviceSosPlus != null) {
            getNavigator().goTo(new AcceptationTermsSosServiceScreen(this.serviceSosPlus) { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen.1
                @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
                public void acceptedCondition() {
                    getContext().startActivity(ActivationServiceContactActivity.buildIntent(getContext()));
                }
            });
        }
    }

    private void buttonGoToServiceLightTOS() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_ACTIVATION_BUTTON.getTag(), null);
        if (this.isSosLightPurchasable) {
            getNavigator().goTo(new AnonymousClass2(this.serviceSosLight));
        } else {
            Toast.makeText(getContext(), R.string.sos_lock_purchase, 1).show();
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$2, reason: invalid class name */
    class AnonymousClass2 extends AcceptationTermsSosServiceScreen {
        AnonymousClass2(ServiceDataModel serviceDataModel) {
            super(serviceDataModel);
        }

        @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
        public void acceptedCondition() {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_COMMON_TERMS_ACCEPTED.getTag(), null);
            Utils.safeDispose(getDisposable());
            setDisposable(observerForLightActivation().subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$2$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m125x7253738c(obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen$2$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error accepting conditions", new Object[0]);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$0$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen$2, reason: not valid java name */
        public /* synthetic */ void m125x7253738c(Object obj) throws Exception {
            scheduleSyncServiceDataTask();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
