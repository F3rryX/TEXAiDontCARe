package com.texa.careapp.app.ecodriving;

import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MarkerOptions;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import com.texa.careapp.databinding.ScreenEcoDrivingTripMapBinding;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.careapp.views.CircleDisplay;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingTripDetailMapScreen extends Screen implements OnMapReadyCallback {
    private String distance;
    private String duration;
    private String location;
    private TextView locations;
    private GoogleMap mMap;
    private CircleDisplay mScoreCircle;
    private TextView mTripDistance;
    private TextView mTripDistanceLabel;
    private TextView mTripDuration;
    private TextView mTripDurationLabel;
    private TripEventModel tripEvent;
    private List<TripEventModel> tripEvents;
    private int tripScore;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "EcoDrivingTripDetailMapScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_eco_driving_trip_map;
    }

    EcoDrivingTripDetailMapScreen(CareApplication.ApplicationComponent applicationComponent, int i, List<TripEventModel> list, String str, String str2, String str3) {
        this.tripEvent = null;
        applicationComponent.inject(this);
        this.tripEvents = list;
        this.tripScore = i;
        this.distance = str2;
        this.duration = str3;
        this.location = str;
    }

    EcoDrivingTripDetailMapScreen(CareApplication.ApplicationComponent applicationComponent, int i, List<TripEventModel> list, String str, String str2, String str3, TripEventModel tripEventModel) {
        this.tripEvent = null;
        applicationComponent.inject(this);
        this.tripEvents = list;
        this.tripScore = i;
        this.distance = str2;
        this.duration = str3;
        this.location = str;
        this.tripEvent = tripEventModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenEcoDrivingTripMapBinding screenEcoDrivingTripMapBinding = (ScreenEcoDrivingTripMapBinding) DataBindingUtil.bind(view);
        this.mScoreCircle = screenEcoDrivingTripMapBinding.screenEcoDrivingTripMapScore;
        this.locations = screenEcoDrivingTripMapBinding.screenEcoDrivingTripMapLocations;
        this.mTripDuration = screenEcoDrivingTripMapBinding.screenEcoDrivingTripMapDuration;
        this.mTripDistance = screenEcoDrivingTripMapBinding.screenEcoDrivingTripMapDistance;
        this.mTripDurationLabel = screenEcoDrivingTripMapBinding.screenEcoDrivingTripMapDurationLabel;
        this.mTripDistanceLabel = screenEcoDrivingTripMapBinding.screenEcoDrivingTripMapDistanceLabel;
        this.mTripDistance.setText(this.distance);
        this.mTripDuration.setText(this.duration);
        int referenceColor = EcoDrivingUtils.getReferenceColor(getContext(), this.tripScore);
        CircleDisplay circleDisplay = this.mScoreCircle;
        int i = this.tripScore;
        circleDisplay.showValue(i != -1 ? i : 0.0f, EcoDrivingUtils.MAX_VALUE, true);
        this.mScoreCircle.setAnimDuration(1000);
        this.mScoreCircle.setColor(EcoDrivingUtils.getReferenceColor(getContext(), this.tripScore));
        this.mScoreCircle.setTextColor(referenceColor);
        this.mScoreCircle.setTypeface(R.font.font_regular);
        CircleDisplay circleDisplay2 = this.mScoreCircle;
        int i2 = this.tripScore;
        circleDisplay2.setCustomText(String.valueOf((i2 == -1 || i2 == 0) ? getContext().getString(R.string.eco_driving_not_available) : Integer.valueOf(i2)));
        String str = this.location;
        if (str != null && !str.equalsIgnoreCase("")) {
            this.locations.setText(this.location);
        } else {
            this.locations.setVisibility(8);
        }
        this.mTripDistanceLabel.setTextColor(referenceColor);
        this.mTripDurationLabel.setTextColor(referenceColor);
    }

    private void initMap() {
        this.mMap.clear();
        LatLngBounds.Builder builder = null;
        for (TripEventModel tripEventModel : this.tripEvents) {
            if (tripEventModel.getLat() != null && tripEventModel.getLng() != null) {
                MarkerOptions markerOptionsIcon = new MarkerOptions().position(new LatLng(tripEventModel.getLat().doubleValue(), tripEventModel.getLng().doubleValue())).title(getContext().getString(Constants.ECO_DRIVING_TEXT.get(tripEventModel.getTypeId().intValue()))).icon(BitmapDescriptorFactory.fromResource(Constants.ECO_DRIVING_MAP_IMAGES.get(tripEventModel.getTypeId().intValue())));
                this.mMap.addMarker(markerOptionsIcon);
                if (builder == null) {
                    builder = new LatLngBounds.Builder();
                }
                builder.include(markerOptionsIcon.getPosition());
            }
        }
        TripEventModel tripEventModel2 = this.tripEvent;
        if (tripEventModel2 != null && tripEventModel2.getLat() != null && this.tripEvent.getLng() != null) {
            MarkerOptions markerOptionsIcon2 = new MarkerOptions().position(new LatLng(this.tripEvent.getLat().doubleValue(), this.tripEvent.getLng().doubleValue())).title(getContext().getString(Constants.ECO_DRIVING_TEXT.get(this.tripEvent.getTypeId().intValue()))).icon(BitmapDescriptorFactory.fromResource(Constants.ECO_DRIVING_MAP_IMAGES.get(this.tripEvent.getTypeId().intValue())));
            builder = new LatLngBounds.Builder();
            builder.include(markerOptionsIcon2.getPosition());
        }
        if (builder != null) {
            this.mMap.animateCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), getContext().getResources().getDimensionPixelSize(R.dimen.eco_driving_map_offset)));
        }
        if (Utils.isPermissionEnabled(getContext(), CorePermission.USE_ACCESS_LOCATION)) {
            this.mMap.setMyLocationEnabled(true);
        }
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    public void onMapReady(GoogleMap googleMap) {
        this.mMap = googleMap;
        initMap();
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        goBack();
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        ((SupportMapFragment) getNavigator().getChildFragmentManager().findFragmentById(R.id.screen_eco_driving_trip_map)).getMapAsync(this);
    }
}
