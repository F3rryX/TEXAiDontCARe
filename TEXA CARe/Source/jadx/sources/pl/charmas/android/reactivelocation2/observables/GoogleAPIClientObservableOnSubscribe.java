package pl.charmas.android.reactivelocation2.observables;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleAPIClientObservableOnSubscribe extends BaseObservableOnSubscribe<GoogleApiClient> {
    @SafeVarargs
    public static Observable<GoogleApiClient> create(ObservableContext observableContext, ObservableFactory observableFactory, Api<? extends Api.ApiOptions.NotRequiredOptions>... apiArr) {
        return observableFactory.createObservable(new GoogleAPIClientObservableOnSubscribe(observableContext, apiArr));
    }

    @SafeVarargs
    private GoogleAPIClientObservableOnSubscribe(ObservableContext observableContext, Api<? extends Api.ApiOptions.NotRequiredOptions>... apiArr) {
        super(observableContext, apiArr);
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, ObservableEmitter<? super GoogleApiClient> observableEmitter) {
        if (observableEmitter.isDisposed()) {
            return;
        }
        observableEmitter.onNext(googleApiClient);
    }
}
