package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.query.Select;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockEntity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockResponseEntity;
import com.texa.careapp.databinding.ScreenActivationPlusServiceBinding;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.CareTypefaceSpan;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.Objects;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class ActivationPlusServiceScreen extends Screen {
    private static final String TAG = "ActivationPlusServiceScreen";

    @Inject
    protected EventBus eventBus;
    private String hwid;
    private boolean isSosPlusPurchasable = false;
    private Disposable lockDisposable;
    private TextView mButtonToPurchaseSosLIGHT;
    private TextView mButtonToPurchaseSosPLUS;
    private TextView mLightInfo;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    public VehicleObserver mVehicleObserver;
    private final ServiceDataModel serviceLight;
    private final ServiceDataModel servicePlus;

    private void setText() {
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_activation_plus_service;
    }

    ActivationPlusServiceScreen(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2) {
        this.servicePlus = serviceDataModel;
        this.serviceLight = serviceDataModel2;
    }

    private ServiceDataModel getServiceLightAvailable() {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("service_type=?", ServiceDataModel.DongleServiceId.SOS_LIGHT).and("status=?", ServiceDataModel.DongleServiceStatus.AVAILABLE).executeSingle();
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenActivationPlusServiceBinding screenActivationPlusServiceBinding = (ScreenActivationPlusServiceBinding) DataBindingUtil.bind(view);
        TextView textView = screenActivationPlusServiceBinding.screenActivationPlusServicePurchase;
        this.mButtonToPurchaseSosPLUS = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m126x1a869718(view2);
            }
        });
        TextView textView2 = screenActivationPlusServiceBinding.screenActivationPlusServicePurchaseLight;
        this.mButtonToPurchaseSosLIGHT = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m127x9cd14bf7(view2);
            }
        });
        this.mLightInfo = screenActivationPlusServiceBinding.screenActivationPlusServicePurchaseLightInfo;
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        Objects.requireNonNull(selectedVehicle, "VehicleObserver#getCurrentVehicle() cannot be null");
        this.hwid = selectedVehicle.getHwid();
        setText();
        SpannableString spannableString = new SpannableString(getContext().getString(R.string.sos_badge_main_subscription));
        spannableString.setSpan(new RelativeSizeSpan(2.5f), 0, 2, 33);
        spannableString.setSpan(new CareTypefaceSpan(ResourcesCompat.getFont(getContext(), R.font.font_bold)), 0, 2, 33);
        screenActivationPlusServiceBinding.screenActivationPlusServiceBadge.setText(spannableString);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen, reason: not valid java name */
    public /* synthetic */ void m126x1a869718(View view) {
        buttonGoToPlusClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen, reason: not valid java name */
    public /* synthetic */ void m127x9cd14bf7(View view) {
        buttonGoToLightClicked();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.eventBus.register(this);
        initViews(this.servicePlus, this.serviceLight, this.isSosPlusPurchasable);
        this.lockDisposable = this.mTexaCareApiService.checkLockStatus(new PurchaseLockEntity(ServiceDataModel.DongleServiceId.SOS.name(), this.hwid, Utils.getUniqueDeviceId(this.mSharedPreferences))).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m128xe70415a0((PurchaseLockResponseEntity) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error checking locking status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onResume$2$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen, reason: not valid java name */
    public /* synthetic */ void m128xe70415a0(PurchaseLockResponseEntity purchaseLockResponseEntity) throws Exception {
        boolean z = !purchaseLockResponseEntity.isAlreadyPending();
        this.isSosPlusPurchasable = z;
        initViews(this.servicePlus, this.serviceLight, z);
    }

    private void initViews(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2, boolean z) {
        if (z) {
            this.mButtonToPurchaseSosPLUS.setActivated(true);
        } else {
            this.mButtonToPurchaseSosPLUS.setActivated(false);
        }
        if (serviceDataModel2 != null) {
            this.mButtonToPurchaseSosLIGHT.setActivated(true);
            this.mButtonToPurchaseSosLIGHT.setVisibility(0);
            this.mLightInfo.setVisibility(0);
        } else {
            this.mButtonToPurchaseSosLIGHT.setActivated(false);
            this.mButtonToPurchaseSosLIGHT.setVisibility(8);
            this.mLightInfo.setVisibility(8);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        Utils.safeDispose(this.lockDisposable);
        this.eventBus.unregister(this);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void buttonGoToLightClicked() {
        if (this.serviceLight != null) {
            goTo(new ActivationLightServiceScreen(this.serviceLight, this.servicePlus));
        }
    }

    private void buttonGoToPlusClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_PREMIUM_ACTIVATION_SOS_PREMIUM_ACTIVATION_BUTTON.getTag(), null);
        if (this.isSosPlusPurchasable) {
            if (this.mVehicleDataManager.getAllVehicles().size() > 1) {
                goTo(new ActivationServiceVehicleDialog());
                return;
            } else {
                finalStep();
                return;
            }
        }
        Toast.makeText(getContext(), R.string.sos_lock_purchase, 1).show();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ActivationServiceVehicleDialog.VehicleConfirmed vehicleConfirmed) {
        finalStep();
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$1, reason: invalid class name */
    class AnonymousClass1 extends AcceptationTermsSosServiceScreen {
        AnonymousClass1(ServiceDataModel serviceDataModel) {
            super(serviceDataModel);
        }

        @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
        public void acceptedCondition() {
            FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_COMMON_TERMS_ACCEPTED.getTag(), null);
            Utils.safeDispose(getDisposable());
            setDisposable(observerForPlusActivation().subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$1$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.d("PLUS OBSERVABLE onNext", new Object[0]);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$1$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error accepting sos service terms", new Object[0]);
                }
            }, new Action() { // from class: com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() throws Exception {
                    this.f$0.m129x265432ff();
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$2$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen$1, reason: not valid java name */
        public /* synthetic */ void m129x265432ff() throws Exception {
            scheduleSyncServiceDataTask();
            goTo(new ActivationServiceCompletedScreen(getService()));
            this.mEventBus.post(new AcceptationTermsSosServiceScreen.ActivationCompletedEvent());
        }
    }

    private void finalStep() {
        goTo(new AnonymousClass1(this.servicePlus));
    }
}
