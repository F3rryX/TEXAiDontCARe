package com.texa.careapp.utils;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.google.android.gms.location.LocationRequest;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import com.texa.careapp.Constants;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.model.VehicleAdditionalDataModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripStatus;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.concurrent.TimeUnit;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class LocationTracker {
    private static final String TAG = "LocationTracker";
    private ICareObserver mCareObserver;
    private CommunicationObservable mCommunicationObservable;
    private Context mContext;
    private CurrentTrip mCurrentTrip;
    private Disposable mDisposable;
    private final Gson mGson = new Gson();
    private Location mLocation;
    private LoggerManager mLoggerManager;
    private ReactiveLocationProvider mReactiveLocationProvider;
    private VehicleParametersManagerV2 mVehicleParametersManagerV2;

    public LocationTracker(ReactiveLocationProvider reactiveLocationProvider, VehicleParametersManagerV2 vehicleParametersManagerV2, ICareObserver iCareObserver, CommunicationObservable communicationObservable, CurrentTrip currentTrip, LoggerManager loggerManager, Context context) {
        this.mReactiveLocationProvider = reactiveLocationProvider;
        this.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
        this.mCareObserver = iCareObserver;
        this.mCommunicationObservable = communicationObservable;
        this.mCurrentTrip = currentTrip;
        this.mLoggerManager = loggerManager;
        this.mContext = context;
    }

    private void startObserveTripForLocationTracker(VehicleModel vehicleModel) {
        Timber.d("subscribe observer for location tracker", new Object[0]);
    }

    Boolean unsubscribeFunction() {
        if (this.mCommunicationObservable.getCurrentStatus() == CommunicationObservable.Status.CARE_NOT_CONNECTED) {
            Timber.d("unsubscribe communication status CARE_NOT_CONNECTED", new Object[0]);
            unsubscribeTripForLocationTracker();
            return true;
        }
        if (this.mCurrentTrip.getTripStatus() != TripStatus.InProgress) {
            Timber.d("unsubscribe tripStatus != InProgress", new Object[0]);
            unsubscribeTripForLocationTracker();
            return true;
        }
        return false;
    }

    private void unsubscribeTripForLocationTracker() {
        String str;
        Utils.safeDispose(this.mDisposable);
        ServerLogModel.ResultForLog resultForLog = ServerLogModel.ResultForLog.FAILED;
        if (this.mLocation != null) {
            resultForLog = ServerLogModel.ResultForLog.SUCCESSFULL;
            str = "Longitude: " + this.mLocation.getLongitude() + "\nLatitude: " + this.mLocation.getLatitude();
        } else {
            LocationManager locationManager = (LocationManager) this.mContext.getSystemService(FirebaseAnalytics.Param.LOCATION);
            if (locationManager != null) {
                Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
                str = "Longitude: " + lastKnownLocation.getLongitude() + "\nLatitude: " + lastKnownLocation.getLatitude() + "\nNB: the location was null, these are the last known coordinates acquired";
            } else {
                str = "";
            }
        }
        this.mLoggerManager.log(ServerLogModel.LogEvent.PARKING_LOC, resultForLog, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: trackLocationAndTimeStamp, reason: merged with bridge method [inline-methods] */
    public void m640xc6f54b8(Location location, VehicleModel vehicleModel) {
        this.mLocation = null;
        if (location == null) {
            Timber.d("Vehicle location is null!!!!", new Object[0]);
            return;
        }
        Timber.d("LOCATION TRACKER Vehicle position: %s", location);
        if (vehicleModel.setAdditionalPositionData(VehicleAdditionalDataModel.LAST_LOCATION_TYPE, location.getLatitude() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + location.getLongitude() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + location.getTime())) {
            this.mLocation = location;
            Timber.d("Vehicle position saved successfully.%s", vehicleModel.getAdditionalDataByType(VehicleAdditionalDataModel.LAST_LOCATION_TYPE));
            unsubscribeTripForLocationTracker();
            return;
        }
        Timber.e("An error is occurred while saving vehicle position.", new Object[0]);
    }

    private void resetLocation(VehicleModel vehicleModel) {
        Timber.d("reset Location", new Object[0]);
        try {
            this.mLocation = null;
            vehicleModel.deleteAdditionalDataValueByType(VehicleAdditionalDataModel.LAST_LOCATION_TYPE);
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not delete last vehicle location from database.", new Object[0]);
        }
    }

    private void onLocationTrackerChangeEvent(final VehicleModel vehicleModel) {
        LocationRequest priority = LocationRequest.create().setInterval(1000L).setFastestInterval(1000L).setPriority(100);
        Timber.d("requestLocationUpdates", new Object[0]);
        Utils.safeDispose(this.mDisposable);
        this.mDisposable = this.mReactiveLocationProvider.getUpdatedLocation(priority).take(5L).timeout(60L, TimeUnit.SECONDS).subscribe(new Consumer() { // from class: com.texa.careapp.utils.LocationTracker$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m640xc6f54b8(vehicleModel, (Location) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.utils.LocationTracker$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m641x638d4597((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onLocationTrackerChangeEvent$1$com-texa-careapp-utils-LocationTracker, reason: not valid java name */
    public /* synthetic */ void m641x638d4597(Throwable th) throws Exception {
        Log.w(TAG, "exception while getting location", th);
        this.mLocation = null;
    }

    Observable<Boolean> observerSpeedAndRpm(VehicleParametersManagerV2 vehicleParametersManagerV2) {
        return Observable.combineLatest(vehicleParametersManagerV2.observeEngineRpm(), vehicleParametersManagerV2.observeVehicleSpeed(), new BiFunction() { // from class: com.texa.careapp.utils.LocationTracker$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(this.f$0.isUnderThresholdRpmAndSpeed((VehicleParam) obj, (VehicleParam) obj2));
            }
        }).distinctUntilChanged().filter(new Predicate() { // from class: com.texa.careapp.utils.LocationTracker$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return ((Boolean) obj).booleanValue();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUnderThresholdRpmAndSpeed(VehicleParam vehicleParam, VehicleParam vehicleParam2) {
        return vehicleParam2.getValueNumeric().doubleValue() <= 10.0d && vehicleParam.getValueNumeric().doubleValue() <= 200.0d;
    }

    public void onTripStarted(VehicleModel vehicleModel) {
        if (vehicleModel == null) {
            Timber.e("vehicle model is null!!!", new Object[0]);
        } else {
            resetLocation(vehicleModel);
            startObserveTripForLocationTracker(vehicleModel);
        }
    }

    public void onTripEnded(VehicleModel vehicleModel) {
        if (vehicleModel == null) {
            Timber.e("vehicle model is null!!!", new Object[0]);
        } else {
            onLocationTrackerChangeEvent(vehicleModel);
        }
    }
}
