package pl.charmas.android.reactivelocation2.observables.geofence;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;
import pl.charmas.android.reactivelocation2.observables.StatusException;

/* JADX INFO: loaded from: classes3.dex */
public class AddGeofenceObservableOnSubscribe extends BaseLocationObservableOnSubscribe<Status> {
    private final PendingIntent geofenceTransitionPendingIntent;
    private final GeofencingRequest request;

    public static Observable<Status> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        return observableFactory.createObservable(new AddGeofenceObservableOnSubscribe(observableContext, geofencingRequest, pendingIntent));
    }

    private AddGeofenceObservableOnSubscribe(ObservableContext observableContext, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        super(observableContext);
        this.request = geofencingRequest;
        this.geofenceTransitionPendingIntent = pendingIntent;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        LocationServices.GeofencingApi.addGeofences(googleApiClient, this.request, this.geofenceTransitionPendingIntent).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.geofence.AddGeofenceObservableOnSubscribe.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(Status status) {
                if (observableEmitter.isDisposed()) {
                    return;
                }
                if (status.isSuccess()) {
                    observableEmitter.onNext(status);
                    observableEmitter.onComplete();
                } else {
                    observableEmitter.onError(new StatusException(status));
                }
            }
        });
    }
}
