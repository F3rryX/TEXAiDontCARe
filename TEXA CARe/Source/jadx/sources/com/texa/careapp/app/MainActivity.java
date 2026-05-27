package com.texa.careapp.app;

import android.app.NotificationManager;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.messaging.FirebaseMessaging;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.events.FirstConfigurationEvent;
import com.texa.careapp.app.events.StartSosPrerequisiteActivityEvent;
import com.texa.careapp.app.onboarding.CareAuthenticationScreen;
import com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.app.settings.tyres.SettingsTyresActivity;
import com.texa.careapp.app.sos.AutomaticSosActivity;
import com.texa.careapp.app.sos.ContactsScreen;
import com.texa.careapp.app.sos.SosPrerequisiteActivity;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.base.NavigationDrawerFragment;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.ActivityMainBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.fcm.FcmMessagingService;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.UserVehicleListResponse;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.exceptions.CareException;
import com.texa.careapp.utils.shake.ShakeDetector;
import com.texa.carelib.communication.Communication;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    private static final String ACTION_DISPLAY_SCREEN = "display-screen-action";
    private static final int ACTION_FIRST_CONFIGURATION = 1;
    private static final int ACTION_UNDEFINED = -1;
    private static final int ACTION_VIN_MISMATCH = 0;
    private static final int FASTEST_INTERVAL = 5000;
    private static final int INTERVAL = 10000;
    private static final String OPEN_SCREEN_KEY = "OPEN_SCREEN_KEY";
    private static final int REQUEST_CHECK_SETTINGS = 1;
    private static final int SCREEN_AUTHENTICATION = 5;
    private static final int SCREEN_CONTACTS = 2;
    private static final int SCREEN_DASHBOARD = 4;
    private static final int SCREEN_SCHEDULE = 3;
    private static final int SMALLEST_DISPLACEMENT = 10;
    private static final String TAG = "MainActivity";
    private CareApplication careApplication;

    @Inject
    protected FcmManager fcmManager;
    private boolean isRequestCareConfigDialogShown;
    private BluetoothAdapter mBtAdapter;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    protected ICareObserver mCareObserver;
    private Disposable mCareStatusDisposable;

    @Inject
    protected Communication mCommunication;
    protected View mCoordinatorLayout;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private LocalBroadcastManager mLocalBroadCastReceiver;

    @Inject
    protected LoggerManager mLoggerManager;
    private NavigationDrawerFragment mNavigationDrawerFragment;
    private Navigator mNavigator;

    @Inject
    protected NotificationManager mNotificationManager;

    @Inject
    protected SharedPreferences mPreferences;
    private SensorManager mSensorManager;

    @Inject
    protected ServiceDataManager mServiceDataManager;
    private ShakeDetector mShakeDetector;
    private Snackbar mSnackBar;

    @Inject
    protected SosFeatureManager mSosFeatureManager;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected UserDataManager mUserDataManager;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;
    public EventBus mEventBus = EventBus.getDefault();
    private List<VehicleModel> vehicles = new ArrayList();
    private long lastSnackBarCreation = 0;
    private int action = -1;
    private final CompositeDisposable mDisposable = new CompositeDisposable();
    private BroadcastReceiver GPSBroadCastReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.app.MainActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Constants.Actions.CHECK_GPS_STATE.equals(intent.getAction())) {
                MainActivity.this.snackBar_BT_GPS_changeStateNotify(Constants.Actions.CHECK_GPS_STATE, Boolean.valueOf(intent.getBooleanExtra(Constants.EXTRA_GPS_STATE, false)));
            }
        }
    };
    private BroadcastReceiver BTBroadCastReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.app.MainActivity.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Constants.Actions.CHECK_BLUETOOTH_STATE.equals(intent.getAction()) && intent.getExtras().containsKey(Constants.EXTRA_BLUETOOTH_STATE)) {
                int intExtra = intent.getIntExtra(Constants.EXTRA_BLUETOOTH_STATE, Integer.MIN_VALUE);
                boolean z = false;
                switch (intExtra) {
                    case 10:
                        MainActivity.this.mLoggerManager.log(ServerLogModel.LogEvent.USER_INTERATION, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.BLUETOOTH_DISABLED);
                        break;
                    case 11:
                        z = true;
                        break;
                    case 12:
                        MainActivity.this.mLoggerManager.log(ServerLogModel.LogEvent.USER_INTERATION, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.BLUETOOTH_ENABLED);
                        break;
                }
                MainActivity.this.snackBar_BT_GPS_changeStateNotify(Constants.Actions.CHECK_BLUETOOTH_STATE, Boolean.valueOf(z));
            }
        }
    };
    View.OnClickListener mOnClickEnableGPS = new View.OnClickListener() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda0
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m99lambda$new$8$comtexacareappappMainActivity(view);
        }
    };
    View.OnClickListener mOnClickEnableBT = new View.OnClickListener() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.m100lambda$new$9$comtexacareappappMainActivity(view);
        }
    };

    private static boolean isNotConfigured(int i) {
        return i == 3 || i == 132;
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntentForContactScreen(Context context) {
        return buildIntentFor(context, 2);
    }

    public static Intent buildIntentForDashboardScreen(Context context) {
        return buildIntentFor(context, 4);
    }

    public static Intent buildIntentForPinRequest(Context context) {
        return buildIntentFor(context, 5);
    }

    public static Intent buildIntentForTexaCarePageOnGooglePlay() {
        return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.texa.care"));
    }

    private static Intent buildIntentFor(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) MainActivity.class);
        intent.setAction(ACTION_DISPLAY_SCREEN);
        intent.putExtra(OPEN_SCREEN_KEY, i);
        intent.setFlags(603979776);
        if (context.getClass().getSimpleName().equals(FcmMessagingService.TAG)) {
            intent.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE, true);
        } else {
            intent.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, true);
        }
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCoordinatorLayout = ((ActivityMainBinding) DataBindingUtil.setContentView(this, R.layout.activity_main)).coordinatorLayout;
        CareApplication careApplication = getCareApplication();
        this.careApplication = careApplication;
        careApplication.component().inject(this);
        Navigator instanceFor = Navigator.getInstanceFor(this);
        this.mNavigator = instanceFor;
        instanceFor.setContainerResId(R.id.container);
        this.mNavigator.setActionBar(getSupportActionBar());
        this.isRequestCareConfigDialogShown = false;
        createDrawer(this.mNavigator);
        if (getIntent() != null && getIntent().getBooleanExtra(Constants.START_MAIN_ACTIVITY_EXTRA, false) && !Utils.isValidatedUserPhoneNumber(this.mUserDataManager.getUserCached())) {
            startActivity(ActivationPhoneNumberActivity.buildIntent(this));
        }
        if (Utils.isEmpty(this.fcmManager.getNotificationToken())) {
            FirebaseMessaging.getInstance().getToken().addOnCompleteListener(new OnCompleteListener() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda5
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    this.f$0.m102lambda$onCreate$0$comtexacareappappMainActivity(task);
                }
            });
        }
        displayScreen(getIntent().getExtras());
        scheduleSyncServiceDataTask();
        checkCrashlyticsUser();
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m102lambda$onCreate$0$comtexacareappappMainActivity(Task task) {
        if (task.isSuccessful()) {
            this.fcmManager.saveCurrentToken((String) task.getResult());
        } else {
            Timber.e(task.getException(), "Exception while getting fcm token", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void snackBar_BT_GPS_changeStateNotify(String str, Boolean bool) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.lastSnackBarCreation;
        if (j == 0 || jCurrentTimeMillis - 1000 > j) {
            this.lastSnackBarCreation = jCurrentTimeMillis;
            if (Constants.Actions.CHECK_BLUETOOTH_STATE.equals(str)) {
                checkBtAndLocationEnabled(null, bool);
            } else if (Constants.Actions.CHECK_GPS_STATE.equals(str)) {
                checkBtAndLocationEnabled(bool, null);
            }
        }
    }

    private void displayScreen(Bundle bundle) {
        int i = bundle != null ? bundle.getInt(OPEN_SCREEN_KEY) : -1;
        if (i == 2) {
            if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_REMOTE_NOTIFICATION.getTag(), null);
            } else if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
            }
            this.mNavigator.goTo(new ContactsScreen(this.careApplication));
            return;
        }
        if (i == 3) {
            Timber.d("schedule screen called in MainActivity", new Object[0]);
            if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_REMOTE_NOTIFICATION.getTag(), null);
                return;
            } else {
                if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL)) {
                    FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
                    return;
                }
                return;
            }
        }
        if (i == 4) {
            if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_REMOTE_NOTIFICATION.getTag(), null);
            } else if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
            }
            this.mNavigator.goTo(new DashboardScreenV2(this.careApplication));
            return;
        }
        if (i == 5) {
            if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_REMOTE_NOTIFICATION.getTag(), null);
            } else if (bundle.getBoolean(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL)) {
                FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_LOCAL_NOTIFICATION.getTag(), null);
            }
            this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_CONN, ServerLogModel.ResultForLog.FAILED, "pin error after onboarding");
            this.mNavigator.goTo(new CareAuthenticationScreen(this, this.mCommunication.getCurrentDevice()));
            return;
        }
        this.mNavigator.goTo(new DashboardScreenV2(this.careApplication));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (Utils.shouldStartService(this, CareService.class)) {
            if (Build.VERSION.SDK_INT > 25) {
                startForegroundService(CareService.buildConnectToDongleIntent(getApplicationContext()));
            } else {
                startService(CareService.buildConnectToDongleIntent(getApplicationContext()));
            }
        }
        this.mCareStatusDisposable = observeCareStatus();
        if (this.mPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.VIN_MISMATCH_ENVIRONMENT)) {
            getVehiclesFromServer();
        }
        this.mEventBus.register(this);
        this.fcmManager.checkPlayServices(this);
        checkBtAndLocationEnabled(null, null);
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(getApplicationContext());
        this.mLocalBroadCastReceiver = localBroadcastManager;
        localBroadcastManager.registerReceiver(this.BTBroadCastReceiver, new IntentFilter(Constants.Actions.CHECK_BLUETOOTH_STATE));
        this.mLocalBroadCastReceiver.registerReceiver(this.GPSBroadCastReceiver, new IntentFilter(Constants.Actions.CHECK_GPS_STATE));
        Timber.d("#onResume()", new Object[0]);
    }

    protected void scheduleSyncServiceDataTask() {
        this.mCAReWorkerManager.scheduleOneOffJob(FcmConstants.ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION, null);
    }

    public void checkBtAndLocationEnabled(Boolean bool, Boolean bool2) {
        if (bool2 == null) {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            this.mBtAdapter = defaultAdapter;
            bool2 = Boolean.valueOf(defaultAdapter != null && defaultAdapter.isEnabled());
        }
        if (bool == null) {
            try {
                bool = Boolean.valueOf(((LocationManager) getSystemService(FirebaseAnalytics.Param.LOCATION)).isProviderEnabled("gps"));
            } catch (Exception e) {
                Timber.w(e, "locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER)", new Object[0]);
                bool = false;
            }
        }
        Snackbar snackbar = this.mSnackBar;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        if (!bool2.booleanValue() && !bool.booleanValue()) {
            this.lastSnackBarCreation = new Date().getTime();
            Snackbar snackbarSnackBarInfoPersistent = snackBarInfoPersistent(R.string.location_and_bt_not_enabled);
            this.mSnackBar = snackbarSnackBarInfoPersistent;
            snackbarSnackBarInfoPersistent.show();
            return;
        }
        if (!bool.booleanValue()) {
            this.lastSnackBarCreation = new Date().getTime();
            Snackbar snackbarSnackBarInfoPersistent2 = snackBarInfoPersistent(R.string.location_not_enabled_and_request);
            this.mSnackBar = snackbarSnackBarInfoPersistent2;
            snackbarSnackBarInfoPersistent2.setAction(R.string.enable, this.mOnClickEnableGPS).show();
            return;
        }
        if (!bool2.booleanValue()) {
            this.lastSnackBarCreation = new Date().getTime();
            Snackbar snackbarSnackBarInfoPersistent3 = snackBarInfoPersistent(R.string.bluetooth_not_enabled_and_request);
            this.mSnackBar = snackbarSnackBarInfoPersistent3;
            snackbarSnackBarInfoPersistent3.setAction(R.string.enable, this.mOnClickEnableBT).show();
            return;
        }
        Timber.i("Complete checkBtAndLocationEnabled", new Object[0]);
    }

    public void requestGPSDialog() {
        GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(this).addApi(LocationServices.API).build();
        googleApiClientBuild.connect();
        LocationRequest locationRequestCreate = LocationRequest.create();
        locationRequestCreate.setPriority(100);
        locationRequestCreate.setFastestInterval(5000L);
        locationRequestCreate.setInterval(10000L);
        locationRequestCreate.setSmallestDisplacement(10.0f);
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder();
        builder.addLocationRequest(locationRequestCreate);
        builder.setAlwaysShow(true);
        LocationServices.SettingsApi.checkLocationSettings(googleApiClientBuild, builder.build()).setResultCallback(new ResultCallback() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.common.api.ResultCallback
            public final void onResult(Result result) {
                this.f$0.m103lambda$requestGPSDialog$1$comtexacareappappMainActivity((LocationSettingsResult) result);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$requestGPSDialog$1$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m103lambda$requestGPSDialog$1$comtexacareappappMainActivity(LocationSettingsResult locationSettingsResult) {
        Status status = locationSettingsResult.getStatus();
        if (status.getStatusCode() != 6) {
            return;
        }
        try {
            status.startResolutionForResult(this, 1);
        } catch (Exception e) {
            Log.e(TAG, "startResolutionForResult  error", e);
        }
    }

    public void requestCareConfigDialog() {
        if (this.isRequestCareConfigDialogShown) {
            return;
        }
        this.isRequestCareConfigDialogShown = true;
        getNavigator().goTo(new CareConfigurationRequestDialog(this, this.vehicles, this.action));
    }

    private Disposable getVehiclesFromServer() {
        this.vehicles.clear();
        return this.mTexaCareApiServiceUser.getUserVehicleList().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m97lambda$getVehiclesFromServer$2$comtexacareappappMainActivity((UserVehicleListResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m98lambda$getVehiclesFromServer$3$comtexacareappappMainActivity((Throwable) obj);
            }
        }, new Action() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Action
            public final void run() {
                this.f$0.onCompleteGetUserVehicleProcedure();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getVehiclesFromServer$2$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m97lambda$getVehiclesFromServer$2$comtexacareappappMainActivity(UserVehicleListResponse userVehicleListResponse) throws Exception {
        for (UserVehicleListResponse.UserVehicleData userVehicleData : userVehicleListResponse.userVehicleDataList) {
            VehicleModel vehicleModel = new VehicleModel();
            vehicleModel.setPlate(userVehicleData.plate);
            if (!Utils.isEmpty(userVehicleData.description)) {
                vehicleModel.setDescription(userVehicleData.description);
            }
            vehicleModel.setUid(userVehicleData.vehicleId);
            if (userVehicleData.selectionData != null && userVehicleData.selectionData.getSelectionModel() != null && userVehicleData.selectionData.getSelectionBrand() != null && !Utils.isEmpty(userVehicleData.selectionData.getSelectionModel()) && !Utils.isEmpty(userVehicleData.selectionData.getSelectionBrand())) {
                vehicleModel.setModelName(userVehicleData.selectionData.getSelectionModel());
                vehicleModel.setBrandName(userVehicleData.selectionData.getSelectionBrand());
            } else if (!Utils.isEmpty(userVehicleData.description) && userVehicleData.description.contains(Constants.VEHICLE_DESCRIPTION_SEPARATOR)) {
                String[] strArrSplit = userVehicleData.description.split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                String vehicleModel2 = Utils.formatVehicleModel(strArrSplit[1]);
                vehicleModel.setBrandName(strArrSplit[0]);
                vehicleModel.setModelName(vehicleModel2);
            }
            this.vehicles.add(vehicleModel);
        }
    }

    /* JADX INFO: renamed from: lambda$getVehiclesFromServer$3$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m98lambda$getVehiclesFromServer$3$comtexacareappappMainActivity(Throwable th) throws Exception {
        onCompleteGetUserVehicleProcedure();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCompleteGetUserVehicleProcedure() {
        if (!this.mPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.VIN_MISMATCH_ENVIRONMENT)) {
            for (VehicleModel vehicleModel : this.vehicles) {
                if (!this.mVehicleDataManager.exists(vehicleModel.getUid())) {
                    getVehiclesDetails(vehicleModel);
                }
            }
        }
        requestCareConfigDialog();
    }

    private void getVehiclesDetails(final VehicleModel vehicleModel) {
        this.mDisposable.add(this.mTexaCareApiServiceUser.getVehicleDetailsObservable(vehicleModel.getUid()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m96lambda$getVehiclesDetails$4$comtexacareappappMainActivity(vehicleModel, (VehicleResponse) obj);
            }
        }, MainActivity$$ExternalSyntheticLambda1.INSTANCE));
    }

    /* JADX INFO: renamed from: lambda$getVehiclesDetails$4$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m96lambda$getVehiclesDetails$4$comtexacareappappMainActivity(VehicleModel vehicleModel, VehicleResponse vehicleResponse) throws Exception {
        try {
            this.mVehicleDataManager.updateVehicle(vehicleModel, vehicleResponse);
        } catch (DatabaseIOException e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (ACTION_DISPLAY_SCREEN.equals(intent.getAction())) {
            displayScreen(intent.getExtras());
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Utils.safeDispose(this.mCareStatusDisposable);
        this.mEventBus.unregister(this);
        this.mLocalBroadCastReceiver.unregisterReceiver(this.GPSBroadCastReceiver);
        this.mLocalBroadCastReceiver.unregisterReceiver(this.BTBroadCastReceiver);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mNavigationDrawerFragment.isDrawerOpen()) {
            this.mNavigationDrawerFragment.closeDrawer();
        } else {
            if (this.mNavigator.onBackPressed()) {
                return;
            }
            super.onBackPressed();
        }
    }

    private void createDrawer(Navigator navigator) {
        NavigationDrawerFragment navigationDrawerFragment = (NavigationDrawerFragment) getFragmentManager().findFragmentById(R.id.fragment_drawer);
        this.mNavigationDrawerFragment = navigationDrawerFragment;
        navigationDrawerFragment.setup(R.id.fragment_drawer, (DrawerLayout) findViewById(R.id.drawer), getActionBarToolbar(), navigator);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisposable);
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }

    private void startReadShake() {
        SensorManager sensorManager = (SensorManager) this.careApplication.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(1);
        ShakeDetector shakeDetector = new ShakeDetector();
        this.mShakeDetector = shakeDetector;
        this.mSensorManager.registerListener(shakeDetector, defaultSensor, 2);
        this.mShakeDetector.setOnShakeListener(new ShakeDetector.OnShakeListener() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda6
            @Override // com.texa.careapp.utils.shake.ShakeDetector.OnShakeListener
            public final void onShake(int i) {
                this.f$0.m104lambda$startReadShake$5$comtexacareappappMainActivity(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$startReadShake$5$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m104lambda$startReadShake$5$comtexacareappappMainActivity(int i) {
        Log.d(TAG, "###***shakeEvent***###");
        Intent intent = new Intent();
        intent.setClass(this.careApplication, AutomaticSosActivity.class);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    private void stopReadShake() {
        this.mSensorManager.unregisterListener(this.mShakeDetector);
    }

    @Subscribe
    public void onEvent(RequestTyresSwapConfigurationDialogEvent requestTyresSwapConfigurationDialogEvent) {
        Intent intent = new Intent(this, (Class<?>) SettingsTyresActivity.class);
        intent.putExtra(VehicleModel.COLUMN_UID, requestTyresSwapConfigurationDialogEvent.getVehicleId() + "");
        startActivity(intent);
    }

    @Subscribe
    public void onEvent(FirstConfigurationEvent firstConfigurationEvent) {
        getVehiclesFromServer();
        this.action = 1;
    }

    @Subscribe
    public void onEvent(StartSosPrerequisiteActivityEvent startSosPrerequisiteActivityEvent) {
        ServiceDataManager serviceDataManager = this.mServiceDataManager;
        startActivity(SosPrerequisiteActivity.buildIntent(this, serviceDataManager.getServicePriority(serviceDataManager.filterActiveSosServicesForHwId(this.mDongleDataManager.getDongleModel().getHwid(), this.mServiceDataManager.getSosServices()))));
    }

    private Snackbar snackBarInfoPersistent(int i) {
        return Snackbar.make(this.mCoordinatorLayout, i, -2);
    }

    private Disposable observeCareStatus() {
        return this.mCareObserver.observeCareStatus().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m101lambda$observeCareStatus$6$comtexacareappappMainActivity((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing care status", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeCareStatus$6$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m101lambda$observeCareStatus$6$comtexacareappappMainActivity(Integer num) throws Exception {
        if (isNotConfigured(num.intValue())) {
            getVehiclesFromServer();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(String str) {
        if (str.equals(Constants.VIN_MISMATCH_ENVIRONMENT)) {
            getVehiclesFromServer();
            this.action = 0;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(CareException careException) {
        snackbarInfo(careException.getMessage());
    }

    public static class RequestTyresSwapConfigurationDialogEvent {
        private String mVehicleId;

        public RequestTyresSwapConfigurationDialogEvent(String str) {
            this.mVehicleId = str;
        }

        public String getVehicleId() {
            return this.mVehicleId;
        }
    }

    public void checkCrashlyticsUser() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached != null) {
            FirebaseCrashlytics.getInstance().setUserId(userCached.getUserName());
        }
    }

    /* JADX INFO: renamed from: lambda$new$8$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m99lambda$new$8$comtexacareappappMainActivity(View view) {
        requestGPSDialog();
    }

    /* JADX INFO: renamed from: lambda$new$9$com-texa-careapp-app-MainActivity, reason: not valid java name */
    public /* synthetic */ void m100lambda$new$9$comtexacareappappMainActivity(View view) {
        this.mBtAdapter.enable();
    }
}
