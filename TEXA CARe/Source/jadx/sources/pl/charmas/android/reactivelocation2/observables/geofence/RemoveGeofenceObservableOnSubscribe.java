package pl.charmas.android.reactivelocation2.observables.geofence;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import java.util.List;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RemoveGeofenceObservableOnSubscribe<T> extends BaseLocationObservableOnSubscribe<T> {
    protected abstract void removeGeofences(GoogleApiClient googleApiClient, ObservableEmitter<? super T> observableEmitter);

    public static Observable<Status> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, PendingIntent pendingIntent) {
        return observableFactory.createObservable(new RemoveGeofenceByPendingIntentObservableOnSubscribe(observableContext, pendingIntent));
    }

    public static Observable<Status> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, List<String> list) {
        return observableFactory.createObservable(new RemoveGeofenceRequestIdsObservableOnSubscribe(observableContext, list));
    }

    RemoveGeofenceObservableOnSubscribe(ObservableContext observableContext) {
        super(observableContext);
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, ObservableEmitter<? super T> observableEmitter) {
        removeGeofences(googleApiClient, observableEmitter);
    }
}
