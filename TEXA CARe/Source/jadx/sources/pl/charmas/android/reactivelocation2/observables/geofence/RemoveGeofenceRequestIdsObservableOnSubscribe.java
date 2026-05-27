package pl.charmas.android.reactivelocation2.observables.geofence;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices;
import io.reactivex.ObservableEmitter;
import java.util.List;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.StatusException;

/* JADX INFO: loaded from: classes3.dex */
class RemoveGeofenceRequestIdsObservableOnSubscribe extends RemoveGeofenceObservableOnSubscribe<Status> {
    private final List<String> geofenceRequestIds;

    RemoveGeofenceRequestIdsObservableOnSubscribe(ObservableContext observableContext, List<String> list) {
        super(observableContext);
        this.geofenceRequestIds = list;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.geofence.RemoveGeofenceObservableOnSubscribe
    protected void removeGeofences(GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        LocationServices.GeofencingApi.removeGeofences(googleApiClient, this.geofenceRequestIds).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.geofence.RemoveGeofenceRequestIdsObservableOnSubscribe.1
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
