package pl.charmas.android.reactivelocation2.observables.geofence;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices;
import io.reactivex.ObservableEmitter;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.StatusException;

/* JADX INFO: loaded from: classes3.dex */
class RemoveGeofenceByPendingIntentObservableOnSubscribe extends RemoveGeofenceObservableOnSubscribe<Status> {
    private final PendingIntent pendingIntent;

    RemoveGeofenceByPendingIntentObservableOnSubscribe(ObservableContext observableContext, PendingIntent pendingIntent) {
        super(observableContext);
        this.pendingIntent = pendingIntent;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.geofence.RemoveGeofenceObservableOnSubscribe
    protected void removeGeofences(GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        LocationServices.GeofencingApi.removeGeofences(googleApiClient, this.pendingIntent).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.geofence.RemoveGeofenceByPendingIntentObservableOnSubscribe.1
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
