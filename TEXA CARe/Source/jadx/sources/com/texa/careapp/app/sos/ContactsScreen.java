package com.texa.careapp.app.sos;

import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Vibrator;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.activationSosServices.ActivationServiceActivity;
import com.texa.careapp.app.activationSosServices.FirmwareVersionAlertDialog;
import com.texa.careapp.app.sos.featuremanager.SosFeatureButtonManager;
import com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.checks.Check;
import com.texa.careapp.databinding.ContactsGridBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.BusinessTime;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.MechanicContact;
import com.texa.careapp.model.MechanicModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.networking.response.CustomerResponse;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.MechanicDataManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.views.AlertImageView;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.profile.Profile;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.Iterator;
import java.util.Objects;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ContactsScreen extends Screen {
    private Drawable background;
    private LinearLayout badgeBtn;
    private AppCompatTextView badgeText;

    @Inject
    protected EventBus eventBus;
    private AlertImageView mAlertIcon;
    private SosFeatureButtonManager mButtonManager;
    private View mButtonSettings;
    protected CareApplication mCareApplication;

    @Inject
    protected ICareObserver mCareObserver;
    private RelativeLayout mCentralOperator;

    @Inject
    protected Communication mCommunication;
    private Disposable mDisposable;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected FlavorDelegator mFlavorDelegator;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected MechanicDataManager mMechanicDataManager;
    private TextView mMechanicDescriptionTw;
    private Disposable mMechanicDisposable;
    private MechanicModel mMechanicModel;
    private RelativeLayout mMechanicOperator;

    @Inject
    protected Profile mProfile;

    @Inject
    protected ServiceDataManager mServiceDataManager;

    @Inject
    protected SosFeatureManager mSosFeatureManager;
    private TextView mSosServiceStatusTw;
    private TextView mSosServiceTitleTw;

    @Inject
    protected UserDataManager mUserDataManager;
    private ImageView mechanicImage;
    private ImageView sosImage;
    private ServiceDataModel sosService;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "sos-manual";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.contacts_grid;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return R.string.sos;
    }

    public ContactsScreen() {
    }

    public ContactsScreen(CareApplication careApplication) {
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.eventBus.register(this);
        this.mMechanicDisposable = getMechanicData();
        setViewSosButton();
        checkSosPrerequisites();
    }

    protected void checkSosPrerequisites() {
        if (this.mSosFeatureManager.shouldCheckSosPrerequisites()) {
            this.mDisposable = this.mSosFeatureManager.observeChecks().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m475xef96b17e((Check.Result) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda6
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error checking sos prerequisites", new Object[0]);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$checkSosPrerequisites$0$com-texa-careapp-app-sos-ContactsScreen, reason: not valid java name */
    public /* synthetic */ void m475xef96b17e(Check.Result result) throws Exception {
        if (result == Check.Result.OK) {
            this.mAlertIcon.hide();
        } else {
            this.mAlertIcon.showWithFade();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.eventBus.unregister(this);
        Utils.safeDispose(this.mSosFeatureManager.getButtonObservableSubscription());
        Utils.safeDispose(this.mMechanicDisposable);
        Utils.safeDispose(this.mDisposable);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ContactsGridBinding contactsGridBinding = (ContactsGridBinding) DataBindingUtil.bind(view);
        this.mCentralOperator = contactsGridBinding.centralOperatorItem;
        this.sosImage = contactsGridBinding.sosImage;
        this.mMechanicOperator = contactsGridBinding.mechanicItem;
        this.mechanicImage = contactsGridBinding.callMechanicButton;
        this.mSosServiceStatusTw = contactsGridBinding.sosServiceStatus;
        this.mSosServiceTitleTw = contactsGridBinding.sosServiceTitle;
        this.mAlertIcon = contactsGridBinding.emergencyButtonAlertIcon;
        this.mMechanicDescriptionTw = contactsGridBinding.mechanicDescription;
        this.mButtonSettings = contactsGridBinding.contactSosGoToSettings;
        this.badgeBtn = contactsGridBinding.contactsGridBadge;
        this.badgeText = contactsGridBinding.contactsGridBadgeText;
        this.mSosFeatureManager.setFragmentManager(getNavigator().getFragmentManager());
        this.background = ResourcesCompat.getDrawable(getContext().getResources(), R.drawable.contact_button_background, null);
        this.sosImage.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.texa.careapp.app.sos.ContactsScreen.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ContactsScreen.this.sosImage.getViewTreeObserver().removeOnPreDrawListener(this);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ContactsScreen.this.sosImage.getHeight(), ContactsScreen.this.sosImage.getHeight());
                layoutParams.addRule(13, -1);
                layoutParams.addRule(2, R.id.sos_service_title);
                ContactsScreen.this.sosImage.setLayoutParams(layoutParams);
                return true;
            }
        });
        this.mechanicImage.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.texa.careapp.app.sos.ContactsScreen.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ContactsScreen.this.mechanicImage.getViewTreeObserver().removeOnPreDrawListener(this);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ContactsScreen.this.mechanicImage.getHeight(), ContactsScreen.this.mechanicImage.getHeight());
                layoutParams.addRule(13, -1);
                layoutParams.addRule(2, R.id.call_mechanic_title);
                ContactsScreen.this.mechanicImage.setLayoutParams(layoutParams);
                return true;
            }
        });
        Drawable drawable = this.background;
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(getContext(), R.color.mechanic_button_background), PorterDuff.Mode.SRC_IN);
        }
        this.mechanicImage.setBackground(this.background);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vibrateOnTouch() {
        ((Vibrator) getContext().getSystemService("vibrator")).vibrate(Constants.TIME_TO_VIBRATE_ON_TOUCH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startMechanicActivity() {
        Intent intent = new Intent(getContext(), (Class<?>) MechanicActivity.class);
        intent.addFlags(335544320);
        getContext().startActivity(intent);
    }

    private void initMechanicInfo() {
        MechanicModel mechanicModel = this.mMechanicModel;
        if (mechanicModel != null) {
            updateMechanicDescription(mechanicModel.getName());
            this.mMechanicOperator.setOnTouchListener(new MechanicTouchListener());
        }
    }

    private Disposable getMechanicData() {
        return this.mMechanicDataManager.observeCustomerResponse().compose(Utils.applyMaybeSchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m476lambda$getMechanicData$2$comtexacareappappsosContactsScreen((CustomerResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m477lambda$getMechanicData$3$comtexacareappappsosContactsScreen((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getMechanicData$2$com-texa-careapp-app-sos-ContactsScreen, reason: not valid java name */
    public /* synthetic */ void m476lambda$getMechanicData$2$comtexacareappappsosContactsScreen(CustomerResponse customerResponse) throws Exception {
        Timber.d("customerResponse: %s", customerResponse);
        try {
            MechanicModel mechanicModelFrom = MechanicModel.from(customerResponse);
            this.mMechanicDataManager.deleteMechanicsData();
            this.mMechanicModel = mechanicModelFrom;
            Utils.safeModelSave(mechanicModelFrom, getContext());
            Iterator<BusinessTime> it = mechanicModelFrom.business_times.iterator();
            while (it.hasNext()) {
                Utils.safeModelSave(it.next(), getContext());
            }
            Iterator<MechanicContact> it2 = mechanicModelFrom.contacts.iterator();
            while (it2.hasNext()) {
                Utils.safeModelSave(it2.next(), getContext());
            }
        } catch (Exception e) {
            if (e instanceof DatabaseIOException) {
                Timber.e(e, "Could not save mechanic model to database.", new Object[0]);
            } else {
                e.printStackTrace();
                Timber.e(e, "Could not retrieve mechanic data.", new Object[0]);
            }
        }
        initMechanicInfo();
    }

    /* JADX INFO: renamed from: lambda$getMechanicData$3$com-texa-careapp-app-sos-ContactsScreen, reason: not valid java name */
    public /* synthetic */ void m477lambda$getMechanicData$3$comtexacareappappsosContactsScreen(Throwable th) throws Exception {
        Timber.w(th, "observeCustomerResponse exception", new Object[0]);
        this.mMechanicModel = this.mMechanicDataManager.getMechanicModel();
        initMechanicInfo();
    }

    private void updateMechanicDescription(String str) {
        this.mMechanicDescriptionTw.setText(str);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        setViewSosButton();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(SosFeatureDefaultManager.UpdateButton updateButton) {
        updateButton(updateButton.getSosStatus());
    }

    private void setViewSosButton() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        ServiceDataManager serviceDataManager = this.mServiceDataManager;
        this.sosService = serviceDataManager.getServicePriority(serviceDataManager.filterActiveSosServicesForHwId(dongleModel.getHwid(), this.mServiceDataManager.getSosServices()));
        this.mButtonManager = new SosFeatureButtonManager(getContext(), this.mUserDataManager, this.mDongleDataManager, this.sosService, this.mCentralOperator, this.sosImage, getNavigator());
        this.mSosFeatureManager.initData(this.sosService);
        this.mSosFeatureManager.startButtonObserver();
    }

    private class MechanicTouchListener implements View.OnTouchListener {
        MechanicTouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                ContactsScreen.this.vibrateOnTouch();
                if (ContactsScreen.this.background != null) {
                    ContactsScreen.this.background.setColorFilter(Utils.getColorResource(ContactsScreen.this.getContext(), R.color.mechanic_button_background), PorterDuff.Mode.SRC_IN);
                }
                ContactsScreen.this.mechanicImage.setBackground(ContactsScreen.this.background);
                return true;
            }
            if (action != 1) {
                return false;
            }
            if (ContactsScreen.this.background != null) {
                ContactsScreen.this.background.setColorFilter(Utils.getColorResource(ContactsScreen.this.getContext(), R.color.mechanic_button_background), PorterDuff.Mode.SRC_IN);
            }
            ContactsScreen.this.mechanicImage.setBackground(ContactsScreen.this.background);
            ContactsScreen.this.startMechanicActivity();
            return true;
        }
    }

    private void manageSosTitle(ServiceDataModel serviceDataModel) {
        if (serviceDataModel == null || (serviceDataModel.getStatus() != ServiceDataModel.DongleServiceStatus.ACTIVE && serviceDataModel.getStatus() != ServiceDataModel.DongleServiceStatus.PENDING)) {
            this.mSosServiceTitleTw.setText(R.string.sos_service_not_available_for_purchase);
        } else if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            this.mSosServiceTitleTw.setText(R.string.operation_center);
        } else {
            this.mSosServiceTitleTw.setText(R.string.service_sos_light_title);
        }
    }

    private void manageBadge(final ServiceDataModel serviceDataModel, boolean z) {
        String hwid = this.mDongleDataManager.getDongleModel().getHwid();
        final ServiceDataModel availableSosPlus = this.mServiceDataManager.getAvailableSosPlus(hwid);
        final FirmwareVersion mainAppVersion = this.mDongleDataManager.getDongleModel().getMainAppVersion();
        final FirmwareVersion serviceAppVersion = this.mDongleDataManager.getDongleModel().getServiceAppVersion();
        if (z) {
            this.badgeBtn.setVisibility(8);
            return;
        }
        if (serviceDataModel == null) {
            if (availableSosPlus != null && availableSosPlus.isTrial()) {
                this.badgeText.setText(R.string.sos_badge_free_trial);
            } else {
                this.badgeText.setText(R.string.sos_badge_activate);
            }
            ServiceDataManager serviceDataManager = this.mServiceDataManager;
            final ServiceDataModel servicePriority = serviceDataManager.getServicePriority(serviceDataManager.filterSosServicesForHwId(hwid, serviceDataManager.getSosServices()));
            if (servicePriority != null) {
                this.badgeBtn.setVisibility(0);
                this.badgeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m478lambda$manageBadge$4$comtexacareappappsosContactsScreen(mainAppVersion, serviceAppVersion, servicePriority, view);
                    }
                });
                return;
            } else {
                this.badgeBtn.setVisibility(8);
                return;
            }
        }
        if (serviceDataModel.isActive() && serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            this.badgeBtn.setVisibility(8);
            return;
        }
        if (serviceDataModel.isActive() && serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            if (availableSosPlus != null) {
                this.badgeBtn.setVisibility(0);
                this.badgeText.setText(R.string.sos_badge_activate);
                this.badgeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.m479lambda$manageBadge$5$comtexacareappappsosContactsScreen(mainAppVersion, serviceAppVersion, availableSosPlus, view);
                    }
                });
                return;
            }
            this.badgeBtn.setVisibility(8);
            return;
        }
        if ((serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS && serviceDataModel.isTrial()) || serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            this.badgeText.setText(R.string.sos_badge_activate);
        } else {
            this.badgeText.setText(R.string.sos_badge_free_trial);
        }
        this.badgeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.ContactsScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m480lambda$manageBadge$6$comtexacareappappsosContactsScreen(mainAppVersion, serviceAppVersion, serviceDataModel, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$manageBadge$4$com-texa-careapp-app-sos-ContactsScreen, reason: not valid java name */
    public /* synthetic */ void m478lambda$manageBadge$4$comtexacareappappsosContactsScreen(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, ServiceDataModel serviceDataModel, View view) {
        if (firmwareVersion.getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1 && firmwareVersion2.getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1) {
            getContext().startActivity(ActivationServiceActivity.buildIntent(getContext(), serviceDataModel));
        } else {
            getNavigator().goTo(new FirmwareVersionAlertDialog());
        }
    }

    /* JADX INFO: renamed from: lambda$manageBadge$5$com-texa-careapp-app-sos-ContactsScreen, reason: not valid java name */
    public /* synthetic */ void m479lambda$manageBadge$5$comtexacareappappsosContactsScreen(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, ServiceDataModel serviceDataModel, View view) {
        if (firmwareVersion.getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1 && firmwareVersion2.getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1) {
            getContext().startActivity(ActivationServiceActivity.buildIntent(getContext(), serviceDataModel));
        } else {
            getNavigator().goTo(new FirmwareVersionAlertDialog());
        }
    }

    /* JADX INFO: renamed from: lambda$manageBadge$6$com-texa-careapp-app-sos-ContactsScreen, reason: not valid java name */
    public /* synthetic */ void m480lambda$manageBadge$6$comtexacareappappsosContactsScreen(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, ServiceDataModel serviceDataModel, View view) {
        if (firmwareVersion.getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1 && firmwareVersion2.getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1) {
            getContext().startActivity(ActivationServiceActivity.buildIntent(getContext(), serviceDataModel));
        } else {
            getNavigator().goTo(new FirmwareVersionAlertDialog());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateButton(int i) {
        boolean z;
        Timber.d("updateButton %s", Integer.valueOf(i));
        this.mSosServiceStatusTw.setText(this.mSosFeatureManager.getSosServiceStatusDescription(getContext(), this.sosService));
        manageSosTitle(this.sosService);
        ServiceDataModel serviceDataModel = this.sosService;
        Objects.requireNonNull(this.mServiceDataManager);
        if (i != 7) {
            Objects.requireNonNull(this.mServiceDataManager);
            z = i == 3;
        }
        manageBadge(serviceDataModel, z);
        View view = this.mButtonSettings;
        if (view != null) {
            this.mButtonManager.addClick(view, this.sosService);
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 3) {
            this.mButtonManager.enableButtonForSos();
            return;
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 1) {
            this.mButtonManager.disableButton();
            return;
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 5) {
            this.mButtonManager.disableButton();
            return;
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 8) {
            this.mButtonManager.disableButtonCauseCheck();
            return;
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 4) {
            this.mButtonManager.enableButtonForAcceptTerms();
            return;
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 7) {
            this.mButtonManager.enableButtonForSos();
            return;
        }
        Objects.requireNonNull(this.mServiceDataManager);
        if (i == 6) {
            this.mButtonManager.enableButtonForSosActivation();
        }
    }
}
