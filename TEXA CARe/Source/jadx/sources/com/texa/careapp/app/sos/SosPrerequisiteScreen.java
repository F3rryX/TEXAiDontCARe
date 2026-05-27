package com.texa.careapp.app.sos;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.checks.Check;
import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.databinding.ScreenSosPrerequisiteBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.IOException;
import java.util.Date;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SosPrerequisiteScreen extends Screen {
    private SosPrerequisiteActivity mActivity;
    private ImageView mBluetoothImg;
    private LinearLayout mBtLayout;
    private Check mCheckGps;
    private Check mCheckNetworkConnection;

    @Inject
    protected ChecksFactory mChecksFactory;

    @Inject
    protected Communication mCommunication;
    private ImageView mConnectionImg;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private ImageView mGPSImg;
    private LinearLayout mGPSLayout;
    private Disposable mGpsDisposable;
    private Disposable mNetworkDispoasable;
    private ImageView mNetworkImg;
    private LinearLayout mNetworkLayout;
    private ImageView mPhoneNumberImg;
    private LinearLayout mPhoneNumberLayout;
    private ServiceDataModel mService;

    @Inject
    protected ServiceDataManager mServiceDataManager;
    private LinearLayout mTermsOfService;
    private ImageView mTermsOfServiceImg;

    @Inject
    UserDataManager mUserDataManager;
    private String TAG = "SosPrerequisiteScreen";
    private IntentFilter filter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
    private View.OnClickListener clickOnBluetooth = new View.OnClickListener() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda4
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SosPrerequisiteScreen.lambda$new$0(view);
        }
    };
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SosPrerequisiteScreen.this.isBluetoothEnabled();
            SosPrerequisiteScreen.this.isCareConnected();
        }
    };
    private View.OnClickListener clickOnPhoneNumber = new View.OnClickListener() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda0
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m486lambda$new$1$comtexacareappappsosSosPrerequisiteScreen(view);
        }
    };
    private View.OnClickListener clickOnNetwork = new View.OnClickListener() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m487lambda$new$2$comtexacareappappsosSosPrerequisiteScreen(view);
        }
    };
    private View.OnClickListener clickOnGPS = new View.OnClickListener() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m488lambda$new$3$comtexacareappappsosSosPrerequisiteScreen(view);
        }
    };

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_sos_prerequisite;
    }

    SosPrerequisiteScreen(ServiceDataModel serviceDataModel, SosPrerequisiteActivity sosPrerequisiteActivity) {
        this.mService = serviceDataModel;
        this.mActivity = sosPrerequisiteActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSosPrerequisiteBinding screenSosPrerequisiteBinding = (ScreenSosPrerequisiteBinding) DataBindingUtil.bind(view);
        this.mBluetoothImg = screenSosPrerequisiteBinding.sosPrerequisiteBtImg;
        this.mPhoneNumberImg = screenSosPrerequisiteBinding.sosPrerequisitePhoneNumberImg;
        this.mTermsOfServiceImg = screenSosPrerequisiteBinding.sosPrerequisiteTermsofserviceImg;
        this.mNetworkImg = screenSosPrerequisiteBinding.sosPrerequisiteNetworkImg;
        this.mGPSImg = screenSosPrerequisiteBinding.sosPrerequisiteGpsImg;
        this.mConnectionImg = screenSosPrerequisiteBinding.sosPrerequisiteConnectionImg;
        this.mBtLayout = screenSosPrerequisiteBinding.sosPrerequisiteBt;
        this.mPhoneNumberLayout = screenSosPrerequisiteBinding.sosPrerequisitePhoneNumber;
        this.mTermsOfService = screenSosPrerequisiteBinding.sosPrerequisiteTermsofservice;
        this.mNetworkLayout = screenSosPrerequisiteBinding.sosPrerequisiteNetwork;
        this.mGPSLayout = screenSosPrerequisiteBinding.sosPrerequisiteGps;
        this.mCheckNetworkConnection = this.mChecksFactory.newCheckNetworkConnection();
        this.mCheckGps = this.mChecksFactory.newCheckGps();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return this.TAG;
    }

    static /* synthetic */ void lambda$new$0(View view) {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter.isEnabled()) {
            return;
        }
        defaultAdapter.enable();
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m486lambda$new$1$comtexacareappappsosSosPrerequisiteScreen(View view) {
        getContext().startActivity(ActivationPhoneNumberActivity.buildIntent(getContext()));
        this.mActivity.finish();
    }

    /* JADX INFO: renamed from: lambda$new$2$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m487lambda$new$2$comtexacareappappsosSosPrerequisiteScreen(View view) {
        Intent intent = new Intent("android.settings.DATA_ROAMING_SETTINGS");
        intent.addFlags(268435456);
        getContext().startActivity(intent);
    }

    /* JADX INFO: renamed from: lambda$new$3$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m488lambda$new$3$comtexacareappappsosSosPrerequisiteScreen(View view) {
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.addFlags(268435456);
        getContext().startActivity(intent);
    }

    private View.OnClickListener clickOnTermsOfService(final ServiceDataModel serviceDataModel) {
        return new View.OnClickListener() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m485x7e0d7346(serviceDataModel, view);
            }
        };
    }

    /* JADX INFO: renamed from: lambda$clickOnTermsOfService$4$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m485x7e0d7346(final ServiceDataModel serviceDataModel, View view) {
        goTo(new AcceptationTermsSosServiceScreen(serviceDataModel) { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen.2
            @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
            public void acceptedCondition() {
                try {
                    this.mTexaCareApiService.acceptTermsOfConditions(serviceDataModel).execute().body();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                goBack();
            }
        });
    }

    private void replaceServiceDataInDb(ServiceDataModel serviceDataModel, ServiceDataModel serviceDataModel2) throws DatabaseIOException {
        DongleModel dongle = serviceDataModel.getDongle();
        UserModel user = serviceDataModel.getUser();
        serviceDataModel.delete();
        serviceDataModel2.setDongle(dongle);
        serviceDataModel2.setUser(user);
        Utils.safeModelSave(serviceDataModel2, getContext());
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        getContext().registerReceiver(this.mReceiver, this.filter);
        initSOSPrerequisite();
        this.mNetworkDispoasable = observeNetwork();
        this.mGpsDisposable = observeGps();
    }

    private Disposable observeGps() {
        return this.mCheckGps.check().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m489x1aca36db((Check.Result) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m490x5494d8ba((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeGps$5$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m489x1aca36db(Check.Result result) throws Exception {
        if (result == Check.Result.OK) {
            this.mGPSImg.setImageResource(R.drawable.ic_check_gps_ok);
            this.mGPSLayout.setOnClickListener(null);
        } else {
            this.mGPSImg.setImageResource(R.drawable.ic_check_gps_failed);
            this.mGPSLayout.setOnClickListener(this.clickOnGPS);
        }
    }

    /* JADX INFO: renamed from: lambda$observeGps$6$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m490x5494d8ba(Throwable th) throws Exception {
        Timber.e(th, "error observing gps", new Object[0]);
        this.mGPSImg.setImageResource(R.drawable.ic_check_gps_failed);
        this.mGPSLayout.setOnClickListener(this.clickOnGPS);
    }

    private Disposable observeNetwork() {
        return this.mCheckNetworkConnection.check().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m491x4a77215((Check.Result) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.SosPrerequisiteScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing network", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeNetwork$7$com-texa-careapp-app-sos-SosPrerequisiteScreen, reason: not valid java name */
    public /* synthetic */ void m491x4a77215(Check.Result result) throws Exception {
        if (result == Check.Result.OK) {
            this.mNetworkImg.setImageResource(R.drawable.ic_check_network_ok);
            this.mNetworkLayout.setOnClickListener(null);
        } else {
            this.mNetworkImg.setImageResource(R.drawable.ic_check_network_failed);
            this.mNetworkLayout.setOnClickListener(this.clickOnNetwork);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        getContext().unregisterReceiver(this.mReceiver);
        Utils.safeDispose(this.mNetworkDispoasable);
        Utils.safeDispose(this.mGpsDisposable);
    }

    private void initSOSPrerequisite() {
        isBluetoothEnabled();
        isPhoneNumberValid();
        checkTermsAccepted();
        isCareConnected();
    }

    private void checkTermsAccepted() {
        ServiceDataModel serviceDataModel = this.mService;
        if (serviceDataModel == null) {
            this.mTermsOfServiceImg.setImageResource(R.drawable.ic_check_termsaccepted_ok);
            this.mTermsOfService.setOnClickListener(null);
        } else if (serviceDataModel.isTermsAccepted()) {
            this.mTermsOfServiceImg.setImageResource(R.drawable.ic_check_termsaccepted_ok);
            this.mTermsOfService.setOnClickListener(null);
        } else {
            this.mTermsOfServiceImg.setImageResource(R.drawable.ic_check_termsaccepted_failed);
            this.mTermsOfService.setOnClickListener(clickOnTermsOfService(this.mService));
        }
    }

    private boolean isPhoneNumberValid() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached == null) {
            return false;
        }
        boolean zIsCellPhoneNumberNotEmpty = isCellPhoneNumberNotEmpty(userCached.getUserCellPhoneContact());
        if (zIsCellPhoneNumberNotEmpty) {
            this.mPhoneNumberImg.setImageResource(R.drawable.ic_check_phonevalidated_ok);
            this.mPhoneNumberLayout.setOnClickListener(null);
        } else {
            this.mPhoneNumberImg.setImageResource(R.drawable.ic_check_phonevalidated_failed);
            this.mPhoneNumberLayout.setOnClickListener(this.clickOnPhoneNumber);
        }
        return zIsCellPhoneNumberNotEmpty;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBluetoothEnabled() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            return false;
        }
        boolean zIsEnabled = defaultAdapter.isEnabled();
        if (zIsEnabled) {
            this.mBluetoothImg.setImageResource(R.drawable.ic_check_bt_ok);
            this.mBtLayout.setOnClickListener(null);
        } else {
            this.mBluetoothImg.setImageResource(R.drawable.ic_check_bt_failed);
            this.mBtLayout.setOnClickListener(this.clickOnBluetooth);
        }
        return zIsEnabled;
    }

    protected boolean isCellPhoneNumberNotEmpty(ContactModel contactModel) {
        if (contactModel != null && !Utils.isEmpty(contactModel.getPhoneNumber())) {
            this.mPhoneNumberImg.setImageResource(R.drawable.ic_check_phonevalidated_ok);
            return true;
        }
        this.mPhoneNumberImg.setImageResource(R.drawable.ic_check_phonevalidated_failed);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCareConnected() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            this.mConnectionImg.setImageResource(R.drawable.ic_check_careconnection_failed);
            return false;
        }
        if (Utils.isCareConnected(this.mCommunication)) {
            this.mConnectionImg.setImageResource(R.drawable.ic_check_careconnection_ok);
            return true;
        }
        Date lastConnection = dongleModel.getLastConnection();
        if (lastConnection == null) {
            this.mConnectionImg.setImageResource(R.drawable.ic_check_careconnection_failed);
            return false;
        }
        if (Utils.isTimeElapsed(lastConnection.getTime(), TripObjectModel.DIFF_MILLIS)) {
            this.mConnectionImg.setImageResource(R.drawable.ic_check_careconnection_failed);
            return false;
        }
        this.mConnectionImg.setImageResource(R.drawable.ic_check_careconnection_ok);
        return true;
    }
}
