package pl.charmas.android.reactivelocation2;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Address;
import android.location.Location;
import android.os.Handler;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.AutocompletePredictionBuffer;
import com.google.android.gms.location.places.PlaceBuffer;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceLikelihoodBuffer;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoMetadataResult;
import com.google.android.gms.location.places.PlacePhotoResult;
import com.google.android.gms.location.places.Places;
import com.google.android.gms.maps.model.LatLngBounds;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.Locale;
import pl.charmas.android.reactivelocation2.observables.GoogleAPIClientObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;
import pl.charmas.android.reactivelocation2.observables.PendingResultObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.activity.ActivityUpdatesObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.geocode.GeocodeObservable;
import pl.charmas.android.reactivelocation2.observables.geocode.ReverseGeocodeObservable;
import pl.charmas.android.reactivelocation2.observables.geofence.AddGeofenceObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.geofence.RemoveGeofenceObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.location.AddLocationIntentUpdatesObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.location.LastKnownLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.location.LocationUpdatesObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.location.MockLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.location.RemoveLocationIntentUpdatesObservableOnSubscribe;

/* JADX INFO: loaded from: classes3.dex */
public class ReactiveLocationProvider {
    private final ObservableContext ctx;
    private final ObservableFactory factory;

    public ReactiveLocationProvider(Context context) {
        this(context, ReactiveLocationProviderConfiguration.builder().build());
    }

    public ReactiveLocationProvider(Context context, ReactiveLocationProviderConfiguration reactiveLocationProviderConfiguration) {
        ObservableContext observableContext = new ObservableContext(context, reactiveLocationProviderConfiguration);
        this.ctx = observableContext;
        this.factory = new ObservableFactory(observableContext);
    }

    @Deprecated
    public ReactiveLocationProvider(Context context, Handler handler) {
        this(context, ReactiveLocationProviderConfiguration.builder().setCustomCallbackHandler(handler).build());
    }

    public Observable<Location> getLastKnownLocation() {
        return LastKnownLocationObservableOnSubscribe.createObservable(this.ctx, this.factory);
    }

    public Observable<Location> getUpdatedLocation(LocationRequest locationRequest) {
        return LocationUpdatesObservableOnSubscribe.createObservable(this.ctx, this.factory, locationRequest);
    }

    public Observable<Status> mockLocation(Observable<Location> observable) {
        return MockLocationObservableOnSubscribe.createObservable(this.ctx, this.factory, observable);
    }

