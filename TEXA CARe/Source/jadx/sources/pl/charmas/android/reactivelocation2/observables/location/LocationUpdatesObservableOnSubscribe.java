package pl.charmas.android.reactivelocation2.observables.location;

import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import java.lang.ref.WeakReference;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;

/* JADX INFO: loaded from: classes3.dex */
public class LocationUpdatesObservableOnSubscribe extends BaseLocationObservableOnSubscribe<Location> {
    private LocationListener listener;
    private final LocationRequest locationRequest;

    public static Observable<Location> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, LocationRequest locationRequest) {
        Observable<Location> observableCreateObservable = observableFactory.createObservable(new LocationUpdatesObservableOnSubscribe(observableContext, locationRequest));
        int numUpdates = locationRequest.getNumUpdates();
        return (numUpdates <= 0 || numUpdates >= Integer.MAX_VALUE) ? observableCreateObservable : observableCreateObservable.take(numUpdates);
    }

    private LocationUpdatesObservableOnSubscribe(ObservableContext observableContext, LocationRequest locationRequest) {
        super(observableContext);
        this.locationRequest = locationRequest;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, ObservableEmitter<? super Location> observableEmitter) {
        this.listener = new LocationUpdatesLocationListener(observableEmitter);
        LocationServices.FusedLocationApi.requestLocationUpdates(googleApiClient, this.locationRequest, this.listener);
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onDisposed(GoogleApiClient googleApiClient) {
        if (googleApiClient.isConnected()) {
            LocationServices.FusedLocationApi.removeLocationUpdates(googleApiClient, this.listener);
        }
    }

    private static class LocationUpdatesLocationListener implements LocationListener {
        private final WeakReference<ObservableEmitter<? super Location>> weakRef;

        LocationUpdatesLocationListener(ObservableEmitter<? super Location> observableEmitter) {
            this.weakRef = new WeakReference<>(observableEmitter);
        }

        @Override // com.google.android.gms.location.LocationListener
        public void onLocationChanged(Location location) {
            ObservableEmitter<? super Location> observableEmitter = this.weakRef.get();
            if (observableEmitter == null || observableEmitter.isDisposed()) {
                return;
            }
            observableEmitter.onNext(location);
        }
    }
}
