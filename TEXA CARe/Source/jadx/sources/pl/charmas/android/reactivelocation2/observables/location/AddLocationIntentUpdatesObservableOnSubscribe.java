package pl.charmas.android.reactivelocation2.observables.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;
import pl.charmas.android.reactivelocation2.observables.StatusException;

/* JADX INFO: loaded from: classes3.dex */
public class AddLocationIntentUpdatesObservableOnSubscribe extends BaseLocationObservableOnSubscribe<Status> {
    private final PendingIntent intent;
    private final LocationRequest locationRequest;

    public static Observable<Status> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return observableFactory.createObservable(new AddLocationIntentUpdatesObservableOnSubscribe(observableContext, locationRequest, pendingIntent));
    }

    private AddLocationIntentUpdatesObservableOnSubscribe(ObservableContext observableContext, LocationRequest locationRequest, PendingIntent pendingIntent) {
        super(observableContext);
        this.locationRequest = locationRequest;
        this.intent = pendingIntent;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        LocationServices.FusedLocationApi.requestLocationUpdates(googleApiClient, this.locationRequest, this.intent).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.location.AddLocationIntentUpdatesObservableOnSubscribe.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(Status status) {
                if (observableEmitter.isDisposed()) {
                    return;
                }
                if (!status.isSuccess()) {
                    observableEmitter.onError(new StatusException(status));
                } else {
                    observableEmitter.onNext(status);
                    observableEmitter.onComplete();
                }
            }
        });
    }
}
