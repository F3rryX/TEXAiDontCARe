package pl.charmas.android.reactivelocation2.observables.location;

import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;

/* JADX INFO: loaded from: classes3.dex */
public class LastKnownLocationObservableOnSubscribe extends BaseLocationObservableOnSubscribe<Location> {
    public static Observable<Location> createObservable(ObservableContext observableContext, ObservableFactory observableFactory) {
        return observableFactory.createObservable(new LastKnownLocationObservableOnSubscribe(observableContext));
    }

    private LastKnownLocationObservableOnSubscribe(ObservableContext observableContext) {
        super(observableContext);
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, ObservableEmitter<? super Location> observableEmitter) {
        Location lastLocation = LocationServices.FusedLocationApi.getLastLocation(googleApiClient);
        if (observableEmitter.isDisposed()) {
            return;
        }
        if (lastLocation != null) {
            observableEmitter.onNext(lastLocation);
        }
        observableEmitter.onComplete();
    }
}
