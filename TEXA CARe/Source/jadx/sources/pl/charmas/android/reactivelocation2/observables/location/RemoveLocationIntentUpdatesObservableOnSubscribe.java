package pl.charmas.android.reactivelocation2.observables.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;
import pl.charmas.android.reactivelocation2.observables.StatusException;

/* JADX INFO: loaded from: classes3.dex */
public class RemoveLocationIntentUpdatesObservableOnSubscribe extends BaseLocationObservableOnSubscribe<Status> {
    private final PendingIntent intent;

    public static Observable<Status> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, PendingIntent pendingIntent) {
        return observableFactory.createObservable(new RemoveLocationIntentUpdatesObservableOnSubscribe(observableContext, pendingIntent));
    }

    private RemoveLocationIntentUpdatesObservableOnSubscribe(ObservableContext observableContext, PendingIntent pendingIntent) {
        super(observableContext);
        this.intent = pendingIntent;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        LocationServices.FusedLocationApi.removeLocationUpdates(googleApiClient, this.intent).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.location.RemoveLocationIntentUpdatesObservableOnSubscribe.1
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
