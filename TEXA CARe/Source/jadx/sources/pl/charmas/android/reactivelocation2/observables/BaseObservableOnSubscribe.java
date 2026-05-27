package pl.charmas.android.reactivelocation2.observables;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Action;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseObservableOnSubscribe<T> implements ObservableOnSubscribe<T> {
    private final Context ctx;
    private final Handler handler;
    private final List<Api<? extends Api.ApiOptions.NotRequiredOptions>> services;

    protected void onDisposed(GoogleApiClient googleApiClient) {
    }

    protected abstract void onGoogleApiClientReady(GoogleApiClient googleApiClient, ObservableEmitter<? super T> observableEmitter);

    @SafeVarargs
    protected BaseObservableOnSubscribe(ObservableContext observableContext, Api<? extends Api.ApiOptions.NotRequiredOptions>... apiArr) {
        this.ctx = observableContext.getContext();
        this.handler = observableContext.getHandler();
        this.services = Arrays.asList(apiArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.ObservableOnSubscribe
    public void subscribe(ObservableEmitter<T> observableEmitter) throws Exception {
        final GoogleApiClient googleApiClientCreateApiClient = createApiClient(observableEmitter);
        try {
            googleApiClientCreateApiClient.connect();
        } catch (Throwable th) {
            if (!observableEmitter.isDisposed()) {
                observableEmitter.onError(th);
            }
        }
        observableEmitter.setDisposable(Disposables.fromAction(new Action() { // from class: pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe.1
            @Override // io.reactivex.functions.Action
            public void run() throws Exception {
                BaseObservableOnSubscribe.this.onDisposed(googleApiClientCreateApiClient);
                googleApiClientCreateApiClient.disconnect();
            }
        }));
    }

    private GoogleApiClient createApiClient(ObservableEmitter<? super T> observableEmitter) {
        ApiClientConnectionCallbacks apiClientConnectionCallbacks = new ApiClientConnectionCallbacks(observableEmitter);
        GoogleApiClient.Builder builder = new GoogleApiClient.Builder(this.ctx);
        Iterator<Api<? extends Api.ApiOptions.NotRequiredOptions>> it = this.services.iterator();
        while (it.hasNext()) {
            builder = builder.addApi(it.next());
        }
        GoogleApiClient.Builder builderAddOnConnectionFailedListener = builder.addConnectionCallbacks(apiClientConnectionCallbacks).addOnConnectionFailedListener(apiClientConnectionCallbacks);
        Handler handler = this.handler;
        if (handler != null) {
            builderAddOnConnectionFailedListener = builderAddOnConnectionFailedListener.setHandler(handler);
        }
        GoogleApiClient googleApiClientBuild = builderAddOnConnectionFailedListener.build();
        apiClientConnectionCallbacks.setClient(googleApiClientBuild);
        return googleApiClientBuild;
    }

    private class ApiClientConnectionCallbacks implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private GoogleApiClient apiClient;
        private final ObservableEmitter<? super T> emitter;

        private ApiClientConnectionCallbacks(ObservableEmitter<? super T> observableEmitter) {
            this.emitter = observableEmitter;
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            try {
                BaseObservableOnSubscribe.this.onGoogleApiClientReady(this.apiClient, this.emitter);
            } catch (Throwable th) {
                if (this.emitter.isDisposed()) {
                    return;
                }
                this.emitter.onError(th);
            }
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            if (this.emitter.isDisposed()) {
                return;
            }
            this.emitter.onError(new GoogleAPIConnectionSuspendedException(i));
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            if (this.emitter.isDisposed()) {
                return;
            }
            this.emitter.onError(new GoogleAPIConnectionException("Error connecting to GoogleApiClient.", connectionResult));
        }

        void setClient(GoogleApiClient googleApiClient) {
            this.apiClient = googleApiClient;
        }
    }
}
