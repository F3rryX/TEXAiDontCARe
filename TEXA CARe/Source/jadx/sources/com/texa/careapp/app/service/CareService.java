package com.texa.careapp.app.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.work.WorkRequest;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.activeandroid.query.Select;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.care.eco_driving.EcoDrivingCallback;
import com.texa.care.eco_driving.RxProfile;
import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.drivingevents.DrivingEventType;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import com.texa.care.eco_driving.score.BaseScore;
import com.texa.care.eco_driving.score.ScoreType;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.alarms.AlternatorStaticAnalyzer;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.MainActivity$$ExternalSyntheticLambda1;
import com.texa.careapp.app.auth.LoginActivity;
import com.texa.careapp.app.calibration.CalibrationActivity;
import com.texa.careapp.app.ecodriving.MainEcoDrivingBus;
import com.texa.careapp.app.ecodriving.UpdateEcoDrivingDataEvent;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import com.texa.careapp.app.ecodriving.model.TripObjectLastScore;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.model.TripScoreUpdateModel;
import com.texa.careapp.app.ecodriving.serviceserializer.BaseEntity;
import com.texa.careapp.app.ecodriving.serviceserializer.TripObjectEntity;
import com.texa.careapp.app.events.FirstConfigurationEvent;
import com.texa.careapp.app.proximityalert.ProximityAlert;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.model.TripModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.model.VehicleParamHistoryModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.ParameterBatteryVoltage;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.tts.Speaker;
import com.texa.careapp.utils.BatteryServiceAnalyzer;
import com.texa.careapp.utils.CrashLogReader;
import com.texa.careapp.utils.CrashlyticsHelper;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.KnownDeviceHistoryImpl;
import com.texa.careapp.utils.LocationTracker;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.TripDataManager;
import com.texa.careapp.utils.TripLogBookReader;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.exceptions.CareException;
import com.texa.careapp.utils.wakelock.WakelockManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.attitude.Attitude;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.vehicle.ValueDataType;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.AuthenticationErrorEvent;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import com.texa.carelib.webservices.TexaService;
import com.texa.carelib.webservices.VehicleConfigurationInfoLoadedEvent;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import com.texa.securepreferences.SecurePreferences;
import dagger.Lazy;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CareService extends RxCareService implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, EcoDrivingCallback {
    public static final String CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY = "CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY";
    private static final int COMMAND_CONNECT_TO_DONGLE = 102;
    private static final int COMMAND_TRIP_STARTED = 103;
    public static final String ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY = "ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY";
    private static final String SERVICE_COMMAND = "SERVICE_COMMAND";
    private static final String TAG = "CareService";
    private static final int TRIP_INFO_REQUEST = 30;

    @Inject
    protected Communication communication;

    @Inject
    protected DrivingStyleManager drivingStyleManager;
    private Disposable ecoDrivingSyncDisposable;
    private boolean haveToNotify;

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected AlternatorStaticAnalyzer mAlternatorStaticAnalyzer;

    @Inject
    protected ArmadilloSharedPreferences mArmadilloSharedPreferences;

    @Inject
    protected Attitude mAttitude;

    @Inject
    protected BatteryServiceAnalyzer mBatteryServiceAnalyzer;

    @Inject
    protected CAReWorkerManager mCAReWorkerManager;

    @Inject
    protected UpdateConfigurationHelper mCareConfigurationHelper;

    @Inject
    protected Lazy<CrashlyticsHelper> mCareCrashlyticsHelper;

    @Inject
    protected ICareObserver mCareObserver;
    private Disposable mConfDisposable;

    @Inject
    protected CrashLogReader mCrashLogReader;

    @Inject
    protected Lazy<CrashlyticsHelper> mCrashlyticsHelper;

    @Inject
    protected CurrentTrip mCurrentTrip;

    @Inject
    protected DTCResolutionIntegrator mDTCResolutionIntegrator;

    @Inject
    protected DataManagerConfiguration mDataManagerConfiguration;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected DtcManager mDtcManager;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FlavorDelegator mFlavorDelegator;
    private GoogleApiClient mGoogleApiClient;

    @Inject
    protected ImpactDetection mImpactDetection;

    @Inject
    protected ImpactDetector mImpactDetector;

    @Inject
    protected LampsManager mLampsManager;

    @Inject
    protected LocalBroadcastManager mLocalBroadcastManager;

    @Inject
    protected LocationTracker mLocationTracker;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected NotificationManager mNotificationManager;

    @Inject
    protected SharedPreferences mPreferences;

    @Inject
    protected Profile mProfile;

    @Inject
    protected TexaProfileDelegate mProfileDelegate;

    @Inject
    protected RxProfile mRxProfile;

    @Inject
    protected SecurePreferences mSecurePreferences;

    @Inject
    protected ServiceNotificationController mServiceNotificationController;

    @Inject
    protected SosFeatureManager mSosFeatureManager;

    @Inject
    protected SosPrerequisiteNotificationController mSosPrerequisiteNotificationController;

    @Inject
    protected Speaker mSpeaker;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected TexaService mTexaService;

    @Inject
    protected TripDataManager mTripDataManager;
    private Disposable mTripInfoDisposable;

    @Inject
    protected TripLogBook mTripLogBook;

    @Inject
    protected TripLogBookReader mTripLogBookReader;

    @Inject
    protected UpdateConfigurationHelper mUpdateConfigurationHelper;
    private Disposable mUpdateLampsDisposable;

    @Inject
    protected UserDataManager mUserDataManager;

    @Inject
    protected Vehicle mVehicle;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;

    @Inject
    protected VehicleParametersManagerV2 mVehicleParametersManagerV2;

    @Inject
    protected WakelockManager mWakelockManager;

    @Inject
    protected NotificationManager notificationManager;
    private Disposable profileReadyDisposable;
    private ProximityAlert proximityAlert;
    private Disposable refreshTokenExpiredDisposable;
    private HashMap<String, Disposable> mDisposableHashMap = new HashMap<>();
    private long lastStopTimestamp = -1;
    private PropertyChangeListener mCommunicationChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda22
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m366lambda$new$0$comtexacareappappserviceCareService(propertyChangeEvent);
        }
    };
    Handler handler = new Handler();
    private PropertyChangeListener mAccessoryPropertyChangeListener = new AnonymousClass1();

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m366lambda$new$0$comtexacareappappserviceCareService(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
            this.mBatteryServiceAnalyzer.onCommunicationStatusChanged(communication.getStatus());
            Timber.i("COMMUNICATION --> %s", communication.getStatus().name());
            switch (AnonymousClass3.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communication.getStatus().ordinal()]) {
                case 1:
                    new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda25
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.saveProximityAlertPoint();
                        }
                    }, 5000L);
                    this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_DISCONN, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_CONNECTION_LOST);
                    break;
                case 2:
                    this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_RECON, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_SCANNING);
                    break;
                case 3:
                    this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_RECON, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_RECONNECTING);
                    break;
                case 4:
                    if (Looper.myLooper() != Looper.getMainLooper()) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda23
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.connectToDongle();
                            }
                        });
                    } else {
                        connectToDongle();
                    }
                    break;
                case 5:
                    DeviceInfo currentDevice = communication.getCurrentDevice();
                    if (currentDevice != null && currentDevice.getName() != null) {
                        List<DongleModel> dongleByMacAddress = this.mDongleDataManager.getDongleByMacAddress(currentDevice.getAddress());
                        if (!dongleByMacAddress.isEmpty()) {
                            this.mProfileDelegate.setPassword(dongleByMacAddress.get(0).getPin(this.mSecurePreferences, this.mArmadilloSharedPreferences));
                            this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_RECON, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_CONNECTING);
                        }
                        break;
                    }
                    break;
                case 6:
                    Bundle bundle = new Bundle();
                    String name = "NULL";
                    if (this.mCommunication.getCurrentDevice() != null && this.mCommunication.getCurrentDevice().getName() != null) {
                        name = this.mCommunication.getCurrentDevice().getName();
                    }
                    bundle.putString("deviceName", name);
                    FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_COMMON_BLUETOOTH_CONNECTED.getTag(), bundle);
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.service.CareService$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.SCANNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.RECONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.IDLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveProximityAlertPoint() {
        LocationManager locationManager = this.proximityAlert.getLocationManager();
        if (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            Timber.e(TAG, "permissions not granted accessing location");
            return;
        }
        VehicleObserver vehicleObserver = this.mVehicleObserver;
        if (vehicleObserver == null || vehicleObserver.getCurrentVehicle() == null) {
            return;
        }
        HashMap<String, Double> lastLocation = this.mVehicleObserver.getCurrentVehicle().getLastLocation();
        if (lastLocation != null) {
            Constants.POINT_PROXIMITY_LATITUDE = lastLocation.get(Constants.LATITUDE_POSITION).doubleValue();
            Constants.POINT_PROXIMITY_LONGITUDE = lastLocation.get(Constants.LONGITUDE_POSITION).doubleValue();
            this.proximityAlert.addProximityAlert(Constants.POINT_PROXIMITY_LATITUDE, Constants.POINT_PROXIMITY_LONGITUDE);
        } else if (locationManager != null) {
            Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
            if (lastKnownLocation == null) {
                Timber.e(TAG, "last known location is null");
                return;
            }
            Constants.POINT_PROXIMITY_LATITUDE = lastKnownLocation.getLatitude();
            Constants.POINT_PROXIMITY_LONGITUDE = lastKnownLocation.getLongitude();
            this.proximityAlert.addProximityAlert(Constants.POINT_PROXIMITY_LATITUDE, Constants.POINT_PROXIMITY_LONGITUDE);
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.service.CareService$1, reason: invalid class name */
    class AnonymousClass1 implements PropertyChangeListener {
        AnonymousClass1() {
        }

        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            if (propertyChangeEvent.getPropertyName().equals(Accessory.PROPERTY_STATUS)) {
                Timber.i("STATUS --> %s", CareService.this.getString(Constants.CARE_STATUS.get(CareService.this.mAccessory.getStatus())));
                final int status = CareService.this.mAccessory.getStatus();
                if (status != 0) {
                    CareService.this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_STATUS, ServerLogModel.ResultForLog.UNDEFINED, "configuration: " + CareService.this.getString(Constants.CARE_STATUS.get(status)));
                }
                if (status != 4) {
                    if (status == 2 || status != 0) {
                        return;
                    }
                    CareService.this.handler.postDelayed(new Runnable() { // from class: com.texa.careapp.app.service.CareService$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m377xd90f87bf(status);
                        }
                    }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
                    return;
                }
                if (CareService.this.mPreferences.getBoolean(CareService.this.mAccessory.getSerialNumber() + Constants.PREFS_KEY_FIRMWARE_UPDATE, false)) {
                    PendingIntent activity = PendingIntent.getActivity(CareService.this.getApplicationContext(), 0, MainActivity.buildIntentForDashboardScreen(CareService.this.getApplicationContext()), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
                    NotificationCompat.Builder contentText = Utils.getDefaultNotificationBuilder(CareService.this.getApplicationContext()).setContentText(CareService.this.getString(R.string.notification_firmware_updated));
                    contentText.setContentIntent(activity);
                    CareService.this.notificationManager.notify(14, contentText.build());
                    SharedPreferences.Editor editorEdit = CareService.this.mPreferences.edit();
                    editorEdit.putBoolean(CareService.this.mAccessory.getSerialNumber() + Constants.PREFS_KEY_FIRMWARE_UPDATE, false);
                    editorEdit.apply();
                }
            }
        }

        /* JADX INFO: renamed from: lambda$propertyChange$0$com-texa-careapp-app-service-CareService$1, reason: not valid java name */
        public /* synthetic */ void m377xd90f87bf(int i) {
            if (CareService.this.mAccessory.getStatus() == 0) {
                CareService.this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_STATUS, ServerLogModel.ResultForLog.FAILED, "configuration: " + CareService.this.getString(Constants.CARE_STATUS.get(i)));
                CareService careService = CareService.this;
                careService.startService(FirmwareUpdateService.buildDefaultIntent(careService.getApplicationContext()));
            }
        }
    }

    public static Intent buildDefaultIntent(Context context) {
        return new Intent(context, (Class<?>) CareService.class);
    }

    public static Intent buildConnectToDongleIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) CareService.class);
        intent.putExtra(SERVICE_COMMAND, 102);
        return intent;
    }

    public static Intent buildTripStartedIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) CareService.class);
        intent.putExtra(SERVICE_COMMAND, 103);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTripLogBook() {
        if (this.mVehicleObserver.getCurrentVehicle() == null) {
            Timber.d("saveTripLogBook, vehicleModel is null", new Object[0]);
        } else {
            this.mTripLogBookReader.read(this.mTripLogBook);
        }
    }

    private void saveCrashLog() {
        if (this.mDongleDataManager.getDongleModel() == null) {
            Timber.d("saveCrashLog, currentDongle is null", new Object[0]);
            return;
        }
        this.mCrashLogReader.mCompleteAllOperation = new CrashLogReader.CompleteAllOperation() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda0
            @Override // com.texa.careapp.utils.CrashLogReader.CompleteAllOperation
            public final void onCompletedAllOperations() {
                this.f$0.saveTripLogBook();
            }
        };
        this.mCrashLogReader.read(this.mImpactDetection);
    }

    @Override // com.texa.careapp.app.service.RxCareService, android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (commandEquals(intent, 103)) {
            Timber.d("received command: COMMAND_TRIP_STARTED", new Object[0]);
            onTripStarted(this.mCurrentTrip);
        }
        if (commandEquals(intent, 102)) {
            Timber.d("received command: COMMAND_CONNECT_TO_DONGLE, trying to connect...", new Object[0]);
            connectToDongle();
        }
        this.mWakelockManager.onServiceStarted();
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.START_ON_SERVICE_LAUNCH);
        Utils.isBluetoothEnabled(this.mLoggerManager);
        return 1;
    }

    @Override // com.texa.careapp.app.service.RxCareService, android.app.Service
    public void onDestroy() {
        unregisterListeners();
        this.mWakelockManager.onServiceDestroyed();
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient != null) {
            googleApiClient.disconnect();
        }
        Utils.safeDispose(this.refreshTokenExpiredDisposable);
        this.proximityAlert.unregisterReceivers();
        this.mServiceNotificationController.onDestroy(this);
        this.mSosPrerequisiteNotificationController.onDestroy();
        this.mDongleDataManager.stopConnectionListener(this.communication);
        this.mVehicleParametersManagerV2.onDestroy();
        this.mCAReWorkerManager.cancelPeriodicTask();
        unsubscribeRxSubscription();
        BaseScore.unRegisterCallback(this);
        if (this.mImpactDetector.isSupported()) {
            this.mImpactDetector.stopDetection();
        }
        this.mSosFeatureManager.unregisterImpactDetectorListener();
        this.notificationManager.cancelAll();
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.SERVICE_DESTROYED);
        Utils.safeDispose(this.ecoDrivingSyncDisposable);
        if (this.communication.isConnected()) {
            try {
                this.communication.disconnect();
            } catch (CareLibException unused) {
            }
        }
        super.onDestroy();
    }

    private void unsubscribeRxSubscription() {
        Utils.safeDispose(this.mTripInfoDisposable);
    }

    protected void unregisterListeners() {
        this.mSosFeatureManager.unregisterImpactDetectionListener();
        this.communication.removePropertyChangeListener(this.mCommunicationChangeListener);
        Utils.safeDispose(this.profileReadyDisposable);
        this.mAccessory.removePropertyChangeListener(this.mAccessoryPropertyChangeListener);
        this.mAccessory.removePropertyChangeListener(this.mCareCrashlyticsHelper.get());
    }

    @Override // com.texa.careapp.app.service.RxCareService, android.app.Service
    public void onCreate() {
        super.onCreate();
        getCareApplication().component().inject(this);
        BaseScore.registerCallback(this);
        this.proximityAlert = new ProximityAlert(this);
        setupCareLib();
        if (this.drivingStyleManager != null && this.mPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_ACTIVATION, true)) {
            this.ecoDrivingSyncDisposable = Observable.interval(5L, TimeUnit.MINUTES).observeOn(Schedulers.newThread()).subscribeOn(Schedulers.newThread()).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m371lambda$onCreate$1$comtexacareappappserviceCareService((Disposable) obj);
                }
            }).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda6
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m372lambda$onCreate$2$comtexacareappappserviceCareService((Long) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda14
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error syncing trips", new Object[0]);
                }
            });
        }
        if (this.mGoogleApiClient == null) {
            this.mGoogleApiClient = new GoogleApiClient.Builder(this).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(LocationServices.API).build();
        }
        this.mGoogleApiClient.connect();
        this.mDongleDataManager.startConnectionListener(this.communication);
        connectToDongle();
        if (isConnectedAndAuthenticated()) {
            Timber.d("service onCreate(): CARe connesso BT e autenticato", new Object[0]);
            onCareConnectedAndAuthenticated();
        }
        this.mServiceNotificationController.onCreate(this);
        this.mSosPrerequisiteNotificationController.onCreate();
        scheduleSyncServiceDataTask();
        if (this.mImpactDetector.isSupported()) {
            this.mSosFeatureManager.registerImpactDetectorListener();
            this.mImpactDetector.startDetection();
        }
        if (this.mProfile.isReady()) {
            this.mVehicleParametersManagerV2.onCareConnected();
        }
        this.mCrashlyticsHelper.get().setUser(this.mUserDataManager.getUserCached());
        observeRefreshTokenExpired();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m371lambda$onCreate$1$comtexacareappappserviceCareService(Disposable disposable) throws Exception {
        new Thread(new Runnable() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.syncEcoDrivingTrips();
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m372lambda$onCreate$2$comtexacareappappserviceCareService(Long l) throws Exception {
        syncEcoDrivingTrips();
    }

    private void observeRefreshTokenExpired() {
        Utils.safeDispose(this.refreshTokenExpiredDisposable);
        this.refreshTokenExpiredDisposable = this.mUserDataManager.observeRefreshTokenExpired().subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).filter(new Predicate() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda19
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m369x46ec5447((Boolean) obj);
            }
        }, MainActivity$$ExternalSyntheticLambda1.INSTANCE);
    }

    /* JADX INFO: renamed from: lambda$observeRefreshTokenExpired$5$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m369x46ec5447(Boolean bool) throws Exception {
        this.notificationManager.notify(18, buildRefreshTokenNotification());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncEcoDrivingTrips() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached == null || !isTermAccepted(userCached)) {
            return;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.getDefault());
            List<TripObjectModel> unSyncTrips = EcoDrivingEventsDataManager.getUnSyncTrips();
            try {
                this.mTexaCareApiService.postEcoDrivingTripsBlocking(new BaseEntity(unSyncTrips)).execute();
            } catch (Exception e) {
                Timber.w(e, "EcoDrivingTrips sync error", new Object[0]);
            }
            Iterator<TripObjectModel> it = unSyncTrips.iterator();
            while (it.hasNext()) {
                it.next().saveAsSynced();
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(2, -1);
            String string = this.mPreferences.getString(Constants.PREFS_KEY_ECO_DRIVING_TRIPS_TIME, simpleDateFormat.format(calendar.getTime()));
            BaseEntity baseEntityBody = this.mTexaCareApiService.getEcoDrivingTripsBlocking(this.mUserDataManager.getUserCached().getUid(), string).execute().body();
            if (baseEntityBody != null) {
                Iterator<TripObjectEntity> it2 = baseEntityBody.getList().iterator();
                while (it2.hasNext()) {
                    EcoDrivingEventsDataManager.saveTripObject(it2.next(), this.mUserDataManager.getUserCached());
                }
                if (baseEntityBody.getTimestamp() != null) {
                    this.mPreferences.edit().putString(Constants.PREFS_KEY_ECO_DRIVING_TRIPS_TIME, baseEntityBody.getTimestamp()).apply();
                }
            }
        } catch (Throwable th) {
            Timber.e(th, "RETROFIT ERROR", new Object[0]);
        }
    }

    private boolean isTermAccepted(UserModel userModel) {
        TermsModel termAcepted = userModel.getTermAcepted(Constants.TERM_OF_SERVICES_NAME_PRIVACY);
        return termAcepted != null && termAcepted.version >= 2;
    }

    private void startEcoDriving() {
        if (this.drivingStyleManager == null || !this.mPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_ACTIVATION, true)) {
            return;
        }
        this.drivingStyleManager.setScoreUpdateRate(0.1d);
        this.drivingStyleManager.start();
    }

    private void stopEcoDriving() {
        if (this.drivingStyleManager == null || !this.mPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_ACTIVATION, true)) {
            return;
        }
        this.drivingStyleManager.stop();
    }

    @Override // com.texa.careapp.app.service.RxCareService
    protected void onTripStarted(CurrentTrip currentTrip) {
        super.onTripStarted(this.mCurrentTrip);
        Timber.d("A new trip is begun: %s", currentTrip.getTripBeginInfo());
        saveCrashLog();
        this.mLocationTracker.onTripStarted(this.mVehicleObserver.getCurrentVehicle());
        Utils.safeDispose(this.mTripInfoDisposable);
        this.mTripInfoDisposable = Observable.interval(30L, TimeUnit.SECONDS).compose(bindToTripLifecycle()).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m373lambda$onTripStarted$6$comtexacareappappserviceCareService((Disposable) obj);
            }
        }).doOnTerminate(new Action() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda27
            @Override // io.reactivex.functions.Action
            public final void run() {
                Timber.d("Stop subscription loadTripInfo()", new Object[0]);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.loadTripInfo(((Long) obj).longValue());
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda15
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "onError loadTripInfo()", new Object[0]);
            }
        }, new Action() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda28
            @Override // io.reactivex.functions.Action
            public final void run() {
                Timber.d("onCompleted loadTripInfo()", new Object[0]);
            }
        });
        odometerPeriodicUpdate();
        this.mLampsManager.start(this.mVehicleObserver.getCurrentVehicle(), this.mVehicle);
        this.mBatteryServiceAnalyzer.onTripStatusChanged(currentTrip.getTripStatus());
        Utils.safeDispose(this.mUpdateLampsDisposable);
        this.mUpdateLampsDisposable = getLampsSubscription();
        startService(FirmwareUpdateService.buildDefaultIntent(getApplicationContext()));
        this.mBatteryServiceAnalyzer.scheduleSyncBatteryData();
    }

    /* JADX INFO: renamed from: lambda$onTripStarted$6$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m373lambda$onTripStarted$6$comtexacareappappserviceCareService(Disposable disposable) throws Exception {
        Timber.d("Start subscription loadTripInfo()", new Object[0]);
        loadTripInfo(-1L);
    }

    private Disposable getLampsSubscription() {
        return this.mLampsManager.observeActiveLampsSize().distinct().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m365x4bd5825c((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "ERROR lamp update", new Object[0]);
            }
        }, new Action() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda26
            @Override // io.reactivex.functions.Action
            public final void run() {
                Timber.d("complete lamp update", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getLampsSubscription$10$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m365x4bd5825c(Integer num) throws Exception {
        Timber.d("received lamp update", new Object[0]);
        this.mLampsManager.scheduleLampSyncTask();
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.w(" DongleModel is NULL", new Object[0]);
            return;
        }
        dongleModel.setLastParametersUpdate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        try {
            Utils.safeModelSave(dongleModel, getApplicationContext());
            VehicleModel currentVehicle = dongleModel.getCurrentVehicle();
            if (currentVehicle == null) {
                Timber.w("vehicleModel is NULL", new Object[0]);
            } else {
                this.mLampsManager.updateActiveLampNotification(this.notificationManager, currentVehicle.getActiveLamps());
            }
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model.", new Object[0]);
            throw new RuntimeException(e);
        }
    }

    protected boolean isTripInfoSubscribed() {
        Disposable disposable = this.mTripInfoDisposable;
        return (disposable == null || disposable.isDisposed()) ? false : true;
    }

    private void odometerPeriodicUpdate() {
        Utils.safeDispose(this.mDisposableHashMap, ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY);
        this.mDisposableHashMap.put(ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY, this.mCareObserver.observeCurrentTrip().compose(bindToTripLifecycle()).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda31
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m370x33c3d70a((CurrentTrip) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing current trip for odometer update", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$odometerPeriodicUpdate$13$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m370x33c3d70a(CurrentTrip currentTrip) throws Exception {
        updateVehicleOdometer(this.mCurrentTrip.getTripEndInfo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadTripInfo(long j) {
        Timber.d("loadTripInfo(), iteration=%d", Long.valueOf(j));
        try {
            this.mCurrentTrip.loadTripInfo();
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    @Override // com.texa.careapp.app.service.RxCareService
    protected void onCareConnectedAndAuthenticated() {
        super.onCareConnectedAndAuthenticated();
        Timber.d("CARe connected BT and authenticated", new Object[0]);
        this.haveToNotify = true;
        configureDriverId();
        this.mPreferences.edit().putString(Constants.CARE_ENVIRONMENT, Constants.IDLE_ENVIRONMENT).apply();
        this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_CONN, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_CONNECTED);
        if (this.mAttitude.needsEstimation() && Utils.checkCalibrationMinFirmwareVersion(this.mAccessory)) {
            this.notificationManager.notify(16, buildAttitudeNotification());
        }
        this.mCAReWorkerManager.scheduleVehicleSync();
        observeForRemoteConfigurationUpdateStatus();
    }

    private void observeForRemoteConfigurationUpdateStatus() {
        this.mConfDisposable = this.mCareConfigurationHelper.observeConfigurationInfos().timeout(60L, TimeUnit.SECONDS).lastElement().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda30
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m367xd947deb9((UpdateConfigurationHelper.CareConfigurationInfos) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m368xe0ad13d8((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeForRemoteConfigurationUpdateStatus$15$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m367xd947deb9(UpdateConfigurationHelper.CareConfigurationInfos careConfigurationInfos) throws Exception {
        checkForConfigurationUpdates(careConfigurationInfos.serialNumber, careConfigurationInfos.vin, careConfigurationInfos.interpreterVersion);
    }

    /* JADX INFO: renamed from: lambda$observeForRemoteConfigurationUpdateStatus$16$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m368xe0ad13d8(Throwable th) throws Exception {
        Timber.e("error observing remote config: %1$s", th.getMessage());
        checkLocalMismatch();
    }

    @Override // com.texa.careapp.app.service.RxCareService
    protected void onCareDisconnected() {
        String str;
        super.onCareDisconnected();
        Timber.d("CARe disconnected", new Object[0]);
        this.haveToNotify = false;
        Utils.safeDispose(this.mConfDisposable);
        Utils.safeDispose(this.mTripInfoDisposable);
        Utils.safeDispose(this.mUpdateLampsDisposable);
        this.mDtcManager.onCareDisconnected();
        this.mVehicleParametersManagerV2.onCareDisconnected();
        this.mLampsManager.stop(this.mVehicle);
        stopEcoDriving();
        saveLastDisconnectedDate();
        this.mLocationTracker.onTripEnded(this.mVehicleObserver.getCurrentVehicle());
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        CurrentTrip currentTrip = this.mCurrentTrip;
        TripEndInfo tripEndInfo = currentTrip.getTripEndInfo();
        TripBeginInfo tripBeginInfo = this.mCurrentTrip.getTripBeginInfo();
        TripStatisticsInfo tripStatisticsInfo = this.mCurrentTrip.getTripStatisticsInfo();
        saveCurrentTrip(currentTrip, currentVehicle);
        scheduleSyncTripTask();
        if (tripStatisticsInfo != null) {
            StringBuilder sb = new StringBuilder();
            List<CounterInfo> voltageCounters = tripStatisticsInfo.getVoltageCounters();
            if (voltageCounters != null) {
                Iterator<CounterInfo> it = voltageCounters.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().getValue());
                    sb.append(";");
                }
                Timber.d("Voltage Counters: %s", sb.toString());
            }
        }
        this.mAlternatorStaticAnalyzer.parse(tripBeginInfo, tripEndInfo, currentVehicle);
        LoggerManager loggerManager = this.mLoggerManager;
        ServerLogModel.LogEvent logEvent = ServerLogModel.LogEvent.CARE_DISCONN;
        ServerLogModel.ResultForLog resultForLog = ServerLogModel.ResultForLog.SUCCESSFULL;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ServerLogModel.LogNote.CARE_DISCONNECTED);
        if (this.mImpactDetector.isSupported()) {
            str = "";
        } else {
            str = ";" + ServerLogModel.LogNote.IMPACT_DETECTED_BY_SMARTPHONE_NOT_SUPPORTED;
        }
        sb2.append(str);
        loggerManager.log(logEvent, resultForLog, sb2.toString());
    }

    private void saveLastDisconnectedDate() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel != null) {
            dongleModel.setLastParametersUpdate(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
            try {
                save(dongleModel);
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not update dongle disconnection date.", new Object[0]);
            }
        }
    }

    protected void save(DongleModel dongleModel) throws DatabaseIOException {
        Utils.safeModelSave(dongleModel, getApplicationContext());
    }

    protected void connectToDongle() {
        CommunicationStatus status = this.communication.getStatus();
        if (CommunicationStatus.CONNECTED == status || CommunicationStatus.CONNECTING == status) {
            Timber.w(TAG, "WARN: Called connectToDongle() during illegal state. State: %1$s", status);
            return;
        }
        if (CommunicationStatus.RECONNECTING != status) {
            this.communication.setKnownDeviceHistory(new KnownDeviceHistoryImpl(this.mDongleDataManager.buildDeviceInfoList()));
        }
        try {
            this.mFlavorDelegator.connectToDongle(this.mDongleDataManager, this.communication, getApplicationContext());
        } catch (CareException e) {
            Timber.w(e, TAG, "got exception");
            this.mEventBus.post(e);
        }
    }

    protected void setupCareLib() {
        this.mTexaService.setCareProxy(this.mProfile);
        this.mProfile.setServiceProxy(this.mTexaService);
        this.mAccessory.addPropertyChangeListener(this.mAccessoryPropertyChangeListener);
        this.mAccessory.addPropertyChangeListener(this.mCareCrashlyticsHelper.get());
        this.communication.addPropertyChangeListener(this.mCommunicationChangeListener);
        this.mRxProfile.observeAuthenticationError().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda32
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m374lambda$setupCareLib$17$comtexacareappappserviceCareService((AuthenticationErrorEvent) obj);
            }
        });
        this.profileReadyDisposable = this.mRxProfile.ready().distinctUntilChanged().filter(new Predicate() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda20
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m375lambda$setupCareLib$19$comtexacareappappserviceCareService((Boolean) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda16
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((Throwable) obj).printStackTrace();
            }
        });
        this.mSosFeatureManager.registerImpactDetectionListener();
        this.mCareConfigurationHelper.checkCareNotConfigured();
    }

    /* JADX INFO: renamed from: lambda$setupCareLib$17$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m374lambda$setupCareLib$17$comtexacareappappserviceCareService(AuthenticationErrorEvent authenticationErrorEvent) throws Exception {
        this.notificationManager.notify(17, buildPINConfirmNotification());
    }

    /* JADX INFO: renamed from: lambda$setupCareLib$19$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m375lambda$setupCareLib$19$comtexacareappappserviceCareService(Boolean bool) throws Exception {
        this.mVehicleParametersManagerV2.onCareConnected();
        this.mDtcManager.onCareConnected();
    }

    private void configureDriverId() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        boolean zIsHostAuthenticated = this.mAccessory.isHostAuthenticated();
        Timber.d("isHostAuthenticated= %s ", Boolean.valueOf(zIsHostAuthenticated));
        if (userCached == null || !zIsHostAuthenticated) {
            return;
        }
        try {
            this.mDataManagerConfiguration.setDriverID(UUID.fromString(userCached.getUid()));
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    private void checkForConfigurationUpdates(final String str, String str2, BigInteger bigInteger) {
        try {
            this.mTexaService.getVehicleConfigurationInfo().loadVehicleConfigurationInfo(str, str2, bigInteger, new Callback() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda10
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m363x99726a4f(str, (VehicleConfigurationInfoLoadedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            checkLocalMismatch();
            e.printStackTrace();
            Timber.e(TAG, "Could not check diagnostic configuration status at this moment. loadVehicleConfigurationInfo returns false.");
        }
    }

    /* JADX INFO: renamed from: lambda$checkForConfigurationUpdates$21$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m363x99726a4f(String str, VehicleConfigurationInfoLoadedEvent vehicleConfigurationInfoLoadedEvent) {
        if (vehicleConfigurationInfoLoadedEvent.getError() == null) {
            VehicleConfigurationStatus vehicleConfigurationStatus = vehicleConfigurationInfoLoadedEvent.getVehicleConfigurationStatus();
            Timber.d("Configuration update state: %1$s", vehicleConfigurationStatus);
            if (VehicleConfigurationStatus.FirstConfiguration == vehicleConfigurationStatus) {
                onCareConfigurationStatusFirstConfiguration(str);
                return;
            } else if (VehicleConfigurationStatus.NeedsUpdated == vehicleConfigurationStatus) {
                onCareConfigurationStatusNeedsUpdated();
                return;
            } else {
                checkLocalMismatch();
                return;
            }
        }
        Timber.i(vehicleConfigurationInfoLoadedEvent.getError(), "%1$s, Could not check diagnostic configuration status. Error: %2$s", TAG, vehicleConfigurationInfoLoadedEvent.getError().getMessage());
        checkLocalMismatch();
    }

    private void onCareConfigurationStatusNeedsUpdated() {
        this.mUpdateConfigurationHelper.displayNeedsUpdateNotification();
    }

    private void onCareConfigurationStatusFirstConfiguration(String str) {
        Timber.i("CARE LOG STATUS --> %s", Integer.valueOf(this.mAccessory.getStatus()));
        if (this.mAccessory.getStatus() != 0) {
            removeCurrentVehicle(str);
            this.mEventBus.post(new FirstConfigurationEvent());
            this.mLoggerManager.log(ServerLogModel.LogEvent.CARE_NOT_CONF, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_FIRST_CONFIGURATION);
        }
    }

    private void checkLocalMismatch() {
        Utils.safeDispose(this.mDisposableHashMap, CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY);
        this.mDisposableHashMap.put(CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY, this.mCareConfigurationHelper.observeConfigurationInfosLocal().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda29
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m364x6df5d0aa((UpdateConfigurationHelper.CareConfigurationInfos) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e("error checking local vin mismatch", new Object[0]);
            }
        }, new Action() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda21
            @Override // io.reactivex.functions.Action
            public final void run() {
                Timber.d("check local vin mismatch completed", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$checkLocalMismatch$22$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m364x6df5d0aa(UpdateConfigurationHelper.CareConfigurationInfos careConfigurationInfos) throws Exception {
        String str = TAG;
        Timber.d(str, "vin retrieved from current dongle: %1$s", careConfigurationInfos.vin);
        Timber.d(str, "vin retrieved from dongleModel: %1$s", this.mDongleDataManager.getDongleModel().getVinCode());
        if (!currentVehicle(careConfigurationInfos.vin, careConfigurationInfos.serialNumber, this.mVehicleDataManager.getAllVehicles()) || !this.mDongleDataManager.getDongleModel().getVinCode().equals(careConfigurationInfos.vin)) {
            Timber.d(str, "local vin mismatch ");
            removeCurrentVehicle(careConfigurationInfos.serialNumber);
            this.mPreferences.edit().putString(Constants.CARE_ENVIRONMENT, Constants.VIN_MISMATCH_ENVIRONMENT).apply();
            this.mEventBus.post(Constants.VIN_MISMATCH_ENVIRONMENT);
            return;
        }
        Timber.d(str, "local vin match with previous");
        this.mPreferences.edit().putString(Constants.CARE_ENVIRONMENT, Constants.CONFIGURED_ENVIRONMENT).apply();
        startEcoDriving();
    }

    private boolean currentVehicle(String str, String str2, List<VehicleModel> list) {
        boolean z = false;
        for (VehicleModel vehicleModel : list) {
            if (!Utils.isEmpty(vehicleModel.getVin()) && vehicleModel.getVin().equals(str) && !Utils.isEmpty(vehicleModel.getHwid()) && vehicleModel.getHwid().equals(str2)) {
                vehicleModel.setCurrentVehicle(true);
                z = true;
            } else if (!Utils.isEmpty(vehicleModel.getHwid()) && vehicleModel.getHwid().equals(str2)) {
                vehicleModel.setCurrentVehicle(false);
            }
            try {
                Utils.safeModelSave(vehicleModel, getApplicationContext());
            } catch (DatabaseIOException e) {
                e.printStackTrace();
            }
        }
        return z;
    }

    private void removeCurrentVehicle(String str) {
        for (VehicleModel vehicleModel : this.mVehicleDataManager.getAllVehicles()) {
            if (str.equals(vehicleModel.getHwid())) {
                vehicleModel.setCurrentVehicle(false);
                vehicleModel.save();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        Timber.d("playServices onConnected", new Object[0]);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        GoogleApiClient googleApiClient = this.mGoogleApiClient;
        if (googleApiClient != null) {
            googleApiClient.connect();
        }
    }

    private boolean commandEquals(Intent intent, int i) {
        Bundle extras;
        return intent != null && (extras = intent.getExtras()) != null && extras.containsKey(SERVICE_COMMAND) && i == extras.getInt(SERVICE_COMMAND);
    }

    protected void saveCurrentTrip(CurrentTrip currentTrip, VehicleModel vehicleModel) {
        if (currentTrip == null) {
            Timber.d("currentTrip is null", new Object[0]);
            return;
        }
        if (currentTrip.getTripBeginInfo() == null) {
            Timber.d("tripStartInfo is null", new Object[0]);
            return;
        }
        if (currentTrip.getTripEndInfo() == null) {
            Timber.d("tripStopInfo is null", new Object[0]);
            return;
        }
        if (vehicleModel == null) {
            Timber.d("checkCurrentVehicle is null", new Object[0]);
            return;
        }
        try {
            TripModel tripDataCached = this.mTripDataManager.getTripDataCached(currentTrip.getTripEndInfo().getTripNumber().longValue());
            updateVehicleOdometer(currentTrip.getTripEndInfo());
            VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
            if (tripDataCached == null) {
                TripModel tripModelFrom = TripModel.from(currentTrip, vehicleModel.getUid());
                Utils.safeModelSave(tripModelFrom, getApplicationContext());
                saveBatteryVoltageParameter(currentVehicle, tripModelFrom);
            } else {
                TripModel tripModelFrom2 = TripModel.from(currentTrip, vehicleModel.getUid());
                tripDataCached.updateData(tripModelFrom2);
                Utils.safeModelSave(tripDataCached, getApplicationContext());
                saveBatteryVoltageParameter(currentVehicle, tripModelFrom2);
            }
        } catch (DatabaseIOException e) {
            Timber.w(e, "saveCurrentTrip: DBError", new Object[0]);
        } catch (IllegalStateException e2) {
            Timber.w(e2, "saveCurrentTrip: DataError", new Object[0]);
        }
    }

    protected void saveBatteryVoltageParameter(VehicleModel vehicleModel, TripModel tripModel) throws DatabaseIOException {
        if (tripModel.getBatteryState().off > 0.0d) {
            VehicleParam orAddParameter = vehicleModel.getOrAddParameter(ParameterBatteryVoltage.BATTERY_VOLTAGE_LEVEL);
            orAddParameter.setValueNumeric(Double.valueOf(tripModel.getBatteryState().off));
            orAddParameter.setSyncNeeded(true);
            orAddParameter.setValueDataType(ValueDataType.NUMERIC);
            Utils.safeModelSave(orAddParameter, getApplicationContext());
            List<VehicleParamHistoryModel> historyParam = orAddParameter.getHistoryParam();
            if (!historyParam.isEmpty() && historyParam.size() >= 500) {
                historyParam.get(0).delete();
            }
            VehicleParamHistoryModel vehicleParamHistoryModel = new VehicleParamHistoryModel();
            vehicleParamHistoryModel.setOdoValue(vehicleModel.getOdometer().doubleValue());
            vehicleParamHistoryModel.setValue(orAddParameter.getValueNumeric().doubleValue());
            vehicleParamHistoryModel.setDate(tripModel.getTripEnd().time);
            vehicleParamHistoryModel.setTrip(tripModel.getTripNumber());
            vehicleParamHistoryModel.setVehicleParam(orAddParameter);
            Utils.safeModelSave(vehicleParamHistoryModel, getApplicationContext());
        }
    }

    protected void updateVehicleOdometer(TripEndInfo tripEndInfo) {
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        if (tripEndInfo == null) {
            Timber.w("TripStopInfo == null in #updateVehicleOdometer()", new Object[0]);
            return;
        }
        if (currentVehicle == null) {
            Timber.w("VehicleModel == null in #updateVehicleOdometer()", new Object[0]);
            return;
        }
        final float fIntValue = currentVehicle.getOdometer().intValue();
        Float odometer = tripEndInfo.getOdometer();
        if (odometer != null && odometer.floatValue() > 0.0f) {
            float fFloatValue = odometer.floatValue();
            Timber.d("DataManagerConfigurationP odometer current value= %s, new value= %s", Float.valueOf(fIntValue), Float.valueOf(fFloatValue));
            if (Utils.isOdometerEstimated(tripEndInfo)) {
                if (validateOdometerValue(Float.valueOf(fIntValue), Float.valueOf(fFloatValue), this.haveToNotify)) {
                    if (fFloatValue < fIntValue) {
                        Observable.just(1).subscribeOn(Schedulers.io()).onErrorReturn(new Function() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda18
                            @Override // io.reactivex.functions.Function
                            public final Object apply(Object obj) {
                                return CareService.lambda$updateVehicleOdometer$25((Throwable) obj);
                            }
                        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda9
                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) throws Exception {
                                this.f$0.m376x1463752d(fIntValue, (Integer) obj);
                            }
                        }, new Consumer() { // from class: com.texa.careapp.app.service.CareService$$ExternalSyntheticLambda17
                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) {
                                ((Throwable) obj).printStackTrace();
                            }
                        });
                        return;
                    }
                    Timber.d("updating vehicle odometer with new value: %s", Float.valueOf(fFloatValue));
                    currentVehicle.setOdometer(Integer.valueOf(Math.round(fFloatValue)));
                    saveVehicle(currentVehicle);
                    return;
                }
                this.haveToNotify = false;
                this.mLoggerManager.log(ServerLogModel.LogEvent.INVALID_ODOMETER, ServerLogModel.ResultForLog.FAILED, "old odometer: " + fIntValue + " - actual odometer: " + fFloatValue);
                return;
            }
            currentVehicle.setOdometer(Integer.valueOf(Math.round(fFloatValue)));
            saveVehicle(currentVehicle);
            return;
        }
        Timber.w("(odometerTrip == null || odometerTrip == 0 )in #updateVehicleOdometer()", new Object[0]);
    }

    static /* synthetic */ Integer lambda$updateVehicleOdometer$25(Throwable th) throws Exception {
        Timber.e(th, " error on setStartingOdometer Observer", new Object[0]);
        return 1;
    }

    /* JADX INFO: renamed from: lambda$updateVehicleOdometer$26$com-texa-careapp-app-service-CareService, reason: not valid java name */
    public /* synthetic */ void m376x1463752d(float f, Integer num) throws Exception {
        this.mDataManagerConfiguration.setStartingOdometer(f);
    }

    protected boolean validateOdometerValue(Float f, Float f2, boolean z) {
        if (f2 == null) {
            Timber.d("New odometer is null! It must be ignored.", new Object[0]);
            return false;
        }
        if (f == null) {
            Timber.d("Old odometer is null! It must be ignored.", new Object[0]);
            return false;
        }
        if (f2.floatValue() < 1.0f) {
            Timber.d("CARe has sent an invalid odometer value: %f. It must be ignored.", f2);
            return false;
        }
        if (f2.floatValue() <= f.floatValue() + 500.0f && f2.floatValue() >= f.floatValue() - 500.0f) {
            return true;
        }
        if (z) {
            this.notificationManager.notify(10, buildOdometerConfirmNotification());
        }
        Timber.d("CARe has sent an invalid odometer value: %f. It must be ignored.", f2);
        return false;
    }

    protected void saveVehicle(VehicleModel vehicleModel) {
        try {
            Utils.safeModelSave(vehicleModel, getApplicationContext());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save vehicle model to database.", new Object[0]);
        }
    }

    protected Notification buildPINConfirmNotification() {
        Context applicationContext = getApplicationContext();
        Intent intentBuildIntentForPinRequest = MainActivity.buildIntentForPinRequest(applicationContext);
        intentBuildIntentForPinRequest.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, true);
        Notification notificationBuild = Utils.getDefaultNotificationBuilder(applicationContext).setContentText(applicationContext.getResources().getString(R.string.configuration_needs_update_notification_content)).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(applicationContext, Constants.PENDING_INTENT_REQUEST_CODE_PIN_CONFIRM, intentBuildIntentForPinRequest, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).build();
        notificationBuild.flags = 48;
        return notificationBuild;
    }

    protected Notification buildRefreshTokenNotification() {
        Context applicationContext = getApplicationContext();
        Notification notificationBuild = Utils.getDefaultNotificationBuilder(applicationContext).setContentText(applicationContext.getResources().getString(R.string.configuration_needs_update_notification_content)).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(applicationContext, Constants.PENDING_INTENT_REQUEST_CODE_LOGIN_AFTER_REFRESH_TOKEN_EXPIRED, new Intent(applicationContext, (Class<?>) LoginActivity.class), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).build();
        notificationBuild.flags = 48;
        return notificationBuild;
    }

    protected Notification buildOdometerConfirmNotification() {
        Context applicationContext = getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) VehicleDataConfirmationActivity.class);
        intent.putExtra(Constants.INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL, true);
        return Utils.getDefaultNotificationBuilder(applicationContext).setContentText(getString(R.string.notification_odometer_confirm)).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(applicationContext, Constants.PENDING_INTENT_REQUEST_CODE_ODOMETER_CONFIRM, intent, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).build();
    }

    protected Notification buildAttitudeNotification() {
        Context applicationContext = getApplicationContext();
        return Utils.getDefaultNotificationBuilder(applicationContext).setContentText(getString(R.string.login_error)).setAutoCancel(true).setContentIntent(PendingIntent.getActivity(applicationContext, Constants.PENDING_INTENT_REQUEST_CODE_ATTITUDE, CalibrationActivity.buildIntent(applicationContext, true, false), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728)).build();
    }

    protected void scheduleSyncTripTask() {
        this.mCAReWorkerManager.scheduleTripSync();
    }

    protected void scheduleSyncServiceDataTask() {
        this.mCAReWorkerManager.schedulePeriodicTask();
    }

    private boolean isConnectedAndAuthenticated() {
        return this.mCommunication.getStatus() == CommunicationStatus.CONNECTED && isHostAuthenticated();
    }

    private boolean isHostAuthenticated() {
        return this.mAccessory.isHostAuthenticated();
    }

    @Override // com.texa.care.eco_driving.EcoDrivingCallback
    public void drivingEventCall(DrivingEvent drivingEvent, boolean z) {
        TripEventModel tripEventModel;
        if (drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_START.getNumericType() && !z) {
            TripObjectModel.checkIfHaveToCloseOtherTrips(drivingEvent.getRideId());
        }
        if (drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_STOP.getNumericType() || drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_STOP_TEMP.getNumericType()) {
            this.lastStopTimestamp = drivingEvent.getTime().getTime();
        }
        if (this.lastStopTimestamp == -1 || System.currentTimeMillis() - this.lastStopTimestamp > 45000 || drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_STOP.getNumericType() || drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_STOP_TEMP.getNumericType() || drivingEvent.getType().getNumericType() == DrivingEventType.DRIVING_START.getNumericType()) {
            if (drivingEvent.getType().getNumericType() != DrivingEventType.DRIVING_STOP.getNumericType() && drivingEvent.getType().getNumericType() != DrivingEventType.DRIVING_STOP_TEMP.getNumericType()) {
                this.lastStopTimestamp = -1L;
            }
            this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.UNDEFINED, drivingEvent.getJson());
            if (Utils.checkEcoDrivingMinFirmwareVersion(this.mCareObserver, this.mDongleDataManager.getDongleModel())) {
                if (z && (tripEventModel = (TripEventModel) new Select().from(TripEventModel.class).where("UUID = ? ", drivingEvent.getUuid()).executeSingle()) != null) {
                    TripEventModel.setUpdatableDataFromEvent(drivingEvent, tripEventModel);
                    if (tripEventModel.isSyncNeeded()) {
                        try {
                            Utils.safeModelSave(tripEventModel, getApplicationContext());
                            MainEcoDrivingBus.getInstance().post(new UpdateEcoDrivingDataEvent(drivingEvent.getType().getNumericType()));
                            return;
                        } catch (DatabaseIOException e) {
                            Timber.e(e, "TripEventModel not saved", new Object[0]);
                            e.printStackTrace();
                            return;
                        }
                    }
                    return;
                }
                if (drivingEvent.getHardwareId() != null) {
                    VehicleModel vehicleByHwId = this.mVehicleDataManager.getVehicleByHwId(Utils.isEmpty(drivingEvent.getHardwareId()) ? this.mDongleDataManager.getDongleModel().getHwid() : drivingEvent.getHardwareId());
                    if (vehicleByHwId != null) {
                        TripObjectModel tripObjectModelFrom = TripObjectModel.from(drivingEvent, vehicleByHwId.getUid(), this.mUserDataManager.getUserCached() != null ? this.mUserDataManager.getUserCached().getUid() : null);
                        if (tripObjectModelFrom != null) {
                            tripObjectModelFrom.setVehicleId(vehicleByHwId.getUid());
                            tripObjectModelFrom.setDriverId(this.mUserDataManager.getUserCached() != null ? this.mUserDataManager.getUserCached().getUid() : null);
                            tripObjectModelFrom.setUser(this.mUserDataManager.getUserCached());
                            if (drivingEvent.getTripNumber() != null) {
                                tripObjectModelFrom.setHwId(drivingEvent.getHardwareId());
                            }
                            TripEventModel tripEventModelFrom = TripEventModel.from(drivingEvent, tripObjectModelFrom);
                            tripEventModelFrom.setDataVersion("1.0");
                            try {
                                Utils.safeModelSave(tripObjectModelFrom, getApplicationContext());
                                saveCurrentTripPrefs(tripObjectModelFrom.getUuid());
                                Utils.safeModelSave(tripEventModelFrom, getApplicationContext());
                                MainEcoDrivingBus.getInstance().post(new UpdateEcoDrivingDataEvent(drivingEvent.getType().getNumericType()));
                            } catch (DatabaseIOException e2) {
                                Timber.e(e2, "TripEventModel not saved", new Object[0]);
                                e2.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.texa.care.eco_driving.EcoDrivingCallback
    public void scoreUpdateCall(ScoreUpdateEvent scoreUpdateEvent) {
        if (Utils.checkCurrentEcoDrivingMinFirmwareVersion(this.mAccessory)) {
            String hardwareId = scoreUpdateEvent.getHardwareId();
            if (Utils.isEmpty(scoreUpdateEvent.getHardwareId())) {
                hardwareId = this.mDongleDataManager.getDongleModel().getHwid();
            }
            VehicleModel vehicleByHwId = this.mVehicleDataManager.getVehicleByHwId(hardwareId);
            if (vehicleByHwId != null) {
                TripObjectModel tripObjectModelFrom = TripObjectModel.from(new DrivingEvent(scoreUpdateEvent.getBaseScore()) { // from class: com.texa.careapp.app.service.CareService.2
                    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
                    public DrivingEventType getType() {
                        return DrivingEventType.UNDEFINED;
                    }
                }, vehicleByHwId.getUid(), this.mUserDataManager.getUserCached() != null ? this.mUserDataManager.getUserCached().getUid() : null);
                if (tripObjectModelFrom != null) {
                    tripObjectModelFrom.setVehicleId(vehicleByHwId.getUid());
                    tripObjectModelFrom.setDriverId(this.mUserDataManager.getUserCached() != null ? this.mUserDataManager.getUserCached().getUid() : null);
                    tripObjectModelFrom.setUser(this.mUserDataManager.getUserCached());
                    if (scoreUpdateEvent.getTripNumber() != null) {
                        tripObjectModelFrom.setHwId(hardwareId);
                    }
                    TripObjectLastScore tripObjectLastScoreFrom = TripObjectLastScore.from(scoreUpdateEvent, tripObjectModelFrom);
                    TripScoreUpdateModel tripScoreUpdateModelFrom = TripScoreUpdateModel.from(scoreUpdateEvent, tripObjectModelFrom);
                    tripScoreUpdateModelFrom.setDataVersion("1.0");
                    try {
                        Utils.safeModelSave(tripObjectModelFrom, getApplicationContext());
                        saveCurrentTripPrefs(tripObjectModelFrom.getUuid());
                        Utils.safeModelSave(tripObjectLastScoreFrom, getApplicationContext());
                        Utils.safeModelSave(tripScoreUpdateModelFrom, getApplicationContext());
                        if (tripScoreUpdateModelFrom.getTypeId().intValue() != ScoreType.OVERALL.getNumericType() || tripScoreUpdateModelFrom.getPreviousScore().intValue() >= tripScoreUpdateModelFrom.getScore().intValue()) {
                            return;
                        }
                        MainEcoDrivingBus.getInstance().post(new UpdateEcoDrivingDataEvent());
                    } catch (DatabaseIOException e) {
                        Timber.e(e, "TripScoreUpdateModel not saved", new Object[0]);
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    protected void saveCurrentTripPrefs(String str) {
        SharedPreferences.Editor editorEdit = this.mPreferences.edit();
        editorEdit.putString(Constants.PREFS_KEY_CURRENT_TRIP, str);
        editorEdit.apply();
    }
}
