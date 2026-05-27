package com.texa.careapp.utils;

import android.content.SharedPreferences;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.care.vehicletroubles.VehicleTroublesListener;
import com.texa.carelib.care.vehicletroubles.events.DTCReadCompletedEvent;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DtcManager {
    static final int DTC_SCAN_STATUS_IDLE = 1;
    static final int DTC_SCAN_STATUS_NOT_INITIALISED = 0;
    static final int DTC_SCAN_STATUS_RUNNING = 2;
    private Accessory accessory;
    private DTCResolutionIntegrator dtcResolutionIntegrator;
    private FeatureVerifier featureVerifier;

    @Inject
    CAReWorkerManager mCAReWorkerManager;
    private final ICareObserver mCareObserver;

    @Inject
    protected LoggerManager mLoggerManager;
    private Disposable mSerialNumberDisposable;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private Profile profile;
    private VehicleObserver vehicleObserver;
    private VehicleTroubles vehicleTroubles;
    private final PropertyChangeListener mAccessoryListener = new PropertyChangeListener() { // from class: com.texa.careapp.utils.DtcManager$$ExternalSyntheticLambda2
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m638lambda$new$1$comtexacareapputilsDtcManager(propertyChangeEvent);
        }
    };
    private int mDTCScanStatus = 0;

    @Retention(RetentionPolicy.SOURCE)
    @interface DTCScanStatus {
    }

    public DtcManager(ICareObserver iCareObserver, CareApplication careApplication, Profile profile, Accessory accessory, FeatureVerifier featureVerifier, VehicleTroubles vehicleTroubles, DTCResolutionIntegrator dTCResolutionIntegrator, VehicleObserver vehicleObserver) {
        this.mCareObserver = iCareObserver;
        this.profile = profile;
        this.accessory = accessory;
        this.featureVerifier = featureVerifier;
        this.vehicleTroubles = vehicleTroubles;
        this.dtcResolutionIntegrator = dTCResolutionIntegrator;
        this.vehicleObserver = vehicleObserver;
        careApplication.component().inject(this);
    }

    public void onCareConnected() {
        initializeDTCResolutionIntegrator();
    }

    public void onCareDisconnected() {
        Utils.safeDispose(this.mSerialNumberDisposable);
        setDTCScanStatus(0);
        unregisterAccessoryListeners();
    }

    public void onActiveLampDetected() {
        executeDtcScanIfPossible();
    }

    void initializeDTCResolutionIntegrator() {
        setDTCScanStatus(0);
        Observable<String> observableObserveAccessorySerialNumber = this.mCareObserver.observeAccessorySerialNumber();
        Utils.safeDispose(this.mSerialNumberDisposable);
        this.mSerialNumberDisposable = observableObserveAccessorySerialNumber.subscribe(new Consumer() { // from class: com.texa.careapp.utils.DtcManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                this.f$0.initializeDTCResolutionIntegrator((String) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.utils.DtcManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error initializing dtc resolution integrator", new Object[0]);
            }
        });
    }

    Disposable getSerialNumberSubscription() {
        return this.mSerialNumberDisposable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeDTCResolutionIntegrator(String str) {
        Timber.v("Initialising DTCResolutionIntegrator for CARe: %s", str);
        this.dtcResolutionIntegrator.setHardwareID(str);
        onDTCResolutionIntegratorInitialized();
    }

    void onDTCResolutionIntegratorInitialized() {
        setDTCScanStatus(1);
        if (validatePreconditions()) {
            LoggerManager loggerManager = this.mLoggerManager;
            if (loggerManager != null) {
                loggerManager.log(ServerLogModel.LogEvent.DTCS_DETECTED, ServerLogModel.ResultForLog.SUCCESSFULL, "Waiting for DTCs");
            }
            executeDtcScanIfPossible();
            return;
        }
        registerAccessoryListeners();
    }

    private void executeDtcScanIfPossible() {
        if (validatePreconditions()) {
            unregisterAccessoryListeners();
            if (1 == this.mDTCScanStatus) {
                executeDtcScan();
            }
        }
    }

    void executeDtcScan() {
        int i = this.mDTCScanStatus;
        if (i == 0) {
            throw new IllegalStateException("Could not perform DTC scan status. Object is not yet initialised.");
        }
        if (1 == i) {
            try {
                this.vehicleTroubles.addVehicleTroublesListener(new VehicleTroublesListener() { // from class: com.texa.careapp.utils.DtcManager.1
                    @Override // com.texa.carelib.care.vehicletroubles.VehicleTroublesListener
                    public void onDTCReadCompleted(DTCReadCompletedEvent dTCReadCompletedEvent) {
                        CareError error = dTCReadCompletedEvent.getError();
                        if (error != null) {
                            DtcManager.this.onDTCTReadError(error);
                        } else {
                            DtcManager.this.onDTCTReadSuccess((VehicleTroubles) dTCReadCompletedEvent.getSource());
                        }
                        DtcManager.this.vehicleTroubles.removeVehicleTroublesListener(this);
                    }
                });
                this.vehicleTroubles.loadDTCs();
                setDTCScanStatus(2);
                Timber.d("DTC SCAN: STARTED.", new Object[0]);
            } catch (CareLibException e) {
                e.printStackTrace();
                Timber.e("DTC SCAN: START ERROR.", new Object[0]);
            }
        }
    }

    DtcManager setDTCScanStatus(int i) {
        this.mDTCScanStatus = i;
        return this;
    }

    private void registerAccessoryListeners() {
        this.accessory.addPropertyChangeListener(Accessory.PROPERTY_IS_AUTHENTICATED, this.mAccessoryListener);
        this.accessory.addPropertyChangeListener(Accessory.PROPERTY_STATUS, this.mAccessoryListener);
    }

    void unregisterAccessoryListeners() {
        this.accessory.removePropertyChangeListener(Accessory.PROPERTY_IS_AUTHENTICATED, this.mAccessoryListener);
        this.accessory.removePropertyChangeListener(Accessory.PROPERTY_STATUS, this.mAccessoryListener);
    }

    boolean validatePreconditions() {
        boolean zIsDTCReadingAvailable = this.featureVerifier.isDTCReadingAvailable();
        Timber.d("isDTCReadingAvailable= %s", Boolean.valueOf(zIsDTCReadingAvailable));
        return zIsDTCReadingAvailable;
    }

    PropertyChangeListener getAccessoryListener() {
        return this.mAccessoryListener;
    }

    void onDTCTReadError(CareError careError) {
        Timber.d("DTC SCAN: FAILED(%s)", careError.toString());
        setDTCScanStatus(1);
    }

    void onDTCTReadSuccess(VehicleTroubles vehicleTroubles) {
        VehicleModel currentVehicle;
        try {
            try {
                currentVehicle = this.vehicleObserver.getCurrentVehicle();
            } catch (Exception e) {
                Timber.e(e, "Could not update DTCs in database", new Object[0]);
            }
            if (currentVehicle == null) {
                Timber.w("VehicleModel is null, DTCs won't be notified.", new Object[0]);
                return;
            }
            List<DTC> dTCs = vehicleTroubles.getDTCs();
            StringBuilder sb = new StringBuilder();
            for (DTC dtc : dTCs) {
                if (dtc.getCode() != null) {
                    sb.append(dtc.getCode().concat(", "));
                }
            }
            this.mLoggerManager.log(ServerLogModel.LogEvent.DTCS_DETECTED, ServerLogModel.ResultForLog.SUCCESSFULL, sb.toString());
            if (!this.mSharedPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.VIN_MISMATCH_ENVIRONMENT)) {
                currentVehicle.updateDtcList(dTCs);
            }
        } finally {
            setDTCScanStatus(1);
            scheduleDTCSyncTask();
        }
    }

    void scheduleDTCSyncTask() {
        this.mCAReWorkerManager.scheduleDTCJob();
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-utils-DtcManager, reason: not valid java name */
    public /* synthetic */ void m638lambda$new$1$comtexacareapputilsDtcManager(PropertyChangeEvent propertyChangeEvent) {
        executeDtcScanIfPossible();
    }
}
