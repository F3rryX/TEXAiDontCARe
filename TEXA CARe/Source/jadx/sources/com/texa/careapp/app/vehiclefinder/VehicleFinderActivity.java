package com.texa.careapp.app.vehiclefinder;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.format.DateUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.DataBindingUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.maps.android.SphericalUtil;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.base.GooglePlayServicesActivity;
import com.texa.careapp.databinding.ActivityVehicleFinderBinding;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.LocationTracker;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.careapp.utils.permission.Func;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.SingleSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleFinderActivity extends GooglePlayServicesActivity implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, SensorEventListener, OnMapReadyCallback {
    private static final String TAG = "VehicleFinderActivity";
    private String address;
    private String addressCity;

    @Inject
    Communication communication;
    private Sensor mAccelerometer;
    private Toolbar mActionBarToolbar;
    private TextView mAddress;
    private TextView mAddressCity;
    private ImageView mCompass;
    private LinearLayout mDistanceContainer;
    private TextView mDistanceRoadText;
    private TextView mDistanceText;
    public LocationManager mLocationManager;

    @Inject
    LocationTracker mLocationTracker;
    private Sensor mMagnetometer;
    private GoogleMap mMap;
    private RelativeLayout mNavigatorButton;
    private CorePermission.PermissionRequestObject mPermissionRequest;
    private SensorManager mSensorManager;
    private LinearLayout mTimeAgoContainer;
    private TextView mTimeAgoText;
    private AppCompatTextView mUnit;
    private TextView mUnitRoad;

    @Inject
    VehicleObserver mVehicleObserver;
    private TextView mWhyText;
    private Disposable sensorSubjectDisposable;
    private HashMap<String, Double> mLocation = null;
    private HashMap<String, Double> locCar = null;
    private MarkerOptions mMarker = null;
    private boolean firstLocation = true;
    private AsyncTask mGeoCoderAsyncTask = null;
    private AsyncTask mDistanceAsyncTask = null;
    private float[] mLastAccelerometer = new float[3];
    private float[] mLastMagnetometer = new float[3];
    private boolean mLastAccelerometerSet = false;
    private boolean mLastMagnetometerSet = false;
    private float[] mR = new float[9];
    private float[] mOrientation = new float[3];
    private float mCurrentDegree = 0.0f;
    private Subject<SensorEvent> mSensorEventSubject = PublishSubject.create();
    private GoogleMap.OnMyLocationChangeListener myLocationChangeListener = new GoogleMap.OnMyLocationChangeListener() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda7
        @Override // com.google.android.gms.maps.GoogleMap.OnMyLocationChangeListener
        public final void onMyLocationChange(Location location) {
            this.f$0.m513xf9fa974b(location);
        }
    };
    private GoogleMap.OnMyLocationChangeListener myLocationChangeListenerDisconnected = new GoogleMap.OnMyLocationChangeListener() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda8
        @Override // com.google.android.gms.maps.GoogleMap.OnMyLocationChangeListener
        public final void onMyLocationChange(Location location) {
            this.f$0.m514x86e7ae6a(location);
        }
    };
    private PropertyChangeListener mCommunicationChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda1
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m515x13d4c589(propertyChangeEvent);
        }
    };
    private Single<Boolean> locationObservable = Single.defer(new Callable() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda4
        @Override // java.util.concurrent.Callable
        public final Object call() {
            return this.f$0.m517x2daef3c7();
        }
    });

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m513xf9fa974b(Location location) {
        Timber.d("Location changed", new Object[0]);
        animateCamera(new LatLng(location.getLatitude(), location.getLongitude()));
        HashMap<String, Double> map = new HashMap<>();
        map.put(Constants.LATITUDE_POSITION, Double.valueOf(location.getLatitude()));
        map.put(Constants.LONGITUDE_POSITION, Double.valueOf(location.getLongitude()));
        this.mLocation = map;
        setLocationText(map);
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m514x86e7ae6a(Location location) {
        Timber.d("Location changed - disconnected", new Object[0]);
        LatLng latLng = new LatLng(location.getLatitude(), location.getLongitude());
        if (this.locCar != null) {
            HashMap<String, Double> map = new HashMap<>();
            map.put(Constants.LATITUDE_POSITION, Double.valueOf(location.getLatitude()));
            map.put(Constants.LONGITUDE_POSITION, Double.valueOf(location.getLongitude()));
            if (this.mLocation != map) {
                this.mLocation = map;
                setDistanceBetween(map, this.locCar);
                return;
            }
            return;
        }
        animateCamera(latLng);
    }

    /* JADX INFO: renamed from: lambda$new$2$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m515x13d4c589(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
            int i = AnonymousClass4.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communication.getStatus().ordinal()];
            if (i == 1 || i == 2) {
                Timber.d("CARE DISCONNECT NOW ON %s", TAG);
                runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.locateDisconnected();
                    }
                });
            } else {
                if (i != 3) {
                    return;
                }
                Timber.d("CARE DONGLE CONNECT NOW ON %s", TAG);
                runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.locateConnected();
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: renamed from: lambda$new$4$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ SingleSource m517x2daef3c7() throws Exception {
        return Single.create(new SingleOnSubscribe() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda9
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f$0.m516xa0c1dca8(singleEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$3$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m516xa0c1dca8(SingleEmitter singleEmitter) throws Exception {
        try {
            List<Address> fromLocation = new Geocoder(getBaseContext(), Locale.getDefault()).getFromLocation(this.mLocation.get(Constants.LATITUDE_POSITION).doubleValue(), this.mLocation.get(Constants.LONGITUDE_POSITION).doubleValue(), 1);
            if (fromLocation.size() > 0) {
                if (fromLocation.get(0).getThoroughfare() != null) {
                    this.address = Utils.checkDoubleAddress(fromLocation);
                    this.addressCity = fromLocation.get(0).getPostalCode() + " " + fromLocation.get(0).getLocality();
                } else {
                    this.address = getResources().getString(R.string.near) + " " + fromLocation.get(0).getFeatureName();
                    this.addressCity = fromLocation.get(0).getLocality();
                }
            }
            singleEmitter.onSuccess(true);
        } catch (IOException e) {
            Timber.e(e, "got exception", new Object[0]);
        }
        singleEmitter.onSuccess(false);
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) VehicleFinderActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    public void animateCamera(LatLng latLng) {
        try {
            if (this.firstLocation) {
                this.mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng, 16.0f), new GoogleMap.CancelableCallback() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity.1
                    @Override // com.google.android.gms.maps.GoogleMap.CancelableCallback
                    public void onCancel() {
                    }

                    @Override // com.google.android.gms.maps.GoogleMap.CancelableCallback
                    public void onFinish() {
                        VehicleFinderActivity.this.firstLocation = false;
                    }
                });
            } else {
                this.mMap.animateCamera(CameraUpdateFactory.newLatLng(latLng));
            }
        } catch (NullPointerException unused) {
            Timber.d("Map is null", new Object[0]);
        }
    }

    @Override // com.texa.careapp.base.GooglePlayServicesActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityVehicleFinderBinding activityVehicleFinderBinding = (ActivityVehicleFinderBinding) DataBindingUtil.setContentView(this, R.layout.activity_vehicle_finder);
        this.mAddress = activityVehicleFinderBinding.address;
        this.mAddressCity = activityVehicleFinderBinding.addressCity;
        this.mDistanceText = activityVehicleFinderBinding.distance;
        this.mUnit = activityVehicleFinderBinding.unit;
        this.mDistanceRoadText = activityVehicleFinderBinding.distanceRoad;
        this.mUnitRoad = activityVehicleFinderBinding.unitRoad;
        this.mTimeAgoText = activityVehicleFinderBinding.timeago;
        this.mCompass = activityVehicleFinderBinding.compass;
        RelativeLayout relativeLayout = activityVehicleFinderBinding.navigatorButton;
        this.mNavigatorButton = relativeLayout;
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.clickGoToNavigator(view);
            }
        });
        this.mDistanceContainer = activityVehicleFinderBinding.distanceContainer;
        this.mTimeAgoContainer = activityVehicleFinderBinding.timeagoContainer;
        TextView textView = activityVehicleFinderBinding.whyText;
        this.mWhyText = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m519x32a5e511(view);
            }
        });
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OPENED_FIND_VEHICLE_SCREEN.getTag(), null);
        ((CareApplication) getApplication()).component().inject(this);
        initActionBar();
        this.mLocationManager = (LocationManager) getSystemService(FirebaseAnalytics.Param.LOCATION);
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mAccelerometer = sensorManager.getDefaultSensor(1);
        this.mMagnetometer = this.mSensorManager.getDefaultSensor(2);
        ((SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map)).getMapAsync(this);
    }

    /* JADX INFO: renamed from: lambda$onCreate$5$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m519x32a5e511(View view) {
        clickWhy();
    }

    private void clickWhy() {
        Timber.d("Click why text -> show dialog", new Object[0]);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getResources().getString(R.string.no_position));
        builder.setMessage(getResources().getString(R.string.no_position_dialog_message));
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    public void onMapReady(GoogleMap googleMap) {
        this.mMap = googleMap;
        if (Utils.isPermissionEnabled(this, CorePermission.USE_ACCESS_LOCATION)) {
            this.mMap.setMyLocationEnabled(true);
            if (Utils.isCareConnected(this.communication)) {
                locateConnected();
                return;
            } else {
                locateDisconnected();
                return;
            }
        }
        requestPermission();
    }

    private void requestPermission() {
        this.mPermissionRequest = CorePermission.with((AppCompatActivity) this).request(CorePermission.USE_ACCESS_LOCATION).onAllGranted(new Func() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity.3
            @Override // com.texa.careapp.utils.permission.Func
            protected void call() {
                Timber.d("Permission enabled", new Object[0]);
                ((SupportMapFragment) VehicleFinderActivity.this.getSupportFragmentManager().findFragmentById(R.id.map)).getMapAsync(VehicleFinderActivity.this);
            }
        }).onAnyDenied(new Func() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity.2
            @Override // com.texa.careapp.utils.permission.Func
            protected void call() {
                Timber.d("Permission not enabled", new Object[0]);
            }
        }).ask(1);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        CorePermission.PermissionRequestObject permissionRequestObject = this.mPermissionRequest;
        if (permissionRequestObject != null) {
            permissionRequestObject.onRequestPermissionsResult(i, strArr, iArr);
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mMap != null) {
            if (Utils.isCareConnected(this.communication)) {
                locateConnected();
            } else {
                locateDisconnected();
            }
        }
        this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
        this.mSensorManager.registerListener(this, this.mMagnetometer, 1);
        this.communication.addPropertyChangeListener(this.mCommunicationChangeListener);
        observeSensorChange();
    }

    private void observeSensorChange() {
        this.sensorSubjectDisposable = this.mSensorEventSubject.throttleFirst(200L, TimeUnit.MILLISECONDS).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m518xab5e0dbe((SensorEvent) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((Throwable) obj).printStackTrace();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeSensorChange$7$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m518xab5e0dbe(SensorEvent sensorEvent) throws Exception {
        if (sensorEvent.sensor == this.mAccelerometer) {
            System.arraycopy(sensorEvent.values, 0, this.mLastAccelerometer, 0, sensorEvent.values.length);
            this.mLastAccelerometerSet = true;
        } else if (sensorEvent.sensor == this.mMagnetometer) {
            System.arraycopy(sensorEvent.values, 0, this.mLastMagnetometer, 0, sensorEvent.values.length);
            this.mLastMagnetometerSet = true;
        }
        if (this.mLastAccelerometerSet && this.mLastMagnetometerSet) {
            SensorManager.getRotationMatrix(this.mR, null, this.mLastAccelerometer, this.mLastMagnetometer);
            SensorManager.getOrientation(this.mR, this.mOrientation);
            float degrees = ((float) (Math.toDegrees(this.mOrientation[0]) + 360.0d)) % 360.0f;
            HashMap<String, Double> locationCar = getLocationCar();
            float f = -((float) (((double) degrees) - bearing(this.mLocation.get(Constants.LATITUDE_POSITION).doubleValue(), this.mLocation.get(Constants.LONGITUDE_POSITION).doubleValue(), locationCar.get(Constants.LATITUDE_POSITION).doubleValue(), locationCar.get(Constants.LONGITUDE_POSITION).doubleValue())));
            RotateAnimation rotateAnimation = new RotateAnimation(this.mCurrentDegree, f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setDuration(250L);
            rotateAnimation.setFillAfter(true);
            this.mCompass.startAnimation(rotateAnimation);
            this.mCurrentDegree = f;
        }
    }

    private double bearing(double d, double d2, double d3, double d4) {
        double radians = Math.toRadians(d);
        double radians2 = Math.toRadians(d3);
        double radians3 = Math.toRadians(d4 - d2);
        return (Math.toDegrees(Math.atan2(Math.sin(radians3) * Math.cos(radians2), (Math.cos(radians) * Math.sin(radians2)) - ((Math.sin(radians) * Math.cos(radians2)) * Math.cos(radians3)))) + 360.0d) % 360.0d;
    }

    public void hideTextsAndButton() {
        Timber.d("Hide button and texts", new Object[0]);
        this.mDistanceContainer.setVisibility(4);
        this.mTimeAgoContainer.setVisibility(4);
        setNavigatorButtonVisibility(false);
    }

    public void removeMarker() {
        Timber.d("Remove marker", new Object[0]);
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.clear();
        }
        this.mMarker = null;
        setNavigatorButtonVisibility(false);
    }

    public void viewTextsAndButton() {
        this.mDistanceContainer.setVisibility(0);
        this.mTimeAgoContainer.setVisibility(0);
        setNavigatorButtonVisibility(true);
    }

    public void addMarker(HashMap<String, Double> map) {
        LatLng latLng = new LatLng(map.get(Constants.LATITUDE_POSITION).doubleValue(), map.get(Constants.LONGITUDE_POSITION).doubleValue());
        Timber.d("Add marker", new Object[0]);
        if (this.mMarker == null) {
            MarkerOptions markerOptionsIcon = new MarkerOptions().position(latLng).anchor(0.5f, 0.8f).icon(BitmapDescriptorFactory.fromResource(R.drawable.car_marker));
            this.mMarker = markerOptionsIcon;
            this.mMap.addMarker(markerOptionsIcon);
            addCircle(map);
            animateCamera(latLng);
        }
        setLocationText(map);
        setNavigatorButtonVisibility(true);
    }

    private void addCircle(HashMap<String, Double> map) {
        LatLng latLng = new LatLng(map.get(Constants.LATITUDE_POSITION).doubleValue(), map.get(Constants.LONGITUDE_POSITION).doubleValue());
        CircleOptions circleOptions = new CircleOptions();
        circleOptions.center(latLng);
        circleOptions.fillColor(Utils.getColorResource(this, R.color.vehicle_finder_circle_background));
        circleOptions.strokeColor(Utils.getColorResource(this, R.color.vehicle_finder_circle_stroke));
        circleOptions.strokeWidth(1.0f);
        this.mMap.addCircle(circleOptions);
    }

    public HashMap<String, Double> getLocationCar() {
        Timber.d("Get car mLocation", new Object[0]);
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        if (selectedVehicle == null) {
            return null;
        }
        HashMap<String, Double> lastLocation = selectedVehicle.getLastLocation();
        this.locCar = lastLocation;
        return lastLocation;
    }

    public void viewNoLocation() {
        Timber.d("View no mLocation", new Object[0]);
        this.mAddress.setText(getResources().getString(R.string.no_position));
        this.mAddressCity.setText("");
        this.mWhyText.setVisibility(0);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.setOnMyLocationChangeListener(null);
            this.mMap = null;
        }
        this.communication.removePropertyChangeListener(this.mCommunicationChangeListener);
        AsyncTask asyncTask = this.mGeoCoderAsyncTask;
        if (asyncTask != null && asyncTask.getStatus().equals(AsyncTask.Status.RUNNING)) {
            this.mGeoCoderAsyncTask.cancel(true);
        }
        AsyncTask asyncTask2 = this.mDistanceAsyncTask;
        if (asyncTask2 != null && asyncTask2.getStatus().equals(AsyncTask.Status.RUNNING)) {
            this.mDistanceAsyncTask.cancel(true);
        }
        this.mSensorManager.unregisterListener(this, this.mAccelerometer);
        this.mSensorManager.unregisterListener(this, this.mMagnetometer);
        Utils.safeDispose(this.sensorSubjectDisposable);
    }

    public void setNavigatorButtonVisibility(boolean z) {
        if (z) {
            this.mNavigatorButton.setVisibility(0);
        } else {
            this.mNavigatorButton.setVisibility(8);
        }
    }

    public void initActionBar() {
        if (this.mActionBarToolbar == null) {
            Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_actionbar);
            this.mActionBarToolbar = toolbar;
            if (toolbar != null) {
                setSupportActionBar(toolbar);
                ActionBar supportActionBar = getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setDisplayShowTitleEnabled(false);
                    supportActionBar.setDisplayHomeAsUpEnabled(true);
                    supportActionBar.setDisplayShowHomeEnabled(true);
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void locateConnected() {
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.setOnMyLocationChangeListener(this.myLocationChangeListener);
        }
        hideTextsAndButton();
        removeMarker();
        if (this.mLocation == null) {
            viewNoLocation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void locateDisconnected() {
        HashMap<String, Double> locationCar = getLocationCar();
        this.locCar = locationCar;
        if (locationCar != null) {
            this.mMap.setOnMyLocationChangeListener(this.myLocationChangeListenerDisconnected);
            addMarker(this.locCar);
        } else {
            viewNoLocation();
        }
    }

    public void setDistanceText(LatLng latLng, LatLng latLng2) {
        Double dValueOf = Double.valueOf(SphericalUtil.computeDistanceBetween(latLng, latLng2));
        if (dValueOf.doubleValue() >= 1000.0d) {
            dValueOf = Double.valueOf(dValueOf.doubleValue() / 1000.0d);
            this.mUnit.setText(getResources().getString(R.string.unit_km));
        } else {
            this.mUnit.setText(getResources().getString(R.string.meters));
        }
        this.mDistanceText.setText(String.valueOf(dValueOf.intValue()));
    }

    private void setDistanceBetween(HashMap<String, Double> map, HashMap<String, Double> map2) {
        setDistanceBetween(new LatLng(map.get(Constants.LATITUDE_POSITION).doubleValue(), map.get(Constants.LONGITUDE_POSITION).doubleValue()), new LatLng(map2.get(Constants.LATITUDE_POSITION).doubleValue(), map2.get(Constants.LONGITUDE_POSITION).doubleValue()));
    }

    private void setDistanceBetween(LatLng latLng, LatLng latLng2) {
        viewTextsAndButton();
        setDistanceText(latLng, latLng2);
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        HashMap<String, Double> lastLocation = selectedVehicle != null ? selectedVehicle.getLastLocation() : null;
        long jLongValue = lastLocation != null ? lastLocation.get(Constants.TIMESTAMP_POSITION).longValue() : 0L;
        if (jLongValue != 0) {
            this.mTimeAgoText.setText(DateUtils.getRelativeTimeSpanString(jLongValue, System.currentTimeMillis(), 0L).toString());
        } else {
            this.mTimeAgoContainer.setVisibility(4);
        }
    }

    private void setLocationText(HashMap<String, Double> map) {
        this.mLocation = map;
        this.locationObservable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m520xef696afe((Boolean) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.vehiclefinder.VehicleFinderActivity$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((Throwable) obj).printStackTrace();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setLocationText$9$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity, reason: not valid java name */
    public /* synthetic */ void m520xef696afe(Boolean bool) throws Exception {
        String str = TAG;
        Object[] objArr = new Object[1];
        objArr[0] = bool.booleanValue() ? "location retrieved successfully" : "error retrieving location";
        Timber.d(str, objArr);
        if (bool.booleanValue()) {
            this.mWhyText.setVisibility(8);
            setText(this.mAddress, this.address);
            setText(this.mAddressCity, this.addressCity);
        }
    }

    private void setText(TextView textView, String str) {
        if (textView.getText().toString().equals(str)) {
            return;
        }
        textView.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickGoToNavigator(View view) {
        FirebaseAnalytics.getInstance(this).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_FIND_VEHICLE_TAPPED_LEAD_TO_MY_VEHICLE_BUTTON.getTag(), null);
        if (this.mVehicleObserver.getSelectedVehicle() == null || this.mVehicleObserver.getSelectedVehicle().getLastLocation() == null) {
            Toast.makeText(this, getResources().getString(R.string.no_position), 1).show();
            return;
        }
        HashMap<String, Double> lastLocation = this.mVehicleObserver.getSelectedVehicle().getLastLocation();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("google.navigation:q=" + lastLocation.get(Constants.LATITUDE_POSITION) + "," + lastLocation.get(Constants.LONGITUDE_POSITION) + "&mode=w"));
        intent.setPackage("com.google.android.apps.maps");
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        this.mSensorEventSubject.onNext(sensorEvent);
    }
}
