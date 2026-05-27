package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.vehiclefinder.VehicleFinderActivity;
import com.texa.careapp.databinding.DashboardCardFindVehicleBinding;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.communication.Communication;
import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.SingleSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FindVehicleCardViewPresenter implements OnMapReadyCallback {
    public static final String TAG = "FindVehicleCardViewPresenter";
    private String address;
    private String addressCity;
    private boolean isSmallScreen;
    private TextView mAddress;
    private CardView mCard;
    private AppCompatTextView mCity;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected Context mContext;
    private ImageView mIcon;
    private HashMap<String, Double> mLocation;
    private GoogleMap mMap;
    private RelativeLayout mMapContainer;
    private Navigator mNavigator;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private int negativeColor;
    private int positiveColor;
    private HashMap<String, Double> locCar = null;
    private boolean firstLocation = true;
    private Single<Boolean> locationObservable = Single.defer(new Callable() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda6
        @Override // java.util.concurrent.Callable
        public final Object call() {
            return this.f$0.m206x6325c248();
        }
    });

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ SingleSource m206x6325c248() throws Exception {
        return Single.create(new SingleOnSubscribe() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f$0.m205xf8f63a29(singleEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m205xf8f63a29(SingleEmitter singleEmitter) throws Exception {
        try {
            List<Address> fromLocation = new Geocoder(this.mContext, Locale.getDefault()).getFromLocation(this.mLocation.get(Constants.LATITUDE_POSITION).doubleValue(), this.mLocation.get(Constants.LONGITUDE_POSITION).doubleValue(), 1);
            if (fromLocation.size() > 0) {
                if (fromLocation.get(0).getThoroughfare() != null) {
                    this.address = Utils.checkDoubleAddress(fromLocation);
                    this.addressCity = fromLocation.get(0).getLocality();
                } else {
                    this.address = this.mContext.getResources().getString(R.string.near) + " " + fromLocation.get(0).getFeatureName();
                    this.addressCity = fromLocation.get(0).getLocality();
                }
            }
            singleEmitter.onSuccess(true);
        } catch (IOException e) {
            Timber.e(e, "got exception", new Object[0]);
        }
        singleEmitter.onSuccess(false);
    }

    public FindVehicleCardViewPresenter(CareApplication.ApplicationComponent applicationComponent, Navigator navigator, boolean z) {
        applicationComponent.inject(this);
        this.mNavigator = navigator;
        this.isSmallScreen = z;
    }

    public void afterViewInjection(DashboardCardFindVehicleBinding dashboardCardFindVehicleBinding) {
        this.mCity = dashboardCardFindVehicleBinding.dashboardCardFindVehicleCity;
        this.mAddress = dashboardCardFindVehicleBinding.dashboardCardFindVehicleAddress;
        this.mMapContainer = dashboardCardFindVehicleBinding.dashboardCardFindVehicleMapContainer;
        this.mIcon = dashboardCardFindVehicleBinding.dashboardCardFindVehicleIcon;
        this.mCard = dashboardCardFindVehicleBinding.dashboardCardFindVehicleCard;
        dashboardCardFindVehicleBinding.dashboardCardFindVehicleCard.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m203x21599c77(view);
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            this.mCard.setPreventCornerOverlap(false);
        }
        this.positiveColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_positive);
        this.negativeColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_negative);
        if (this.mMap == null) {
            ((SupportMapFragment) this.mNavigator.getFragmentManager().findFragmentById(R.id.map_find_vehicle_card)).getMapAsync(this);
        } else {
            initMap();
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m203x21599c77(View view) {
        findVehicleCardClicked();
    }

    public void updateCard() {
        if (Utils.isCareConnected(this.mCommunication)) {
            setNegativeCard();
            return;
        }
        if (viewsNotNull()) {
            this.mIcon.setColorFilter(Utils.getColorResource(this.mContext, R.color.dashboard_card_not_value));
            this.mCity.setText(R.string.dashboard_card_find_vehicle_search);
            this.mAddress.setText("");
        }
        locateDisconnected();
    }

    private void locateDisconnected() {
        HashMap<String, Double> locationCar = getLocationCar();
        this.locCar = locationCar;
        if (locationCar != null) {
            addMarker(locationCar);
        } else {
            setNegativeCard();
        }
    }

    public HashMap<String, Double> getLocationCar() {
        Timber.i("Get car location", new Object[0]);
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        if (selectedVehicle == null) {
            return null;
        }
        HashMap<String, Double> lastLocation = selectedVehicle.getLastLocation();
        this.locCar = lastLocation;
        return lastLocation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPositiveCard(boolean z) {
        ImageView imageView;
        ImageView imageView2 = this.mIcon;
        if (imageView2 != null) {
            if (z) {
                imageView2.setColorFilter(this.positiveColor);
            } else {
                imageView2.setColorFilter(Utils.getColorResource(this.mContext, R.color.dashboard_card_not_value));
            }
        }
        RelativeLayout relativeLayout = this.mMapContainer;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        if (!this.isSmallScreen || (imageView = this.mIcon) == null) {
            return;
        }
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen), this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen)));
    }

    private void setNegativeCard() {
        if (viewsNotNull()) {
            if (this.isSmallScreen) {
                this.mIcon.setLayoutParams(new RelativeLayout.LayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen), this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen)));
            }
            this.mIcon.setColorFilter(this.negativeColor);
            RelativeLayout relativeLayout = this.mMapContainer;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            this.mAddress.setText((CharSequence) null);
            this.mCity.setText(R.string.dashboard_card_find_vehicle_not_available);
        }
    }

    private void addMarker(final HashMap<String, Double> map) {
        Single.defer(new Callable() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda7
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Single.create(new SingleOnSubscribe() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda3
                    @Override // io.reactivex.SingleOnSubscribe
                    public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                        FindVehicleCardViewPresenter.lambda$addMarker$3(map, singleEmitter);
                    }
                });
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m202xfbd28c89(map, (LatLng) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "got exception", new Object[0]);
            }
        });
    }

    static /* synthetic */ void lambda$addMarker$3(HashMap map, SingleEmitter singleEmitter) throws Exception {
        try {
            singleEmitter.onSuccess(new LatLng(((Double) map.get(Constants.LATITUDE_POSITION)).doubleValue(), ((Double) map.get(Constants.LONGITUDE_POSITION)).doubleValue()));
        } catch (Exception e) {
            singleEmitter.onError(e);
        }
    }

    /* JADX INFO: renamed from: lambda$addMarker$5$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m202xfbd28c89(HashMap map, LatLng latLng) throws Exception {
        GoogleMap googleMap = this.mMap;
        if (googleMap != null) {
            googleMap.clear();
            this.mMap.addMarker(new MarkerOptions().position(latLng).anchor(0.5f, 0.8f).icon(BitmapDescriptorFactory.fromResource(R.drawable.car_marker)));
            animateCamera(latLng);
        }
        setLocationText(map);
    }

    private void animateCamera(LatLng latLng) {
        try {
            if (this.firstLocation) {
                this.mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng, 16.0f), new GoogleMap.CancelableCallback() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter.1
                    @Override // com.google.android.gms.maps.GoogleMap.CancelableCallback
                    public void onCancel() {
                    }

                    @Override // com.google.android.gms.maps.GoogleMap.CancelableCallback
                    public void onFinish() {
                        FindVehicleCardViewPresenter.this.firstLocation = false;
                    }
                });
            } else {
                this.mMap.animateCamera(CameraUpdateFactory.newLatLng(latLng));
            }
        } catch (NullPointerException e) {
            Timber.e(e, "Map is null", new Object[0]);
        }
    }

    private void setLocationText(HashMap<String, Double> map) {
        this.mLocation = map;
        this.locationObservable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new SingleObserver<Boolean>() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter.2
            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(Boolean bool) {
                if (bool.booleanValue()) {
                    FindVehicleCardViewPresenter.this.setPositiveCard(true);
                    if (FindVehicleCardViewPresenter.this.mAddress == null || FindVehicleCardViewPresenter.this.mCity == null) {
                        return;
                    }
                    FindVehicleCardViewPresenter.this.mAddress.setText(FindVehicleCardViewPresenter.this.address);
                    FindVehicleCardViewPresenter.this.mAddress.setVisibility(0);
                    FindVehicleCardViewPresenter.this.mCity.setText(FindVehicleCardViewPresenter.this.addressCity);
                    return;
                }
                FindVehicleCardViewPresenter.this.setPositiveCard(false);
                if (FindVehicleCardViewPresenter.this.mAddress == null || FindVehicleCardViewPresenter.this.mCity == null) {
                    return;
                }
                FindVehicleCardViewPresenter.this.mAddress.setVisibility(8);
                FindVehicleCardViewPresenter.this.mCity.setText("---");
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                Timber.e(FindVehicleCardViewPresenter.TAG, "error during location retrieving procedure", th);
            }
        });
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    public void onMapReady(GoogleMap googleMap) {
        this.mMap = googleMap;
        initMap();
    }

    private void initMap() {
        this.mMap.getUiSettings().setAllGesturesEnabled(false);
        this.mMap.setOnMapClickListener(new GoogleMap.OnMapClickListener() { // from class: com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.maps.GoogleMap.OnMapClickListener
            public final void onMapClick(LatLng latLng) {
                this.f$0.m204xb6cf2c76(latLng);
            }
        });
        updateCard();
    }

    /* JADX INFO: renamed from: lambda$initMap$7$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m204xb6cf2c76(LatLng latLng) {
        this.mContext.startActivity(VehicleFinderActivity.buildIntent(this.mContext));
    }

    private boolean viewsNotNull() {
        return (this.mIcon == null || this.mAddress == null || this.mCity == null) ? false : true;
    }

    private void findVehicleCardClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_DASHBOARD_TAPPED_FIND_VEHICLE_DASHBOARD_CARD.getTag(), null);
        if (Utils.isCareConnected(this.mCommunication) || getLocationCar() == null) {
            return;
        }
        DashboardScreenV2.mCanMoveCard = false;
        this.mContext.startActivity(VehicleFinderActivity.buildIntent(this.mContext));
    }
}