    public Observable<Status> requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        return AddLocationIntentUpdatesObservableOnSubscribe.createObservable(this.ctx, this.factory, locationRequest, pendingIntent);
    }

    public Observable<Status> removeLocationUpdates(PendingIntent pendingIntent) {
        return RemoveLocationIntentUpdatesObservableOnSubscribe.createObservable(this.ctx, this.factory, pendingIntent);
    }

    public Observable<List<Address>> getReverseGeocodeObservable(double d, double d2, int i) {
        return ReverseGeocodeObservable.createObservable(this.ctx.getContext(), this.factory, Locale.getDefault(), d, d2, i);
    }

    public Observable<List<Address>> getReverseGeocodeObservable(Locale locale, double d, double d2, int i) {
        return ReverseGeocodeObservable.createObservable(this.ctx.getContext(), this.factory, locale, d, d2, i);
    }

    public Observable<List<Address>> getGeocodeObservable(String str, int i) {
        return getGeocodeObservable(str, i, null);
    }

    public Observable<List<Address>> getGeocodeObservable(String str, int i, LatLngBounds latLngBounds) {
        return getGeocodeObservable(str, i, latLngBounds, null);
    }

    public Observable<List<Address>> getGeocodeObservable(String str, int i, LatLngBounds latLngBounds, Locale locale) {
        return GeocodeObservable.createObservable(this.ctx.getContext(), this.factory, str, i, latLngBounds, locale);
    }

    public Observable<Status> addGeofences(PendingIntent pendingIntent, GeofencingRequest geofencingRequest) {
        return AddGeofenceObservableOnSubscribe.createObservable(this.ctx, this.factory, geofencingRequest, pendingIntent);
    }

    public Observable<Status> removeGeofences(PendingIntent pendingIntent) {
        return RemoveGeofenceObservableOnSubscribe.createObservable(this.ctx, this.factory, pendingIntent);
    }

    public Observable<Status> removeGeofences(List<String> list) {
        return RemoveGeofenceObservableOnSubscribe.createObservable(this.ctx, this.factory, list);
    }

    public Observable<ActivityRecognitionResult> getDetectedActivity(int i) {
        return ActivityUpdatesObservableOnSubscribe.createObservable(this.ctx, this.factory, i);
    }

    public Observable<LocationSettingsResult> checkLocationSettings(final LocationSettingsRequest locationSettingsRequest) {
        return getGoogleApiClientObservable(LocationServices.API).flatMap(new Function<GoogleApiClient, Observable<LocationSettingsResult>>() { // from class: pl.charmas.android.reactivelocation2.ReactiveLocationProvider.1
            @Override // io.reactivex.functions.Function
            public Observable<LocationSettingsResult> apply(GoogleApiClient googleApiClient) {
                return ReactiveLocationProvider.fromPendingResult(LocationServices.SettingsApi.checkLocationSettings(googleApiClient, locationSettingsRequest));
            }
        });
    }

    public Observable<PlaceLikelihoodBuffer> getCurrentPlace(final PlaceFilter placeFilter) {
        return getGoogleApiClientObservable(Places.PLACE_DETECTION_API, Places.GEO_DATA_API).flatMap(new Function<GoogleApiClient, Observable<PlaceLikelihoodBuffer>>() { // from class: pl.charmas.android.reactivelocation2.ReactiveLocationProvider.2
            @Override // io.reactivex.functions.Function
            public Observable<PlaceLikelihoodBuffer> apply(GoogleApiClient googleApiClient) {
                return ReactiveLocationProvider.fromPendingResult(Places.PlaceDetectionApi.getCurrentPlace(googleApiClient, placeFilter));
            }
        });
    }

    public Observable<PlaceBuffer> getPlaceById(final String str) {
        return getGoogleApiClientObservable(Places.PLACE_DETECTION_API, Places.GEO_DATA_API).flatMap(new Function<GoogleApiClient, Observable<PlaceBuffer>>() { // from class: pl.charmas.android.reactivelocation2.ReactiveLocationProvider.3
            @Override // io.reactivex.functions.Function
            public Observable<PlaceBuffer> apply(GoogleApiClient googleApiClient) {
                return ReactiveLocationProvider.fromPendingResult(Places.GeoDataApi.getPlaceById(googleApiClient, str));
            }
        });
    }

    public Observable<AutocompletePredictionBuffer> getPlaceAutocompletePredictions(final String str, final LatLngBounds latLngBounds, final AutocompleteFilter autocompleteFilter) {
        return getGoogleApiClientObservable(Places.PLACE_DETECTION_API, Places.GEO_DATA_API).flatMap(new Function<GoogleApiClient, Observable<AutocompletePredictionBuffer>>() { // from class: pl.charmas.android.reactivelocation2.ReactiveLocationProvider.4
            @Override // io.reactivex.functions.Function
            public Observable<AutocompletePredictionBuffer> apply(GoogleApiClient googleApiClient) {
                return ReactiveLocationProvider.fromPendingResult(Places.GeoDataApi.getAutocompletePredictions(googleApiClient, str, latLngBounds, autocompleteFilter));
            }
        });
    }

    public Observable<PlacePhotoMetadataResult> getPhotoMetadataById(final String str) {
        return getGoogleApiClientObservable(Places.PLACE_DETECTION_API, Places.GEO_DATA_API).flatMap(new Function<GoogleApiClient, Observable<PlacePhotoMetadataResult>>() { // from class: pl.charmas.android.reactivelocation2.ReactiveLocationProvider.5
            @Override // io.reactivex.functions.Function
            public Observable<PlacePhotoMetadataResult> apply(GoogleApiClient googleApiClient) {
                return ReactiveLocationProvider.fromPendingResult(Places.GeoDataApi.getPlacePhotos(googleApiClient, str));
            }
        });
    }

    public Observable<PlacePhotoResult> getPhotoForMetadata(final PlacePhotoMetadata placePhotoMetadata) {
        return getGoogleApiClientObservable(Places.PLACE_DETECTION_API, Places.GEO_DATA_API).flatMap(new Function<GoogleApiClient, Observable<PlacePhotoResult>>() { // from class: pl.charmas.android.reactivelocation2.ReactiveLocationProvider.6
            @Override // io.reactivex.functions.Function
            public Observable<PlacePhotoResult> apply(GoogleApiClient googleApiClient) {
                return ReactiveLocationProvider.fromPendingResult(placePhotoMetadata.getPhoto(googleApiClient));
            }
        });
    }

    public Observable<GoogleApiClient> getGoogleApiClientObservable(Api... apiArr) {
        return GoogleAPIClientObservableOnSubscribe.create(this.ctx, this.factory, apiArr);
    }

    public static <T extends Result> Observable<T> fromPendingResult(PendingResult<T> pendingResult) {
        return Observable.create(new PendingResultObservableOnSubscribe(pendingResult));
    }
}
