package pl.charmas.android.reactivelocation2.observables.location;

import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import pl.charmas.android.reactivelocation2.observables.BaseLocationObservableOnSubscribe;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;
import pl.charmas.android.reactivelocation2.observables.StatusException;

/* JADX INFO: loaded from: classes3.dex */
public class MockLocationObservableOnSubscribe extends BaseLocationObservableOnSubscribe<Status> {
    private final Observable<Location> locationObservable;
    private Disposable mockLocationSubscription;

    public static Observable<Status> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, Observable<Location> observable) {
        return observableFactory.createObservable(new MockLocationObservableOnSubscribe(observableContext, observable));
    }

    private MockLocationObservableOnSubscribe(ObservableContext observableContext, Observable<Location> observable) {
        super(observableContext);
        this.locationObservable = observable;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(final GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        LocationServices.FusedLocationApi.setMockMode(googleApiClient, true).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.location.MockLocationObservableOnSubscribe.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(Status status) {
                if (status.isSuccess()) {
                    MockLocationObservableOnSubscribe.this.startLocationMocking(googleApiClient, observableEmitter);
                } else {
                    observableEmitter.onError(new StatusException(status));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLocationMocking(final GoogleApiClient googleApiClient, final ObservableEmitter<? super Status> observableEmitter) {
        this.mockLocationSubscription = this.locationObservable.subscribe(new Consumer<Location>() { // from class: pl.charmas.android.reactivelocation2.observables.location.MockLocationObservableOnSubscribe.2
            @Override // io.reactivex.functions.Consumer
            public void accept(Location location) throws Exception {
                LocationServices.FusedLocationApi.setMockLocation(googleApiClient, location).setResultCallback(new ResultCallback<Status>() { // from class: pl.charmas.android.reactivelocation2.observables.location.MockLocationObservableOnSubscribe.2.1
                    @Override // com.google.android.gms.common.api.ResultCallback
                    public void onResult(Status status) {
                        if (status.isSuccess()) {
                            observableEmitter.onNext(status);
                        } else {
                            observableEmitter.onError(new StatusException(status));
                        }
                    }
                });
            }
        }, new Consumer<Throwable>() { // from class: pl.charmas.android.reactivelocation2.observables.location.MockLocationObservableOnSubscribe.3
            @Override // io.reactivex.functions.Consumer
            public void accept(Throwable th) throws Exception {
                observableEmitter.onError(th);
            }
        }, new Action() { // from class: pl.charmas.android.reactivelocation2.observables.location.MockLocationObservableOnSubscribe.4
            @Override // io.reactivex.functions.Action
            public void run() throws Exception {
                observableEmitter.onComplete();
            }
        });
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onDisposed(GoogleApiClient googleApiClient) {
        if (googleApiClient.isConnected()) {
            try {
                LocationServices.FusedLocationApi.setMockMode(googleApiClient, false);
            } catch (SecurityException unused) {
            }
        }
        Disposable disposable = this.mockLocationSubscription;
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        this.mockLocationSubscription.dispose();
    }
}
